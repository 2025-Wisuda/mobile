enum PasswordTypeEnum {
  current,
  newPassword,
  confirmation,
  regular,
}

extension PasswordTypeExtension on PasswordTypeEnum {
  String get key {
    switch (this) {
      case PasswordTypeEnum.current:
        return 'currentPassword';
      case PasswordTypeEnum.newPassword:
        return 'newPassword';
      case PasswordTypeEnum.confirmation:
        return 'confirmPassword';
      case PasswordTypeEnum.regular:
        return 'password';
    }
  }

  String get labelKey => key;
  String get hintKey => key;
}
