part of 'login_request_entity.dart';

extension LoginRequestEntityExtension on LoginRequestEntity {
  LoginRequestModel toModel() {
    return LoginRequestModel(username: username, password: password);
  }
}
