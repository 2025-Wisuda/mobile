import 'package:mobile/shared/extensions/text_helper_extensions.dart';

/// Enumeration representing different levels of face quality for recognition.
///
/// This enum provides a standardized way to categorize face quality levels
/// during face recognition processes, ensuring consistent quality assessment
/// across the application.
///
/// Levels:
/// - [poor]: Face quality is insufficient for reliable recognition
/// - [good]: Face quality is acceptable but could be improved
/// - [excellent]: Face quality is optimal for accurate recognition
enum FaceQualityLevelEnum {
  /// Face quality is insufficient for reliable recognition
  poor,

  /// Face quality is acceptable but could be improved
  good,

  /// Face quality is optimal for accurate recognition
  excellent,
}

/// Extension methods for FaceQualityLevelEnum to provide additional functionality
extension FaceQualityLevelEnumExtension on FaceQualityLevelEnum {
  /// Returns true if the quality level is suitable for face recognition
  bool get isSuitableForRecognition {
    return this == FaceQualityLevelEnum.excellent;
  }

  /// Returns true if the quality level indicates good or excellent quality
  bool get isGoodOrBetter {
    return this == FaceQualityLevelEnum.good ||
        this == FaceQualityLevelEnum.excellent;
  }

  /// Returns true if the quality level indicates poor quality
  bool get isPoor {
    return this == FaceQualityLevelEnum.poor;
  }

  /// Returns i18n message key for the quality level
  String get messageKey {
    switch (this) {
      case FaceQualityLevelEnum.poor:
        return 'poor';
      case FaceQualityLevelEnum.good:
        return 'good';
      case FaceQualityLevelEnum.excellent:
        return 'excellent';
    }
  }

  /// Returns localized description using i18n
  String get description {
    return 'faceRecognition'.message('quality.$messageKey');
  }
}
