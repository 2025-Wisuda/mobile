import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
abstract class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String? id,
    required String? password,
    required DateTime? lastLogin,
    required bool? isSuperuser,
    required String? username,
    required String? studentId,
    required String? employeeId,
    required String? firstName,
    required String? lastName,
    required String? email,
    required bool? isActive,
    required bool? isStaff,
    required DateTime? dateJoined,
    required String? faceImage,
    required bool? faceUploaded,
    required String? avatar,
    required String? group,
    required DateTime? createdAt,
    required DateTime? updatedAt,
  }) = _UserEntity;
}
