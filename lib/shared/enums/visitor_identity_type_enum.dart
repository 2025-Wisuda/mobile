enum VisitorIdentityTypeEnum {
  studentNumber('NPM'),
  employeeNumber('NIP'),
  nationalId('KTP'),
  drivingLicense('SIM'),
  passport('Passport'),
  other('Lainnya');

  const VisitorIdentityTypeEnum(this.label);
  final String label;

  static VisitorIdentityTypeEnum? fromString(String? value) {
    if (value == null) return null;
    for (VisitorIdentityTypeEnum type in VisitorIdentityTypeEnum.values) {
      if (type.label == value || type.name == value.toLowerCase()) {
        return type;
      }
    }
    return null;
  }

  bool get isStudentNumber => this == VisitorIdentityTypeEnum.studentNumber;
  bool get isEmployeeNumber => this == VisitorIdentityTypeEnum.employeeNumber;
  bool get isNationalId => this == VisitorIdentityTypeEnum.nationalId;
  bool get isDrivingLicense => this == VisitorIdentityTypeEnum.drivingLicense;
  bool get isPassport => this == VisitorIdentityTypeEnum.passport;
  bool get isOther => this == VisitorIdentityTypeEnum.other;
}
