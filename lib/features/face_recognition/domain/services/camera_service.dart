import 'dart:async';
import 'dart:io';

import 'package:camera/camera.dart' as camera;
import 'package:mobile/shared/utils/util.dart';
import 'package:permission_handler/permission_handler.dart';

/// Reusable camera service for all recognition features
class CameraService {
  static List<camera.CameraDescription> _cameras = [];
  static bool _isInitialized = false;

  /// Initialize available cameras (call once at app startup)
  static Future<void> initializeCameras() async {
    if (_isInitialized) return;

    // Tambahkan pengecekan permission kamera
    final status = await Permission.camera.status;
    if (!status.isGranted) {
      final result = await Permission.camera.request();
      if (!result.isGranted) {
        SimpleLogger.error('❌ [CameraService] Camera permission denied');
        throw CameraException('Camera permission denied');
      }
    }

    try {
      SimpleLogger.info('📷 [CameraService] Initializing available cameras');
      final cameras = await camera.availableCameras();
      _cameras = cameras;
      _isInitialized = true;
      SimpleLogger.info('📷 [CameraService] Found ${_cameras.length} cameras');
    } catch (e) {
      SimpleLogger.error('❌ [CameraService] Failed to initialize cameras: $e');
      // Don't rethrow - let it retry later
      _isInitialized = false;
    }
  }

  /// Get available cameras
  static List<camera.CameraDescription> get availableCameras => _cameras;

  /// Check if cameras are initialized
  static bool get isInitialized => _isInitialized;

  /// Create camera controller with specified preferences and enhanced retry logic
  static Future<camera.CameraController> createController({
    camera.CameraLensDirection preferredDirection =
        camera.CameraLensDirection.front,
    camera.ResolutionPreset resolution = camera.ResolutionPreset.medium,
    bool enableAudio = false,
    Duration timeout = const Duration(seconds: 5), // Reduced timeout
    int maxRetries = 3,
    Duration retryDelay = const Duration(seconds: 1),
  }) async {
    // Retry initialization if not initialized
    if (!_isInitialized) {
      await initializeCameras();
    }

    if (_cameras.isEmpty) {
      throw CameraException('No cameras available on device');
    }

    // Find camera with preferred direction
    int cameraIndex = _cameras.indexWhere(
      (camera) => camera.lensDirection == preferredDirection,
    );

    // Fallback to first available camera
    if (cameraIndex == -1) {
      cameraIndex = 0;
      SimpleLogger.info(
          '📷 [CameraService] Preferred direction not found, using camera at index 0');
    }

    final selectedCamera = _cameras[cameraIndex];
    SimpleLogger.info(
        '📷 [CameraService] Creating controller for: ${selectedCamera.name}');

    // Configure camera controller with ML Kit compatible image format
    final controller = camera.CameraController(
      selectedCamera,
      resolution,
      enableAudio: enableAudio,
      imageFormatGroup: Platform.isAndroid
          ? camera.ImageFormatGroup.nv21 // for Android
          : camera.ImageFormatGroup.bgra8888, // for iOS
    );

    // Enhanced retry logic for initialization
    int retryCount = 0;
    while (retryCount <= maxRetries) {
      try {
        SimpleLogger.info(
            '📷 [CameraService] Camera initialization attempt ${retryCount + 1}/${maxRetries + 1}');

        await controller.initialize().timeout(
          timeout,
          onTimeout: () {
            throw CameraTimeoutException(
                'Camera initialization timeout after ${timeout.inSeconds}s');
          },
        );

        SimpleLogger.success(
            '✅ [CameraService] Camera controller initialized successfully');
        SimpleLogger.info(
            '📷 [CameraService] Image format: ${Platform.isAndroid ? "nv21 (Android)" : "bgra8888 (iOS)"}');

        return controller;
      } catch (e) {
        retryCount++;
        SimpleLogger.warning(
            '⚠️ [CameraService] Camera initialization failed (attempt $retryCount/${maxRetries + 1}): $e');

        if (retryCount > maxRetries) {
          await controller.dispose();
          throw CameraInitializationException(
              'Camera initialization failed after ${maxRetries + 1} attempts: $e');
        }

        // Wait before retrying with exponential backoff
        final delayMs = retryDelay.inMilliseconds * (retryCount);
        await Future.delayed(Duration(milliseconds: delayMs));
      }
    }

    // This should never be reached, but just in case
    await controller.dispose();
    throw CameraInitializationException(
        'Camera initialization failed after ${maxRetries + 1} attempts');
  }

  /// Switch to next available camera
  static camera.CameraDescription? getNextCamera(
      camera.CameraDescription currentCamera) {
    if (_cameras.length <= 1) return null;

    final currentIndex = _cameras.indexOf(currentCamera);
    if (currentIndex == -1) return null;

    final nextIndex = (currentIndex + 1) % _cameras.length;
    return _cameras[nextIndex];
  }

  /// Get front camera if available
  static camera.CameraDescription? getFrontCamera() {
    return _cameras
        .where((cam) => cam.lensDirection == camera.CameraLensDirection.front)
        .firstOrNull;
  }

  /// Get back camera if available
  static camera.CameraDescription? getBackCamera() {
    return _cameras
        .where((cam) => cam.lensDirection == camera.CameraLensDirection.back)
        .firstOrNull;
  }

  /// Capture image with error handling
  static Future<camera.XFile> captureImage(
      camera.CameraController controller) async {
    if (!controller.value.isInitialized) {
      throw Exception('Camera controller is not initialized');
    }

    if (controller.value.isTakingPicture) {
      throw Exception('Camera is already taking a picture');
    }

    try {
      SimpleLogger.info('📸 [CameraService] Capturing image...');
      final image = await controller.takePicture();
      SimpleLogger.success('✅ [CameraService] Image captured successfully');
      return image;
    } catch (e) {
      SimpleLogger.error('❌ [CameraService] Failed to capture image: $e');
      rethrow;
    }
  }

  /// Dispose camera controller safely
  static Future<void> disposeController(
      camera.CameraController? controller) async {
    if (controller == null) return;

    try {
      SimpleLogger.info('🧹 [CameraService] Disposing camera controller');

      // Check if controller is initialized before disposing
      if (controller.value.isInitialized) {
        await controller.dispose();
        SimpleLogger.success(
            '✅ [CameraService] Camera controller disposed successfully');
      } else {
        SimpleLogger.warning(
            '⚠️ [CameraService] Camera controller was not initialized');
      }
    } catch (e) {
      SimpleLogger.error(
          '❌ [CameraService] Error disposing camera controller: $e');
      // Don't rethrow - just log the error to prevent crashes
    }
  }

  /// Force dispose all camera resources (for hot restart scenarios)
  static Future<void> forceDisposeAll() async {
    try {
      SimpleLogger.info(
          '🧹 [CameraService] Force disposing all camera resources');
      _cameras.clear();
      _isInitialized = false;
      SimpleLogger.success('✅ [CameraService] All camera resources cleared');
    } catch (e) {
      SimpleLogger.error('❌ [CameraService] Error force disposing: $e');
    }
  }
}

/// Custom exception for camera timeout
class CameraTimeoutException implements Exception {
  final String message;
  CameraTimeoutException(this.message);

  @override
  String toString() => message;
}

/// Custom exception for camera initialization
class CameraInitializationException implements Exception {
  final String message;
  CameraInitializationException(this.message);

  @override
  String toString() => message;
}

/// Custom exception for camera operations
class CameraException implements Exception {
  final String message;
  CameraException(this.message);

  @override
  String toString() => message;
}
