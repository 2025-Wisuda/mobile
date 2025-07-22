import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/notification/domain/entities/entity.dart';

part 'fcm_device_model.freezed.dart';
part 'fcm_device_model.g.dart';
part 'fcm_device_model_extension.dart';

@freezed
abstract class FcmDeviceModel with _$FcmDeviceModel {
  const factory FcmDeviceModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'device_type') String? deviceType,
    @JsonKey(name: 'device_name') String? deviceName,
    @JsonKey(name: 'registration_token') String? registrationToken,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'last_used') DateTime? lastUsed,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _FcmDeviceModel;

  factory FcmDeviceModel.fromJson(Map<String, dynamic> json) =>
      _$FcmDeviceModelFromJson(json);
}

@freezed
abstract class ListFcmDeviceModel with _$ListFcmDeviceModel {
  const factory ListFcmDeviceModel({
    @JsonKey(name: 'devices') List<FcmDeviceModel>? devices,
    @JsonKey(name: 'count') int? count,
  }) = _ListFcmDeviceModel;

  factory ListFcmDeviceModel.fromJson(Map<String, dynamic> json) =>
      _$ListFcmDeviceModelFromJson(json);
}

@freezed
abstract class RegisterDeviceResponseModel with _$RegisterDeviceResponseModel {
  const factory RegisterDeviceResponseModel({
    @JsonKey(name: 'device_id') String? deviceId,
  }) = _RegisterDeviceResponseModel;

  factory RegisterDeviceResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterDeviceResponseModelFromJson(json);
}
