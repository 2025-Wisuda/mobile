import 'package:mobile/shared/extensions/extension.dart';

enum IdentityTypeEnum {
  identifier('KTP', 'identifier'),
  studentNumber('NPM', 'studentNumber'),
  employeeNumber('NIP', 'employeeNumber'),
  other('Lainnya', 'other');

  const IdentityTypeEnum(this.value, this.labelKey);

  final String value;
  final String labelKey;

  String getLabel() => 'guestVisit'.message(labelKey);

  static IdentityTypeEnum? fromValue(String? value) {
    if (value == null) return null;

    for (final type in IdentityTypeEnum.values) {
      if (type.value == value) {
        return type;
      }
    }
    return null;
  }

  static List<String> get allValues =>
      IdentityTypeEnum.values.map((e) => e.value).toList();
}
