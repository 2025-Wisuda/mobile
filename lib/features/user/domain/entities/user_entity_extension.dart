// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;

// Project imports:
import 'package:mobile/features/user/domain/entities/user_entity.dart';

extension UserEntityExtension on UserEntity {
  String get idStr => id ?? '';
  String get passwordStr => password ?? '';
  String get lastLoginStr => lastLogin?.toIso8601String() ?? '';
  String get isSuperuserStr =>
      isSuperuser == true ? i18n.tr('general.yes') : i18n.tr('general.no');
  String get usernameStr => username ?? '';
  String get studentIdStr =>
      studentId ?? i18n.tr('features.user.form.label.studentId');
  String get employeeIdStr =>
      employeeId ?? i18n.tr('features.user.form.label.employeeId');
  String get firstNameStr =>
      firstName ?? i18n.tr('features.user.form.label.firstName');
  String get lastNameStr =>
      lastName ?? i18n.tr('features.user.form.label.lastName');
  String get emailStr => email ?? '';
  String get isActiveStr =>
      isActive == true
          ? i18n.tr('general.active')
          : i18n.tr('general.inactive');
  String get isStaffStr =>
      isStaff == true ? i18n.tr('general.yes') : i18n.tr('general.no');
  String get dateJoinedStr => dateJoined?.toIso8601String() ?? '';
  String get faceImageStr => faceImage ?? '';
  String get faceUploadedStr =>
      faceUploaded == true ? i18n.tr('general.yes') : i18n.tr('general.no');
  String get avatarStr => avatar ?? '';
  String get groupStr => group ?? '';
  String get createdAtStr => createdAt?.toIso8601String() ?? '';
  String get updatedAtStr => updatedAt?.toIso8601String() ?? '';

  String get fullNameStr =>
      (firstName?.isNotEmpty == true || lastName?.isNotEmpty == true)
          ? '$firstName $lastName'
          : i18n.tr('features.user.form.label.fullName');

  String get handleFullNameStr {
    if (firstName?.isNotEmpty == true && lastName?.isNotEmpty == true) {
      return '$firstName $lastName';
    } else if (firstName?.isNotEmpty == true) {
      return firstName!;
    } else if (lastName?.isNotEmpty == true) {
      return lastName!;
    }
    return id ?? '';
  }
}
