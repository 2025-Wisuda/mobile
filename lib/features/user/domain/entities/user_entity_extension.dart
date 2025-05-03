import 'package:easy_localization/easy_localization.dart';
import 'package:mobile/features/user/domain/entities/user_entity.dart';

extension UserEntityExtension on UserEntity {
  String get idStr => id ?? '';
  String get passwordStr => password ?? '';
  String get lastLoginStr => lastLogin?.toIso8601String() ?? '';
  String get isSuperuserStr =>
      isSuperuser == true ? 'general.yes'.tr() : 'general.no'.tr();
  String get usernameStr => username ?? '';
  String get studentIdStr =>
      studentId ?? 'features.user.form.label.studentId'.tr();
  String get employeeIdStr =>
      employeeId ?? 'features.user.form.label.employeeId'.tr();
  String get firstNameStr =>
      firstName ?? 'features.user.form.label.firstName'.tr();
  String get lastNameStr =>
      lastName ?? 'features.user.form.label.lastName'.tr();
  String get emailStr => email ?? '';
  String get isActiveStr =>
      isActive == true ? 'general.active'.tr() : 'general.inactive'.tr();
  String get isStaffStr =>
      isStaff == true ? 'general.yes'.tr() : 'general.no'.tr();
  String get dateJoinedStr => dateJoined?.toIso8601String() ?? '';
  String get faceImageStr => faceImage ?? '';
  String get faceUploadedStr =>
      faceUploaded == true ? 'general.yes'.tr() : 'general.no'.tr();
  String get avatarStr => avatar ?? '';
  String get groupStr => group ?? '';
  String get createdAtStr => createdAt?.toIso8601String() ?? '';
  String get updatedAtStr => updatedAt?.toIso8601String() ?? '';
}
