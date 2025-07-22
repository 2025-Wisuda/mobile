part of 'otp_validation_response_model.dart';

extension OtpValidationResponseModelExtension on OtpValidationResponseModel {
  OtpValidationResponseEntity toEntity() {
    return OtpValidationResponseEntity(
      valid: valid,
      expiresInMinutes: expiresInMinutes,
      userId: userId,
      username: username,
      validatedRecords: validatedRecords,
    );
  }
}
