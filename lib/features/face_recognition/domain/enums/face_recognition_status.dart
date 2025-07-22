import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/text_helper_extensions.dart';

enum FaceRecognitionStatus {
  noFaceDetected,
  poorQuality,
  goodQuality,
  excellentQuality,
  processing,
  success,
  error,
  maxRetries;

  String get message {
    switch (this) {
      case FaceRecognitionStatus.noFaceDetected:
        return 'faceRecognition'.message('noFaceDetected');
      case FaceRecognitionStatus.poorQuality:
        return 'faceRecognition'.message('positionFaceCircle');
      case FaceRecognitionStatus.goodQuality:
        return 'faceRecognition'.message('moveCloser');
      case FaceRecognitionStatus.excellentQuality:
        return 'faceRecognition'.message('faceReadyHoldStill');
      case FaceRecognitionStatus.processing:
        return 'faceRecognition'.message('processing');
      case FaceRecognitionStatus.success:
        return 'faceRecognition'.message('recognitionSuccess');
      case FaceRecognitionStatus.error:
        return 'faceRecognition'.message('recognitionFailed');
      case FaceRecognitionStatus.maxRetries:
        return 'faceRecognition'.message('maxRetriesTitle');
    }
  }

  int get colorValue {
    switch (this) {
      case FaceRecognitionStatus.noFaceDetected:
        return 0xFFFFFFFF; // White
      case FaceRecognitionStatus.poorQuality:
        return 0xFFFF4444; // Red
      case FaceRecognitionStatus.goodQuality:
        return 0xFFFFFF00; // Yellow
      case FaceRecognitionStatus.excellentQuality:
        return 0xFF00FF00; // Green
      case FaceRecognitionStatus.processing:
        return 0xFFFF8800; // Orange
      case FaceRecognitionStatus.success:
        return 0xFF00FF00; // Green
      case FaceRecognitionStatus.error:
        return 0xFFFF4444; // Red
      case FaceRecognitionStatus.maxRetries:
        return 0xFFFF4444; // Red
    }
  }

  Color get color => Color(colorValue);
}
