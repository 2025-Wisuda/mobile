import 'dart:ui';

import 'package:flutter/foundation.dart';

import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';

import 'package:mobile/shared/utils/util.dart';

/// Reusable face detection service using ML Kit
class FaceDetectionService {
  static FaceDetector? _faceDetector;
  static bool _isInitialized = false;

  /// Initialize face detector with configuration
  static Future<void> initialize() async {
    if (_faceDetector == null) {
      final options = FaceDetectorOptions(
        performanceMode: FaceDetectorMode.fast,
        enableLandmarks: true,
        enableContours: false,
        enableTracking: false,
        minFaceSize: 0.15,
      );
      _faceDetector = FaceDetector(options: options);
      _isInitialized = true;
    }
  }

  /// Get face detector instance
  static FaceDetector? get detector => _faceDetector;

  /// Check if face detector is initialized
  static bool get isInitialized => _isInitialized;

  /// Detect faces in image
  static Future<List<Face>> detectFaces(InputImage inputImage) async {
    if (!_isInitialized || _faceDetector == null) {
      throw Exception(
          'Face detector not initialized. Call initialize() first.');
    }
    try {
      SimpleLogger.info('🔍 [FaceDetection] Detecting faces in image');
      final faces = await _faceDetector!.processImage(inputImage);
      SimpleLogger.success('✅ [FaceDetection] Found ${faces.length} faces');
      return faces;
    } catch (e) {
      SimpleLogger.error('❌ [FaceDetection] Error: $e');
      rethrow;
    }
  }

  /// Check if image has exactly one face
  static Future<bool> hasSingleFace(InputImage inputImage) async {
    final faces = await detectFaces(inputImage);
    return faces.length == 1;
  }

  /// Check if image has any faces
  static Future<bool> hasFaces(InputImage inputImage) async {
    final faces = await detectFaces(inputImage);
    return faces.isNotEmpty;
  }

  /// Get the largest face in the image (most prominent)
  static Future<Face?> getLargestFace(InputImage inputImage) async {
    final faces = await detectFaces(inputImage);
    if (faces.isEmpty) return null;

    Face largestFace = faces.first;
    double largestArea =
        largestFace.boundingBox.width * largestFace.boundingBox.height;

    for (final face in faces.skip(1)) {
      final area = face.boundingBox.width * face.boundingBox.height;
      if (area > largestArea) {
        largestArea = area;
        largestFace = face;
      }
    }

    debugPrint(
        '👤 [FaceDetection] Largest face area: ${largestArea.toInt()} pixels');
    return largestFace;
  }

  /// Get face bounds with margin
  static Rect getFaceBoundsWithMargin(Face face, {double marginPercent = 0.2}) {
    final box = face.boundingBox;
    final marginX = box.width * marginPercent;
    final marginY = box.height * marginPercent;

    return Rect.fromLTWH(
      box.left - marginX,
      box.top - marginY,
      box.width + 2 * marginX,
      box.height + 2 * marginY,
    );
  }

  /// Analyze face quality for recognition
  static Map<String, dynamic> analyzeFaceQuality(Face face) {
    final bounds = face.boundingBox;
    final area = bounds.width * bounds.height;

    // Simple quality metrics
    final size = area > 10000
        ? 'good'
        : area > 5000
            ? 'medium'
            : 'small';
    final aspectRatio = bounds.width / bounds.height;
    final isWellProportioned = aspectRatio >= 0.7 && aspectRatio <= 1.3;

    Map<String, dynamic> quality = {
      'area': area,
      'size': size,
      'width': bounds.width,
      'height': bounds.height,
      'aspectRatio': aspectRatio,
      'isWellProportioned': isWellProportioned,
      'bounds': bounds,
    };

    // Add classification data if available
    if (face.smilingProbability != null) {
      quality['smilingProbability'] = face.smilingProbability;
    }

    if (face.leftEyeOpenProbability != null) {
      quality['leftEyeOpenProbability'] = face.leftEyeOpenProbability;
    }

    if (face.rightEyeOpenProbability != null) {
      quality['rightEyeOpenProbability'] = face.rightEyeOpenProbability;
    }

    // Head pose angles
    if (face.headEulerAngleX != null) {
      quality['headPitch'] = face.headEulerAngleX; // Up/down
    }

    if (face.headEulerAngleY != null) {
      quality['headYaw'] = face.headEulerAngleY; // Left/right
    }

    if (face.headEulerAngleZ != null) {
      quality['headRoll'] = face.headEulerAngleZ; // Tilt
    }

    return quality;
  }

  /// Check if face is suitable for recognition
  static bool isFaceSuitableForRecognition(Face face) {
    final quality = analyzeFaceQuality(face);

    // Check minimum size
    if (quality['area'] < 5000) {
      debugPrint('⚠️ [FaceDetection] Face too small for recognition');
      return false;
    }

    // Check proportions
    if (!quality['isWellProportioned']) {
      debugPrint('⚠️ [FaceDetection] Face not well proportioned');
      return false;
    }

    // Check head pose if available
    if (quality['headYaw'] != null && quality['headYaw'].abs() > 30) {
      debugPrint(
          '⚠️ [FaceDetection] Head turned too much (yaw: ${quality['headYaw']})');
      return false;
    }

    if (quality['headPitch'] != null && quality['headPitch'].abs() > 30) {
      debugPrint(
          '⚠️ [FaceDetection] Head tilted too much (pitch: ${quality['headPitch']})');
      return false;
    }

    return true;
  }

  /// Dispose face detector
  static Future<void> dispose() async {
    if (_faceDetector != null) {
      try {
        debugPrint('🧹 [FaceDetection] Disposing face detector');
        await _faceDetector!.close();
        _faceDetector = null;
        _isInitialized = false;
        SimpleLogger.success(
            '✅ [FaceDetection] Face detector disposed successfully');
      } catch (e) {
        SimpleLogger.error(
            '❌ [FaceDetection] Error disposing face detector: $e');
      }
    }
  }
}
