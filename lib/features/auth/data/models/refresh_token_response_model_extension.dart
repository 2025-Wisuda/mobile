part of 'refresh_token_response_model.dart';

extension RefreshTokenResponseModelExtension on RefreshTokenResponseModel {
  RefreshTokenResponseEntity toEntity() {
    return RefreshTokenResponseEntity(accessToken: accessToken);
  }
}
