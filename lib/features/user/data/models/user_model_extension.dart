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
