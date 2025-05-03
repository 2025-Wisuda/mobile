import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_profile_request_entity.freezed.dart';

@freezed
abstract class UpdateUserProfileRequestEntity
    with _$UpdateUserProfileRequestEntity {
  const factory UpdateUserProfileRequestEntity({
    String? studentId,
    String? employeeId,
    File? faceImage,
    File? avatar,
    String? email,
  }) = _UpdateUserProfileRequestEntity;
}
