import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_token_response_entity.freezed.dart';

@freezed
abstract class RefreshTokenResponseEntity with _$RefreshTokenResponseEntity {
  const factory RefreshTokenResponseEntity({
    required String? accessToken,
  }) = _RefreshTokenResponseEntity;
}