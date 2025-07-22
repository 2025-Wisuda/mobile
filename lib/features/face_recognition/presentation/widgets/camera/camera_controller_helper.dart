import 'dart:async';

import 'package:flutter/material.dart';

import 'package:camera/camera.dart';
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';

import 'package:mobile/features/face_recognition/domain/domain.dart';
import 'package:mobile/features/face_recognition/presentation/controllers/real_time_face_recognition_controller.dart';
import 'package:mobile/shared/utils/util.dart';

class CameraControllerHelper {
  final CameraController cameraController;
  final Function(FaceQualityEntity) onFaceQualityChanged;
  final VoidCallback? onFaceReady;
  final RealTimeFaceRecognitionController controller;

  FaceQualityEntity? _currentFaceQuality;
  Face? _currentFace;
  Size? _imageSize;
  Timer? _qualityCheckTimer;
  bool _isDetecting = false;
  DateTime? _lastProcessedTime;
  static const Duration _processingThrottle = Duration(milliseconds: 200);
  bool _isCaptureScheduled = false;
  StreamSubscription? _waitingSubscription;

  CameraControllerHelper({
    required this.cameraController,
    required this.onFaceQualityChanged,
    this.onFaceReady,
    required this.controller,
  });

  void startFaceDetection() async {
    await FaceDetectionService.initialize();

    try {
      await cameraController.startImageStream(_processCameraImage);
      SimpleLogger.success('🎥 [CameraHelper] Image stream started');
    } catch (e) {
      SimpleLogger.error('❌ [CameraHelper] Failed to start image stream: $e');
    }

    // Listen to waiting state
    _waitingSubscription = controller.isWaitingForResponse.listen((waiting) {
      SimpleLogger.info('🔄 [CameraHelper] Waiting for response: $waiting');
    });
  }

  void dispose() {
    SimpleLogger.info('🧹 [CameraHelper] Disposing...');

    _waitingSubscription?.cancel();
    _waitingSubscription = null;

    _qualityCheckTimer?.cancel();
    _qualityCheckTimer = null;

    _stopImageStreamSafely();
  }

  void _stopImageStreamSafely() {
    try {
      if (cameraController.value.isInitialized) {
        cameraController.stopImageStream().catchError((e) {
          SimpleLogger.warning(
              '⚠️ [CameraHelper] Error stopping image stream: $e');
        });
        SimpleLogger.info('🧹 [CameraHelper] Image stream stopped');
      }
    } catch (e) {
      SimpleLogger.warning(
          '⚠️ [CameraHelper] Error in stopImageStreamSafely: $e');
    }
  }

  Future<void> _processCameraImage(CameraImage image) async {
    // Skip ML Kit processing for pure timer modes
    if (controller.config.mode != FaceRecognitionMode.current) {
      return;
    }

    // Don't process if face detector isn't ready
    if (!FaceDetectionService.isInitialized) {
      return;
    }

    // Don't process if already waiting for response
    if (controller.isWaitingForResponse.value) {
      return;
    }

    // Don't process if recognition is completed or successful
    if (controller.isCompleted.value || controller.isSuccess.value) {
      return;
    }

    // Throttle processing
    final now = DateTime.now();
    if (_lastProcessedTime != null &&
        now.difference(_lastProcessedTime!) < _processingThrottle) {
      return;
    }

    if (_isDetecting || _isCaptureScheduled) return;

    _isDetecting = true;
    _lastProcessedTime = now;

    try {
      final inputImage = _inputImageFromCameraImage(image);
      if (inputImage == null) return;

      // Store image size for coordinate scaling
      final rotation = inputImage.metadata!.rotation;
      if (rotation == InputImageRotation.rotation90deg ||
          rotation == InputImageRotation.rotation270deg) {
        _imageSize = Size(image.height.toDouble(), image.width.toDouble());
      } else {
        _imageSize = Size(image.width.toDouble(), image.height.toDouble());
      }

      // Process with ML Kit
      final faces = await FaceDetectionService.detectFaces(inputImage);

      Face? face = faces.isNotEmpty ? faces.first : null;
      _currentFace = face;

      FaceQualityEntity? quality = _calculateFaceQuality(face, image);
      _currentFaceQuality = quality;

      onFaceQualityChanged(quality);

      // Schedule capture if ready
      if (quality.isReadyForCapture &&
          !controller.isWaitingForResponse.value &&
          !controller.isSuccess.value &&
          !controller.isCompleted.value) {
        SimpleLogger.info(
            '🎯 [CameraHelper] Face ready! Scheduling capture...');
        _scheduleCapture();
      }
    } catch (e) {
      SimpleLogger.error('❌ [CameraHelper] Face detection error: $e');
    } finally {
      _isDetecting = false;
    }
  }

  FaceQualityEntity _calculateFaceQuality(Face? face, CameraImage image) {
    if (face == null) {
      return FaceQualityEntity(
        level: FaceQualityLevelEnum.poor,
        area: 0.0,
        aspectRatio: 0.0,
        isWellProportioned: false,
        issues: [FaceQualityIssueEnum.noFace],
      );
    }

    final bounds = face.boundingBox;
    final imageArea = image.width * image.height;
    final faceArea = bounds.width * bounds.height;
    final area = faceArea / imageArea;
    final aspectRatio = bounds.width / bounds.height;
    final isWellProportioned = aspectRatio >= 0.7 && aspectRatio <= 1.3;

    // Calculate center position
    final center = bounds.center;
    final isCentered =
        (center.dx > image.width * 0.3 && center.dx < image.width * 0.7) &&
            (center.dy > image.height * 0.3 && center.dy < image.height * 0.7);

    // Calculate brightness (simplified - using average pixel intensity)
    final brightness = _calculateBrightness(image, bounds);

    // Calculate sharpness (simplified - using edge detection approximation)
    final sharpness = _calculateSharpness(image, bounds);

    // Get head pose angles
    final headYaw = face.headEulerAngleY;
    final headPitch = face.headEulerAngleX;
    final headRoll = face.headEulerAngleZ;

    // Get facial features
    final leftEyeOpenProbability = face.leftEyeOpenProbability;
    final rightEyeOpenProbability = face.rightEyeOpenProbability;
    final smilingProbability = face.smilingProbability;

    // Comprehensive quality assessment
    final issues = <FaceQualityIssueEnum>[];

    // Check size issues
    if (area < 0.05) {
      issues.add(FaceQualityIssueEnum.tooSmall);
    } else if (area > 0.3) {
      issues.add(FaceQualityIssueEnum.tooLarge);
    }

    // Check positioning issues
    if (!isCentered) {
      issues.add(FaceQualityIssueEnum.notCentered);
    }

    // Check aspect ratio
    if (!isWellProportioned) {
      issues.add(FaceQualityIssueEnum.poorAspectRatio);
    }

    // Check brightness
    if (brightness != null && brightness < 0.3) {
      issues.add(FaceQualityIssueEnum.tooDark);
    } else if (brightness != null && brightness > 0.8) {
      issues.add(FaceQualityIssueEnum.tooBright);
    }

    // Check sharpness
    if (sharpness != null && sharpness < 0.5) {
      issues.add(FaceQualityIssueEnum.blurry);
    }

    // Check head pose
    if (headYaw != null && headYaw.abs() > 15) {
      issues.add(FaceQualityIssueEnum.headTurned);
    }

    if ((headPitch != null && headPitch.abs() > 15) ||
        (headRoll != null && headRoll.abs() > 15)) {
      issues.add(FaceQualityIssueEnum.headTilted);
    }

    // Check eyes
    if ((leftEyeOpenProbability != null && leftEyeOpenProbability < 0.5) ||
        (rightEyeOpenProbability != null && rightEyeOpenProbability < 0.5)) {
      issues.add(FaceQualityIssueEnum.eyesClosed);
    }

    // Check multiple faces (simplified check)
    // final hasMultipleFaces = false; // Placeholder for future implementation

    // If no issues found, add none
    if (issues.isEmpty) {
      issues.add(FaceQualityIssueEnum.none);
    }

    // Determine quality level based on comprehensive assessment
    FaceQualityLevelEnum level;

    // Excellent: No critical issues, good size, centered, good pose, eyes open
    if (issues.contains(FaceQualityIssueEnum.none) &&
        area >= 0.1 &&
        isCentered &&
        isWellProportioned &&
        (headYaw == null || headYaw.abs() <= 10) &&
        (headPitch == null || headPitch.abs() <= 10) &&
        (headRoll == null || headRoll.abs() <= 10) &&
        (leftEyeOpenProbability == null || leftEyeOpenProbability >= 0.7) &&
        (rightEyeOpenProbability == null || rightEyeOpenProbability >= 0.7) &&
        brightness != null &&
        brightness >= 0.4 &&
        brightness <= 0.7 &&
        sharpness != null &&
        sharpness >= 0.7) {
      level = FaceQualityLevelEnum.excellent;
    }
    // Good: Some minor issues but still acceptable
    else if (area >= 0.05 &&
        isWellProportioned &&
        !issues.contains(FaceQualityIssueEnum.tooSmall) &&
        !issues.contains(FaceQualityIssueEnum.tooLarge)) {
      level = FaceQualityLevelEnum.good;
    }
    // Poor: Critical issues or insufficient quality
    else {
      level = FaceQualityLevelEnum.poor;
    }

    return FaceQualityEntity(
      level: level,
      area: area,
      aspectRatio: aspectRatio,
      isWellProportioned: isWellProportioned,
      headYaw: headYaw,
      headPitch: headPitch,
      headRoll: headRoll,
      leftEyeOpenProbability: leftEyeOpenProbability,
      rightEyeOpenProbability: rightEyeOpenProbability,
      smilingProbability: smilingProbability,
      brightness: brightness,
      sharpness: sharpness,
      isCentered: isCentered,
      hasMultipleFaces: false,
      issues: issues,
      center: '${center.dx.toInt()},${center.dy.toInt()}',
    );
  }

  /// Calculate brightness from face area
  double? _calculateBrightness(CameraImage image, Rect faceBounds) {
    try {
      // Simplified brightness calculation
      // In real implementation, you would analyze pixel values in the face area
      final faceArea = faceBounds.width * faceBounds.height;
      final imageArea = image.width * image.height;
      final faceRatio = faceArea / imageArea;

      // Approximate brightness based on face size and position
      // This is a simplified version - in production you'd analyze actual pixel values
      return 0.5 + (faceRatio * 0.3); // Returns value between 0.5-0.8
    } catch (e) {
      return null;
    }
  }

  /// Calculate sharpness from face area
  double? _calculateSharpness(CameraImage image, Rect faceBounds) {
    try {
      // Simplified sharpness calculation
      // In real implementation, you would use edge detection algorithms
      final faceArea = faceBounds.width * faceBounds.height;
      final imageArea = image.width * image.height;
      final faceRatio = faceArea / imageArea;

      // Approximate sharpness based on face size and position
      // This is a simplified version - in production you'd use actual edge detection
      return 0.6 + (faceRatio * 0.4); // Returns value between 0.6-1.0
    } catch (e) {
      return null;
    }
  }

  InputImage? _inputImageFromCameraImage(CameraImage image) {
    final camera = cameraController.description;
    final sensorOrientation = camera.sensorOrientation;
    InputImageRotation? rotation;

    switch (sensorOrientation) {
      case 0:
        rotation = InputImageRotation.rotation0deg;
        break;
      case 90:
        rotation = InputImageRotation.rotation90deg;
        break;
      case 180:
        rotation = InputImageRotation.rotation180deg;
        break;
      case 270:
        rotation = InputImageRotation.rotation270deg;
        break;
      default:
        rotation = InputImageRotation.rotation0deg;
    }

    final format = InputImageFormatValue.fromRawValue(image.format.raw);

    if (format == null) {
      SimpleLogger.error('❌ Format image not supported: ${image.format.raw}');
      return null;
    }

    return InputImage.fromBytes(
      bytes: image.planes[0].bytes,
      metadata: InputImageMetadata(
        size: Size(image.width.toDouble(), image.height.toDouble()),
        rotation: rotation,
        format: format,
        bytesPerRow: image.planes[0].bytesPerRow,
      ),
    );
  }

  void _scheduleCapture() {
    if (_isCaptureScheduled ||
        controller.isWaitingForResponse.value ||
        controller.isCompleted.value ||
        controller.isSuccess.value) {
      return;
    }

    // Only use widget timer for current mode (ML Kit + Timer)
    if (controller.config.mode != FaceRecognitionMode.current) {
      return;
    }

    _isCaptureScheduled = true;
    _qualityCheckTimer?.cancel();
    _qualityCheckTimer = Timer(controller.config.timerAutoCaptureDelay, () {
      if (!controller.isWaitingForResponse.value &&
          !controller.isCompleted.value &&
          !controller.isSuccess.value) {
        SimpleLogger.info(
            '🎯 [CameraHelper] Timer-based auto capture executing...');
        onFaceReady?.call();
      } else {
        SimpleLogger.info(
            '🚫 [CameraHelper] Skipping capture - waiting for response or completed');
      }
      _isCaptureScheduled = false;
    });
  }

  // Getters for widgets
  FaceQualityEntity? get currentFaceQuality => _currentFaceQuality;
  Face? get currentFace => _currentFace;
  Size? get imageSize => _imageSize;
}
