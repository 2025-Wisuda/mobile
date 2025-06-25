import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_entity.freezed.dart';

@freezed
abstract class LoginResponseEntity with _$LoginResponseEntity {
  const factory LoginResponseEntity({
    required String? refreshToken,
    required String? accessToken,
  }) = _LoginResponseEntity;
}
