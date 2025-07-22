import 'package:freezed_annotation/freezed_annotation.dart';

part 'fcm_device_entity.freezed.dart';

@freezed
abstract class FcmDeviceEntity with _$FcmDeviceEntity {
  const factory FcmDeviceEntity({
    String? id,
    String? deviceType,
    String? deviceName,
    String? registrationToken,
    bool? isActive,
    DateTime? lastUsed,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _FcmDeviceEntity;
}

@freezed
abstract class ListFcmDeviceEntity with _$ListFcmDeviceEntity {
  const factory ListFcmDeviceEntity({
    List<FcmDeviceEntity>? devices,
    int? count,
  }) = _ListFcmDeviceEntity;
}

@freezed
abstract class RegisterDeviceResponseEntity
    with _$RegisterDeviceResponseEntity {
  const factory RegisterDeviceResponseEntity({
    String? deviceId,
  }) = _RegisterDeviceResponseEntity;
}