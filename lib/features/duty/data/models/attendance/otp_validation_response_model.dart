import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/duty/domain/entities/entity.dart';

part 'otp_validation_response_model.freezed.dart';
part 'otp_validation_response_model.g.dart';
part 'otp_validation_response_model_extension.dart';

@freezed
abstract class OtpValidationResponseModel with _$OtpValidationResponseModel {
  const factory OtpValidationResponseModel({
    @JsonKey(name: 'valid') required bool valid,
    @JsonKey(name: 'expires_in_minutes') required int expiresInMinutes,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'validated_records') required int validatedRecords,
  }) = _OtpValidationResponseModel;

  factory OtpValidationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$OtpValidationResponseModelFromJson(json);
}
