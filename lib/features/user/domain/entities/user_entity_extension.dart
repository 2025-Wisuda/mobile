part of 'user_entity.dart';

extension UserEntityExtension on UserEntity {
  String get idStr => id ?? '';
  String get usernameStr => username ?? '';
  String get emailStr => email ?? '';
  String get firstNameStr => firstName ?? '';
  String get lastNameStr => lastName ?? '';
  String get studentNumberStr => studentNumber ?? '';
  String get employeeNumberStr => employeeNumber ?? '';
  String get faceImageStr => faceImage ?? '';
  String get faceUploadedStr => faceUploaded == true ? 'Yes' : 'No';
  String get avatarStr => avatar ?? '';
  String get isActiveStr => isActive == true ? 'Active' : 'Inactive';
  String get isStaffStr => isStaff == true ? 'Yes' : 'No';
  String get dateJoinedStr => dateJoined?.toIso8601String() ?? '';
  String get lastLoginStr => lastLogin?.toIso8601String() ?? '';
  String get updatedAtStr => updatedAt?.toIso8601String() ?? '';
  String get groupStr => group ?? '';

  String get fullNameStr => '$firstNameStr $lastNameStr'.trim();
  String get studentIdStr =>
      studentNumberStr.isNotEmpty ? studentNumberStr : 'N/A';
  String get employeeIdStr =>
      employeeNumberStr.isNotEmpty ? employeeNumberStr : 'N/A';
  String get fullNameOrUsername =>
      firstNameStr.isNotEmpty || lastNameStr.isNotEmpty
          ? fullNameStr
          : usernameStr.isNotEmpty
              ? usernameStr
              : 'Unknown User';

  String get formattedDateJoined =>
      DateHelper.formatDayMonthYear(date: dateJoined);

  UserModel toModel() {
    return UserModel(
      id: id,
      username: username,
      email: email,
      firstName: firstName,
      lastName: lastName,
      studentNumber: studentNumber,
      employeeNumber: employeeNumber,
      faceImage: faceImage,
      faceUploaded: faceUploaded,
      avatar: avatar,
      isActive: isActive,
      isStaff: isStaff,
      dateJoined: dateJoined,
      lastLogin: lastLogin,
      updatedAt: updatedAt,
      group: group,
    );
  }
}
