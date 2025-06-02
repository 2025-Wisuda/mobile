part of 'user_entity.dart';

extension UserEntityResponseExtension on UserEntity {}

extension UserResponseEntityExtension on UserResponseEntity {
  UserEntity toEntity() {
    return data ?? const UserEntity();
  }
}

extension UserEntityExtension on UserEntity {
  UserResponseEntity toResponseEntity() {
    return UserResponseEntity(
      status: 'success',
      message: 'Loaded from local',
      data: this,
      meta: null,
    );
  }

  String get idStr => id ?? '';
  String get usernameStr => username ?? '';
  String get emailStr => email ?? '';
  String get firstNameStr => firstName ?? '';
  String get lastNameStr => lastName ?? '';
  String get studentNumberStr => studentNumber ?? '';
  String get employeeNumberStr => employeeNumber ?? '';
  String get faceImageUrlStr => faceImageUrl ?? '';
  String get faceUploadedStr => faceUploaded == true ? 'Yes' : 'No';
  String get avatarUrlStr => avatarUrl ?? '';
  String get isActiveStr => isActive == true ? 'Active' : 'Inactive';
  String get isStaffStr => isStaff == true ? 'Yes' : 'No';
  String get dateJoinedStr => dateJoined?.toIso8601String() ?? '';
  String get lastLoginStr => lastLogin?.toIso8601String() ?? '';
  String get createdByStr => createdBy ?? '';
  String get createdAtStr => createdAt?.toIso8601String() ?? '';
  String get updatedByStr => updatedBy ?? '';
  String get updatedAtStr => updatedAt?.toIso8601String() ?? '';
  String get groupStr => group ?? '';

  String get fullNameStr => '$firstNameStr $lastNameStr'.trim();
  String get studentIdStr =>
      studentNumberStr.isNotEmpty ? studentNumberStr : 'N/A';
  String get employeeIdStr =>
      employeeNumberStr.isNotEmpty ? employeeNumberStr : 'N/A';
  String get avatarStr =>
      avatarUrlStr.isNotEmpty
          ? avatarUrlStr
          : 'assets/images/default_avatar.png';
  String get faceImageStr =>
      faceImageUrlStr.isNotEmpty
          ? faceImageUrlStr
          : 'assets/images/default_face_image.png';
  String get fullNameOrUsername =>
      firstNameStr.isNotEmpty || lastNameStr.isNotEmpty
          ? fullNameStr
          : usernameStr.isNotEmpty
          ? usernameStr
          : 'Unknown User';

  String get formattedDateJoined =>
      DateHelper.formatDayMonthYear(date: dateJoined);
}
