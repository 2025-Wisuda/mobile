import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/shared/helpers/helper.dart';

part 'user_entity.freezed.dart';
part 'user_entity_extension.dart';

@freezed
abstract class UserEntity with _$UserEntity {
  const factory UserEntity({
    String? id,
    String? username,
    String? email,
    String? firstName,
    String? lastName,
    String? studentNumber,
    String? employeeNumber,
    String? faceImageUrl,
    bool? faceUploaded,
    String? avatarUrl,
    bool? isActive,
    bool? isStaff,
    DateTime? dateJoined,
    DateTime? lastLogin,
    String? createdBy,
    DateTime? createdAt,
    String? updatedBy,
    DateTime? updatedAt,
    String? group,
  }) = _UserEntity;
}
