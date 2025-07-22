import 'dart:async';

import 'package:camera/camera.dart';
import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';
import 'package:mobile/features/face_recognition/domain/domain.dart';
import 'package:mobile/features/face_recognition/domain/services/camera_service.dart'
    as fr_camera_service;
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/extensions/text_helper_extensions.dart';
import 'package:mobile/shared/mixins/mixin.dart';
import 'package:mobile/shared/utils/util.dart';

class RealTimeFaceRecognitionController extends GetxController
    with SubmitStateMixin {
  final FaceRecognitionConfig config;
  final RecognizeFaceUseCase _recognizeFaceUseCase;
  final ConnectWebSocketUseCase _connectWebSocketUseCase;
  final DisconnectWebSocketUseCase _disconnectWebSocketUseCase;

  late final FaceDetector _faceDetector;

  final Rx<CameraController?> cameraController = Rx<CameraController?>(null);
  final Rx<FaceQualityEntity?> currentFaceQuality =
      Rx<FaceQualityEntity?>(null);
  final RxInt retryCount = 0.obs;

  int _initRetryCount = 0;
  static const int _maxInitRetries = 3;
  Timer? _initRetryTimer;

  RealTimeFaceRecognitionController({
    required this.config,
    required RecognizeFaceUseCase recognizeFaceUseCase,
    required ConnectWebSocketUseCase connectWebSocketUseCase,
    required DisconnectWebSocketUseCase disconnectWebSocketUseCase,
  })  : _recognizeFaceUseCase = recognizeFaceUseCase,
        _connectWebSocketUseCase = connectWebSocketUseCase,
        _disconnectWebSocketUseCase = disconnectWebSocketUseCase;

  @override
  void onInit() {
    super.onInit();
    _faceDetector = FaceDetector(
      options: FaceDetectorOptions(
        performanceMode: FaceDetectorMode.accurate,
        enableContours: true,
      ),
    );
    _initializeServices();
  }

  @override
  void onClose() {
    try {
      // Dispose camera first to prevent race conditions
      _disposeCamera();
      
      // Then dispose other resources
      _faceDetector.close();
      _disconnectWebSocket();
      CameraService.forceDisposeAll();
    } catch (e) {
      SimpleLogger.error('[V1_V2_ERROR] Error in onClose: $e');
    } finally {
      super.onClose();
    }
  }

  Future<void> _initializeServices() async {
    _initRetryTimer?.cancel();
    try {
      setSubmitState('initialization', SubmitStateEnum.loading);
      setCustomMessage(
          'initialization', 'faceRecognition'.message('initializingCamera'));

      // Mulai timer untuk auto-retry jika stuck loading
      _initRetryTimer = Timer(const Duration(seconds: 2), () {
        if (getSubmitState('initialization') == SubmitStateEnum.loading &&
            _initRetryCount < _maxInitRetries) {
          _initRetryCount++;
          SimpleLogger.warning(
              '[FR_INIT] Retry inisialisasi kamera ke-$_initRetryCount');
          _initializeServices();
        } else if (_initRetryCount >= _maxInitRetries) {
          setSubmitState('initialization', SubmitStateEnum.failure);
          setCustomMessage('initialization',
              'faceRecognition'.message('initializationFailed'));
        }
      });

      await CameraService.forceDisposeAll();

      final controller = await CameraService.createController(
        preferredDirection: CameraLensDirection.front,
        resolution: ResolutionPreset.medium,
        timeout: config.timeout,
        maxRetries: 3,
        retryDelay: const Duration(seconds: 1),
      );

      cameraController.value = controller;
      setCustomMessage(
          'initialization', 'faceRecognition'.message('connectingToServer'));

      await _connectWebSocket();

      setSubmitState('initialization', SubmitStateEnum.success);
      setCustomMessage(
          'initialization', 'faceRecognition'.message('positionFaceCircle'));
      _initRetryCount = 0;
      _initRetryTimer?.cancel();
    } catch (e) {
      setSubmitState('initialization', SubmitStateEnum.failure);
      _initRetryTimer?.cancel();
      if (e is fr_camera_service.CameraException &&
          e.message == 'Camera permission denied') {
        setCustomMessage('initialization',
            'Akses kamera ditolak. Aktifkan permission kamera di pengaturan, lalu tekan retry.');
      } else {
        setCustomMessage('initialization',
            'faceRecognition'.message('initializationFailed'));
      }
    }
  }

  Future<void> _connectWebSocket() async {
    final result = await _connectWebSocketUseCase.execute();
    result.fold(
      (failure) {
        throw Exception('WebSocket connection failed: ${failure.message}');
      },
      (_) {},
    );
  }

  Future<void> _disconnectWebSocket() async {
    try {
      await _disconnectWebSocketUseCase.execute();
    } catch (e) {
      SimpleLogger.warning('⚠️ [MOBILE_FR] WebSocket disconnect error: $e');
    }
  }

  void onFaceQualityChanged(FaceQualityEntity quality) {
    currentFaceQuality.value = quality;

    if (!isOperationActive('recognition')) {
      switch (quality.level) {
        case FaceQualityLevelEnum.excellent:
          setCustomMessage('initialization',
              'faceRecognition'.message('faceReadyHoldStill'));

          // Mode-specific auto capture logic
          _handleAutoCapture(quality);
          break;
        case FaceQualityLevelEnum.good:
          setCustomMessage(
              'initialization', 'faceRecognition'.message('moveCloser'));
          break;
        case FaceQualityLevelEnum.poor:
          setCustomMessage('initialization',
              'faceRecognition'.message('positionFaceCircle'));
          break;
      }
    }
  }

  void _handleAutoCapture(FaceQualityEntity quality) {
    switch (config.mode) {
      case FaceRecognitionMode.current:
        // Current mode: ML Kit + Timer (existing logic)
        // Widget will handle timer-based auto capture
        break;
      case FaceRecognitionMode.pureTimer:
        // Pure timer mode: Direct timer without ML Kit quality check
        _schedulePureTimerCapture();
        break;
      case FaceRecognitionMode.pureTimerResize:
        // Pure timer + resize mode: Timer with image optimization
        _schedulePureTimerCaptureWithResize();
        break;
    }
  }

  void _schedulePureTimerCapture() {
    if (isOperationActive('recognition') ||
        getSubmitState('initialization') != SubmitStateEnum.success) {
      return;
    }

    // V1 vs V2 Performance Logging
    SimpleLogger.info(
        '[V1_V2_PERFORMANCE] Pure timer mode: Scheduling capture...');
    Timer(config.timerAutoCaptureDelay, () {
      if (!isOperationActive('recognition') &&
          getSubmitState('initialization') == SubmitStateEnum.success) {
        SimpleLogger.info(
            '[V1_V2_PERFORMANCE] Pure timer mode: Executing capture...');
        onFaceReady();
      }
    });
  }

  void _schedulePureTimerCaptureWithResize() {
    if (isOperationActive('recognition') ||
        getSubmitState('initialization') != SubmitStateEnum.success) {
      return;
    }

    // V1 vs V2 Performance Logging
    SimpleLogger.info(
        '[V1_V2_PERFORMANCE] Pure timer + resize mode: Scheduling capture...');
    Timer(config.timerAutoCaptureDelay, () {
      if (!isOperationActive('recognition') &&
          getSubmitState('initialization') == SubmitStateEnum.success) {
        SimpleLogger.info(
            '[V1_V2_PERFORMANCE] Pure timer + resize mode: Executing capture...');
        onFaceReady();
      }
    });
  }

  Future<void> onFaceReady() async {
    if (isOperationActive('recognition') ||
        getSubmitState('initialization') != SubmitStateEnum.success) {
      return;
    }

    try {
      // V1 vs V2 Performance Logging
      SimpleLogger.info(
          '[V1_V2_PERFORMANCE] Starting face recognition request');
      setSubmitState('recognition', SubmitStateEnum.submitting);
      setCustomMessage(
          'recognition', 'faceRecognition'.message('processingFace'));

      final imageFile = await _captureImage();
      final base64Image = await _processImage(imageFile);
      final result = await _sendRecognitionRequest(base64Image);

      result.fold(
        (failure) => _handleFailure(failure),
        (response) => _handleSuccess(response),
      );
    } catch (e) {
      SimpleLogger.error('[V1_V2_ERROR] onFaceReady error: $e');
      _handleFailure(
          ServerFailure('faceRecognition'.message('recognitionError')));
    }
  }

  Future<XFile> _captureImage() async {
    final controller = cameraController.value;
    if (controller == null) throw Exception('Camera not ready');
    return await CameraService.captureImage(controller);
  }

  Future<String> _processImage(XFile imageFile) async {
    return await ImageProcessingService.processForFaceRecognition(
      imageFile,
      faceDetector: _faceDetector,
    );
  }

  Future<Either<Failure, FaceRecognitionResponseEntity>>
      _sendRecognitionRequest(String base64Image) async {
    final requestId = DateTime.now().millisecondsSinceEpoch.toString();

    final webSocketMessage =
        config.buildWebSocketMessage(base64Image, requestId);

    final request = FaceRecognitionRequestEntity(
      imageBase64: base64Image,
      attendanceId: webSocketMessage['attendance_id'],
      action: webSocketMessage['action'],
      requestId: requestId,
    );

    // V1 vs V2 Performance Logging
    SimpleLogger.info(
        '[V1_V2_PERFORMANCE] Sending recognition request: $requestId');
    final result =
        await _recognizeFaceUseCase.execute(request).timeout(config.timeout);

    result.fold(
      (failure) => SimpleLogger.error(
          '[V1_V2_ERROR] Recognition failed: ${failure.message}'),
      (response) => SimpleLogger.success(
          '[V1_V2_SUCCESS] Recognition completed: ${response.type}'),
    );

    return result;
  }

  void _handleSuccess(FaceRecognitionResponseEntity response) {
    if (response.type == 'processing_started') {
      setCustomMessage('recognition', 'faceRecognition'.message('processing'));
      SimpleLogger.info(
          '[V1_V2_PERFORMANCE] Processing started: ${response.requestId}');
    } else if (response.type == 'face_recognition_success') {
      SimpleLogger.success('[V1_V2_SUCCESS] Face recognition SUCCESS!');
      setSubmitState('recognition', SubmitStateEnum.success);
      final name = response.faceRecognitionDetails?.detectedName ??
          'faceRecognition'.message('user');
      setCustomMessage('recognition',
          'faceRecognition'.message('welcome').replaceAll('{name}', name));

      Timer(config.successDisplayDuration, () async {
        if (config.onSuccess != null) {
          await config.onSuccess!(response);
        }
      });
    } else if (response.type == 'face_recognition_error') {
      final detectedName = response.faceRecognitionDetails?.detectedName;

      // If detected name exists, use it in the message; otherwise use generic unknown message
      if (detectedName?.isNotEmpty == true) {
        setCustomMessage(
            'recognition',
            'faceRecognition'
                .message('recognitionFailed')
                .replaceAll('{name}', detectedName!));
      } else {
        setCustomMessage('recognition', 'faceRecognition'.message('unknown'));
      }

      final errorMessage = response.message ?? 'Face recognition failed';
      SimpleLogger.warning(
          '[V1_V2_ERROR] Face recognition error: $errorMessage');

      // Handle error directly here, don't call _handleFailure again
      retryCount.value++;
      SimpleLogger.info(
          '[V1_V2_PERFORMANCE] Retry ${retryCount.value}/${config.maxRetries}');

      if (retryCount.value >= config.maxRetries) {
        _handleMaxRetries();
      } else {
        setSubmitState('recognition', SubmitStateEnum.failure);

        Timer(config.retryDelay, () {
          setSubmitState('recognition', SubmitStateEnum.idle);
          setCustomMessage('initialization',
              'faceRecognition'.message('positionFaceCircle'));
        });
      }
    } else {
      SimpleLogger.warning(
          '[V1_V2_ERROR] Unknown response type: ${response.type}');
    }
  }

  void _handleFailure(Failure failure) {
    if (failure is ServerFailure &&
        failure.message.contains('face_recognition_error')) {
      retryCount.value++;
      SimpleLogger.info(
          '[V1_V2_PERFORMANCE] Retry ${retryCount.value}/${config.maxRetries}');

      if (retryCount.value >= config.maxRetries) {
        _handleMaxRetries();
      } else {
        setSubmitState('recognition', SubmitStateEnum.failure);

        Timer(config.retryDelay, () {
          setSubmitState('recognition', SubmitStateEnum.idle);
          setCustomMessage('initialization',
              'faceRecognition'.message('positionFaceCircle'));
        });
      }
    } else {
      SimpleLogger.error(
          '[V1_V2_ERROR] Non-retryable failure: ${failure.message}');
      setSubmitState('recognition', SubmitStateEnum.failure);
      setCustomMessage('recognition', failure.message);

      Timer(const Duration(seconds: 2), () {
        setSubmitState('recognition', SubmitStateEnum.idle);
        setCustomMessage(
            'initialization', 'faceRecognition'.message('positionFaceCircle'));
      });
    }
  }

  void _handleMaxRetries() {
    setSubmitState('recognition', SubmitStateEnum.failure);
    setCustomMessage(
        'recognition', 'faceRecognition'.message('maxRetriesReached'));

    Timer(const Duration(seconds: 2), () async {
      if (config.onFailure != null) {
        await config.onFailure!(
            'faceRecognition'
                .message('faceRecognitionFailedAfter')
                .replaceAll('{maxRetries}', config.maxRetries.toString()),
            retryCount.value);
      }
    });
  }

  Future<void> resetController() async {
    retryCount.value = 0;
    resetAllStates();
    await _initializeServices();
  }

  void disposeCamera() {
    _disposeCamera();
  }

  Future<void> reinitializeCamera() async {
    try {
      _disposeCamera();
      final controller = await CameraService.createController(
        preferredDirection: CameraLensDirection.front,
        resolution: ResolutionPreset.medium,
        timeout: config.timeout,
        maxRetries: 3,
        retryDelay: const Duration(seconds: 1),
      );
      cameraController.value = controller;
    } catch (e) {
      SimpleLogger.error('[V1_V2_ERROR] Camera reinit error: $e');
    }
  }

  void _disposeCamera() {
    try {
      final controller = cameraController.value;
      if (controller != null) {
        CameraService.disposeController(controller);
        // Set to null after disposal to prevent race conditions
        cameraController.value = null;
      }
    } catch (e) {
      SimpleLogger.error('[V1_V2_ERROR] Camera disposal error: $e');
    }
  }

  RxBool get isInitialized =>
      (getSubmitState('initialization') == SubmitStateEnum.success).obs;
  RxBool get isConnected =>
      (getSubmitState('initialization') == SubmitStateEnum.success).obs;
  RxBool get isWaitingForResponse => isOperationActive('recognition').obs;
  RxBool get isRetrying =>
      (getSubmitState('recognition') == SubmitStateEnum.retry).obs;
  RxBool get isSuccess =>
      (getSubmitState('recognition') == SubmitStateEnum.success).obs;
  RxBool get isCompleted =>
      (getSubmitState('recognition') == SubmitStateEnum.success ||
              getSubmitState('recognition') == SubmitStateEnum.failure)
          .obs;

  // Status message utama (gabungkan detection + issue)
  RxString get statusMessage {
    // Jika sedang menunggu response, tampilkan processing
    if (isWaitingForResponse.value) {
      return 'faceRecognition'.message('processing').obs;
    }

    // Jika success, tampilkan welcome message
    if (isSuccess.value) {
      final customMessage = getOperationStateDescription('recognition');
      if (customMessage.isNotEmpty) {
        return customMessage.obs;
      }
      return 'faceRecognition'.message('success').obs;
    }

    // Jika failed dan ada detected name, tampilkan error dengan nama
    if (getSubmitState('recognition') == SubmitStateEnum.failure) {
      final customMessage = getOperationStateDescription('recognition');
      if (customMessage.isNotEmpty) {
        return customMessage.obs;
      }
    }

    // Jika initialization masih loading, tampilkan pesan loading
    if (getSubmitState('initialization') == SubmitStateEnum.loading) {
      return getOperationStateDescription('initialization').obs;
    }

    // Jika initialization failed, tampilkan pesan error
    if (getSubmitState('initialization') == SubmitStateEnum.failure) {
      return getOperationStateDescription('initialization').obs;
    }

    // Untuk face quality, gabungkan detection + issue
    final quality = currentFaceQuality.value;
    if (quality != null) {
      // Jika ada issue, tampilkan issue description
      if (quality.issues != null &&
          quality.issues!.isNotEmpty &&
          quality.issues!.first != FaceQualityIssueEnum.none) {
        return quality.issues!.first.description.obs;
      }

      // Jika tidak ada issue, tampilkan level quality
      switch (quality.level) {
        case FaceQualityLevelEnum.excellent:
          return 'faceRecognition'.message('quality.excellent').obs;
        case FaceQualityLevelEnum.good:
          return 'faceRecognition'.message('quality.good').obs;
        case FaceQualityLevelEnum.poor:
          return 'faceRecognition'.message('quality.poor').obs;
      }
    }

    // Hanya tampilkan "Tidak ada wajah di kamera" jika initialization sudah success
    if (getSubmitState('initialization') == SubmitStateEnum.success) {
      return 'faceRecognition'.message('quality.noFaceDetected').obs;
    }

    // Fallback untuk state lain
    return getOperationStateDescription('initialization').obs;
  }

  // Status instruction/subtitle (prioritas issue instruction)
  RxString get statusInstruction {
    final quality = currentFaceQuality.value;
    if (quality != null &&
        quality.issues != null &&
        quality.issues!.isNotEmpty &&
        quality.issues!.first != FaceQualityIssueEnum.none) {
      return quality.issues!.first.instruction.obs;
    }
    // Fallback ke instruksi default
    return ''.obs;
  }

  RxString get statusSubtitle {
    // If waiting for response, show processing
    if (isWaitingForResponse.value) {
      return 'faceRecognition'.message('processing').obs;
    }

    // If success, show success message
    if (isSuccess.value) {
      return 'faceRecognition'.message('success').obs;
    }

    // Check if max retries reached
    if (retryCount.value >= config.maxRetries) {
      return 'faceRecognition'.message('maxRetries.subtitle').obs;
    }

    // If just failed and will retry, show retry subtitle
    if (getSubmitState('recognition') == SubmitStateEnum.failure &&
        retryCount.value > 0) {
      return 'faceRecognition'.message('retry.subtitle').obs;
    }

    // Get current face quality for subtitle
    final quality = currentFaceQuality.value;
    if (quality == null) {
      return 'faceRecognition'.message('positionFaceCircle').obs;
    }
    switch (quality.level) {
      case FaceQualityLevelEnum.excellent:
        return ('${'faceRecognition'.message('retry.faceReady')}, ${'faceRecognition'.message('retry.holdStill')}')
            .obs;
      case FaceQualityLevelEnum.good:
        return 'faceRecognition'.message('moveCloser').obs;
      case FaceQualityLevelEnum.poor:
        return 'faceRecognition'.message('positionFaceCircle').obs;
    }
  }

  void initializeServices() => _initializeServices();
}
