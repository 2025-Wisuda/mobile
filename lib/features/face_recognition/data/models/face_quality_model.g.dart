// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'face_quality_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FaceQualityModel _$FaceQualityModelFromJson(Map<String, dynamic> json) =>
    _FaceQualityModel(
      level: const FaceQualityLevelEnumConverter()
          .fromJson(json['level'] as String),
      area: (json['area'] as num).toDouble(),
      aspectRatio: (json['aspectRatio'] as num).toDouble(),
      isWellProportioned: json['isWellProportioned'] as bool,
      headYaw: (json['headYaw'] as num?)?.toDouble(),
      headPitch: (json['headPitch'] as num?)?.toDouble(),
      headRoll: (json['headRoll'] as num?)?.toDouble(),
      leftEyeOpenProbability:
          (json['leftEyeOpenProbability'] as num?)?.toDouble(),
      rightEyeOpenProbability:
          (json['rightEyeOpenProbability'] as num?)?.toDouble(),
      smilingProbability: (json['smilingProbability'] as num?)?.toDouble(),
      brightness: (json['brightness'] as num?)?.toDouble(),
      sharpness: (json['sharpness'] as num?)?.toDouble(),
      isCentered: json['isCentered'] as bool?,
      hasMultipleFaces: json['hasMultipleFaces'] as bool?,
      issues: _$JsonConverterFromJson<List<String>, List<FaceQualityIssueEnum>>(
          json['issues'], const FaceQualityIssueEnumConverter().fromJson),
      center: json['center'] as String?,
    );

Map<String, dynamic> _$FaceQualityModelToJson(_FaceQualityModel instance) =>
    <String, dynamic>{
      'level': const FaceQualityLevelEnumConverter().toJson(instance.level),
      'area': instance.area,
      'aspectRatio': instance.aspectRatio,
      'isWellProportioned': instance.isWellProportioned,
      'headYaw': instance.headYaw,
      'headPitch': instance.headPitch,
      'headRoll': instance.headRoll,
      'leftEyeOpenProbability': instance.leftEyeOpenProbability,
      'rightEyeOpenProbability': instance.rightEyeOpenProbability,
      'smilingProbability': instance.smilingProbability,
      'brightness': instance.brightness,
      'sharpness': instance.sharpness,
      'isCentered': instance.isCentered,
      'hasMultipleFaces': instance.hasMultipleFaces,
      'issues': _$JsonConverterToJson<List<String>, List<FaceQualityIssueEnum>>(
          instance.issues, const FaceQualityIssueEnumConverter().toJson),
      'center': instance.center,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
