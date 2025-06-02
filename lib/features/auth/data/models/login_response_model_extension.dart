part of 'login_response_model.dart';

extension LoginResponseModelExtension on LoginResponseModel {
  LoginResponseEntity toEntity() {
    return LoginResponseEntity(
      refreshToken: refreshToken,
      accessToken: accessToken,
    );
  }
}
