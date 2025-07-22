import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_validation_response_entity.freezed.dart';

@freezed
abstract class OtpValidationResponseEntity with _$OtpValidationResponseEntity {
  const factory OtpValidationResponseEntity({
    required bool valid,
    required int expiresInMinutes,
    required String userId,
    required String username,
    required int validatedRecords,
  }) = _OtpValidationResponseEntity;
}
