part of 'face_quality_entity.dart';

extension FaceQualityEntityExtension on FaceQualityEntity {
  bool get isReadyForCapture => level == FaceQualityLevelEnum.excellent;
}
