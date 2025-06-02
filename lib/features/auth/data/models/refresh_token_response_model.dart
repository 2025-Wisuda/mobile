import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/auth/domain/entities/entity.dart';

part 'refresh_token_response_model.freezed.dart';
part 'refresh_token_response_model.g.dart';

part 'refresh_token_response_model_extension.dart';

@freezed
abstract class RefreshTokenResponseModel with _$RefreshTokenResponseModel {
  const factory RefreshTokenResponseModel({
    @JsonKey(name: 'access') String? accessToken,
  }) = _RefreshTokenResponseModel;

  factory RefreshTokenResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenResponseModelFromJson(json);
}
