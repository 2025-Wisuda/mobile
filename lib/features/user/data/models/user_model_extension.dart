import 'package:mobile/features/user/data/models/model.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';

extension UserModelExtension on UserModel {
  UserEntity toEntity() {
    return UserEntity(
      id: id,
      password: password,
      lastLogin: lastLogin,
      isSuperuser: isSuperuser,
      username: username,
      studentId: studentId,
      employeeId: employeeId,
      firstName: firstName,
      lastName: lastName,
      email: email,
      isActive: isActive,
      isStaff: isStaff,
      dateJoined: dateJoined,
      faceImage: faceImage,
      faceUploaded: faceUploaded,
      avatar: avatar,
      group: group,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
