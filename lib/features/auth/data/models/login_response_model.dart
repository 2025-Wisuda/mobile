import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/auth/domain/entities/entity.dart';

part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';
part 'login_response_model_extension.dart';

@freezed
abstract class LoginResponseModel with _$LoginResponseModel {
  const factory LoginResponseModel({
    @JsonKey(name: 'refresh') String? refreshToken,
    @JsonKey(name: 'access') String? accessToken,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}
