import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/face_recognition/domain/enums/face_quality_issue_enum.dart';
import 'package:mobile/features/face_recognition/domain/enums/face_quality_level_enum.dart';

part 'face_quality_model.freezed.dart';
part 'face_quality_model.g.dart';

/// JsonConverter for FaceQualityLevelEnum
class FaceQualityLevelEnumConverter
    implements JsonConverter<FaceQualityLevelEnum, String> {
  const FaceQualityLevelEnumConverter();

  @override
  FaceQualityLevelEnum fromJson(String json) {
    return FaceQualityLevelEnum.values.firstWhere(
      (e) => e.name == json,
      orElse: () => FaceQualityLevelEnum.poor,
    );
  }

  @override
  String toJson(FaceQualityLevelEnum object) {
    return object.name;
  }
}

/// JsonConverter for FaceQualityIssueEnum
class FaceQualityIssueEnumConverter
    implements JsonConverter<List<FaceQualityIssueEnum>, List<String>> {
  const FaceQualityIssueEnumConverter();

  @override
  List<FaceQualityIssueEnum> fromJson(List<String> json) {
    return json
        .map((e) => FaceQualityIssueEnum.values.firstWhere(
              (enumValue) => enumValue.name == e,
              orElse: () => FaceQualityIssueEnum.none,
            ))
        .toList();
  }

  @override
  List<String> toJson(List<FaceQualityIssueEnum> object) {
    return object.map((e) => e.name).toList();
  }
}

@freezed
abstract class FaceQualityModel with _$FaceQualityModel {
  const factory FaceQualityModel({
    @JsonKey(name: 'level')
    @FaceQualityLevelEnumConverter()
    required FaceQualityLevelEnum level,
    @JsonKey(name: 'area') required double area,
    @JsonKey(name: 'aspectRatio') required double aspectRatio,
    @JsonKey(name: 'isWellProportioned') required bool isWellProportioned,
    @JsonKey(name: 'headYaw') double? headYaw,
    @JsonKey(name: 'headPitch') double? headPitch,
    @JsonKey(name: 'headRoll') double? headRoll,
    @JsonKey(name: 'leftEyeOpenProbability') double? leftEyeOpenProbability,
    @JsonKey(name: 'rightEyeOpenProbability') double? rightEyeOpenProbability,
    @JsonKey(name: 'smilingProbability') double? smilingProbability,
    @JsonKey(name: 'brightness') double? brightness,
    @JsonKey(name: 'sharpness') double? sharpness,
    @JsonKey(name: 'isCentered') bool? isCentered,
    @JsonKey(name: 'hasMultipleFaces') bool? hasMultipleFaces,
    @JsonKey(name: 'issues')
    @FaceQualityIssueEnumConverter()
    List<FaceQualityIssueEnum>? issues,
    @JsonKey(name: 'center') String? center,
  }) = _FaceQualityModel;

  factory FaceQualityModel.fromJson(Map<String, dynamic> json) =>
      _$FaceQualityModelFromJson(json);
}
