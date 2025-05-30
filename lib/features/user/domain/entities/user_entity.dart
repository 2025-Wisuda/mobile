// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
abstract class UserEntity with _$UserEntity {
  const factory UserEntity({
    String? id,
    String? password,
    DateTime? lastLogin,
    bool? isSuperuser,
    String? username,
    String? studentId,
    String? employeeId,
    String? firstName,
    String? lastName,
    String? email,
    bool? isActive,
    bool? isStaff,
    DateTime? dateJoined,
    String? faceImage,
    bool? faceUploaded,
    String? avatar,
    String? group,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _UserEntity;
}
