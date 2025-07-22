// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_validation_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OtpValidationResponseModel _$OtpValidationResponseModelFromJson(
        Map<String, dynamic> json) =>
    _OtpValidationResponseModel(
      valid: json['valid'] as bool,
      expiresInMinutes: (json['expires_in_minutes'] as num).toInt(),
      userId: json['user_id'] as String,
      username: json['username'] as String,
      validatedRecords: (json['validated_records'] as num).toInt(),
    );

Map<String, dynamic> _$OtpValidationResponseModelToJson(
        _OtpValidationResponseModel instance) =>
    <String, dynamic>{
      'valid': instance.valid,
      'expires_in_minutes': instance.expiresInMinutes,
      'user_id': instance.userId,
      'username': instance.username,
      'validated_records': instance.validatedRecords,
    };
