import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_validation_request_model.freezed.dart';
part 'otp_validation_request_model.g.dart';

@freezed
abstract class OtpValidationRequestModel with _$OtpValidationRequestModel {
  const factory OtpValidationRequestModel({
    @JsonKey(name: 'otp_code') required String otpCode,
  }) = _OtpValidationRequestModel;

  factory OtpValidationRequestModel.fromJson(Map<String, dynamic> json) =>
      _$OtpValidationRequestModelFromJson(json);
}
