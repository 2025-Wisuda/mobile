import 'package:mobile/shared/extensions/text_helper_extensions.dart';

/// Enumeration representing different face quality issues that can occur
/// during face recognition processes.
///
/// This enum provides a standardized way to identify specific quality problems
/// that prevent optimal face recognition, allowing for targeted user guidance.
///
/// Issues:
/// - [noFace]: No face detected in the frame
/// - [tooSmall]: Face is too small for reliable recognition
/// - [tooLarge]: Face is too large (too close to camera)
/// - [notCentered]: Face is not positioned in the center of the frame
/// - [poorAspectRatio]: Face proportions are not suitable (too wide/narrow)
/// - [tooDark]: Image is too dark for proper recognition
/// - [tooBright]: Image is too bright (overexposed)
/// - [blurry]: Image is blurry or lacks sharpness
/// - [headTurned]: Head is turned too much (yaw angle)
/// - [headTilted]: Head is tilted too much (pitch/roll angle)
/// - [eyesClosed]: Eyes are closed or not clearly visible
/// - [multipleFaces]: Multiple faces detected in the frame
/// - [none]: No specific issues detected
enum FaceQualityIssueEnum {
  /// No face detected in the frame
  noFace,

  /// Face is too small for reliable recognition
  tooSmall,

  /// Face is too large (too close to camera)
  tooLarge,

  /// Face is not positioned in the center of the frame
  notCentered,

  /// Face proportions are not suitable (too wide/narrow)
  poorAspectRatio,

  /// Image is too dark for proper recognition
  tooDark,

  /// Image is too bright (overexposed)
  tooBright,

  /// Image is blurry or lacks sharpness
  blurry,

  /// Head is turned too much (yaw angle)
  headTurned,

  /// Head is tilted too much (pitch/roll angle)
  headTilted,

  /// Eyes are closed or not clearly visible
  eyesClosed,

  /// Multiple faces detected in the frame
  multipleFaces,

  /// No specific issues detected
  none,
}

/// Extension methods for FaceQualityIssueEnum to provide additional functionality
extension FaceQualityIssueEnumExtension on FaceQualityIssueEnum {
  /// Returns true if the issue is critical (prevents recognition)
  bool get isCritical {
    return [
      FaceQualityIssueEnum.noFace,
      FaceQualityIssueEnum.tooSmall,
      FaceQualityIssueEnum.tooLarge,
      FaceQualityIssueEnum.multipleFaces,
    ].contains(this);
  }

  /// Returns true if the issue is related to positioning
  bool get isPositioningIssue {
    return [
      FaceQualityIssueEnum.notCentered,
      FaceQualityIssueEnum.headTurned,
      FaceQualityIssueEnum.headTilted,
    ].contains(this);
  }

  /// Returns true if the issue is related to image quality
  bool get isImageQualityIssue {
    return [
      FaceQualityIssueEnum.tooDark,
      FaceQualityIssueEnum.tooBright,
      FaceQualityIssueEnum.blurry,
    ].contains(this);
  }

  /// Returns true if the issue is related to face features
  bool get isFeatureIssue {
    return [
      FaceQualityIssueEnum.eyesClosed,
      FaceQualityIssueEnum.poorAspectRatio,
    ].contains(this);
  }

  /// Returns i18n message key for the issue
  String get messageKey {
    switch (this) {
      case FaceQualityIssueEnum.noFace:
        return 'noFaceDetected';
      case FaceQualityIssueEnum.tooSmall:
        return 'tooSmall';
      case FaceQualityIssueEnum.tooLarge:
        return 'tooLarge';
      case FaceQualityIssueEnum.notCentered:
        return 'notCentered';
      case FaceQualityIssueEnum.poorAspectRatio:
        return 'poorAspectRatio';
      case FaceQualityIssueEnum.tooDark:
        return 'tooDark';
      case FaceQualityIssueEnum.tooBright:
        return 'tooBright';
      case FaceQualityIssueEnum.blurry:
        return 'blurry';
      case FaceQualityIssueEnum.headTurned:
        return 'headTurned';
      case FaceQualityIssueEnum.headTilted:
        return 'headTilted';
      case FaceQualityIssueEnum.eyesClosed:
        return 'eyesClosed';
      case FaceQualityIssueEnum.multipleFaces:
        return 'multipleFaces';
      case FaceQualityIssueEnum.none:
        return 'none';
    }
  }

  /// Returns localized description using i18n
  String get description {
    return 'faceRecognition'.message('quality.issue.$messageKey');
  }

  /// Returns localized instruction for fixing the issue
  String get instruction {
    return 'faceRecognition'.message('quality.instruction.$messageKey');
  }
}
