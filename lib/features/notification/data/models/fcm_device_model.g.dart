// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fcm_device_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FcmDeviceModel _$FcmDeviceModelFromJson(Map<String, dynamic> json) =>
    _FcmDeviceModel(
      id: json['id'] as String?,
      deviceType: json['device_type'] as String?,
      deviceName: json['device_name'] as String?,
      registrationToken: json['registration_token'] as String?,
      isActive: json['is_active'] as bool?,
      lastUsed: json['last_used'] == null
          ? null
          : DateTime.parse(json['last_used'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$FcmDeviceModelToJson(_FcmDeviceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'device_type': instance.deviceType,
      'device_name': instance.deviceName,
      'registration_token': instance.registrationToken,
      'is_active': instance.isActive,
      'last_used': instance.lastUsed?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_ListFcmDeviceModel _$ListFcmDeviceModelFromJson(Map<String, dynamic> json) =>
    _ListFcmDeviceModel(
      devices: (json['devices'] as List<dynamic>?)
          ?.map((e) => FcmDeviceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ListFcmDeviceModelToJson(_ListFcmDeviceModel instance) =>
    <String, dynamic>{
      'devices': instance.devices,
      'count': instance.count,
    };

_RegisterDeviceResponseModel _$RegisterDeviceResponseModelFromJson(
        Map<String, dynamic> json) =>
    _RegisterDeviceResponseModel(
      deviceId: json['device_id'] as String?,
    );

Map<String, dynamic> _$RegisterDeviceResponseModelToJson(
        _RegisterDeviceResponseModel instance) =>
    <String, dynamic>{
      'device_id': instance.deviceId,
    };
