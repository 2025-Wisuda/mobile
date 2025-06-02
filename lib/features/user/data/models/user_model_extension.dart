part of 'user_model.dart';

extension UserModelExtension on UserModel {
  UserEntity toEntity() {
    return UserEntity(
      id: id,
      username: username,
      email: email,
      firstName: firstName,
      lastName: lastName,
      studentNumber: studentNumber,
      employeeNumber: employeeNumber,
      faceImageUrl: faceImageUrl,
      faceUploaded: faceUploaded,
      avatarUrl: avatarUrl,
      isActive: isActive,
      isStaff: isStaff,
      dateJoined: dateJoined,
      lastLogin: lastLogin,
      createdBy: createdBy,
      createdAt: createdAt,
      updatedBy: updatedBy,
      updatedAt: updatedAt,
      group: group,
    );
  }
}
