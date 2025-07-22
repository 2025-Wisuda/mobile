import 'package:freezed_annotation/freezed_annotation.dart';

import '../enums/face_quality_issue_enum.dart';
import '../enums/face_quality_level_enum.dart';

part 'face_quality_entity.freezed.dart';
part 'face_quality_entity_extension.dart';

@freezed
abstract class FaceQualityEntity with _$FaceQualityEntity {
  const factory FaceQualityEntity({
    required FaceQualityLevelEnum level,
    required double area,
    required double aspectRatio,
    required bool isWellProportioned,
    double? headYaw,
    double? headPitch,
    double? headRoll,
    double? leftEyeOpenProbability,
    double? rightEyeOpenProbability,
    double? smilingProbability,
    double? brightness,
    double? sharpness,
    bool? isCentered,
    bool? hasMultipleFaces,
    List<FaceQualityIssueEnum>? issues,
    String? center,
  }) = _FaceQualityEntity;
}
