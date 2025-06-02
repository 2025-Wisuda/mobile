part of 'change_password_request_entity.dart';

extension ChangePasswordRequestEntityExtension on ChangePasswordRequestEntity {
  ChangePasswordRequestModel toModel() {
    return ChangePasswordRequestModel(
      oldPassword: oldPassword,
      newPassword: newPassword,
    );
  }
}
