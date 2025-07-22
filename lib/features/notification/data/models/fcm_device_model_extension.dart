part of 'fcm_device_model.dart';

extension FcmDeviceModelX on FcmDeviceModel {
  FcmDeviceEntity toEntity() {
    return FcmDeviceEntity(
      id: id,
      deviceType: deviceType,
      deviceName: deviceName,
      registrationToken: registrationToken,
      isActive: isActive,
      lastUsed: lastUsed,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}


extension ListFcmDeviceModelX on ListFcmDeviceModel {
  ListFcmDeviceEntity toEntity() {
    return ListFcmDeviceEntity(
      devices: devices?.map((e) => e.toEntity()).toList(),
      count: count,
    );
  }
}

extension RegisterDeviceResponseModelX on RegisterDeviceResponseModel {
  RegisterDeviceResponseEntity toEntity() {
    return RegisterDeviceResponseEntity(
      deviceId: deviceId,
    );
  }
}
