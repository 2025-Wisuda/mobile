part of 'logout_request_entity.dart';

extension LogoutRequestEntityExtension on LogoutRequestEntity {
  LogoutRequestModel toModel() {
    return LogoutRequestModel(refreshToken: refreshToken);
  }
}
