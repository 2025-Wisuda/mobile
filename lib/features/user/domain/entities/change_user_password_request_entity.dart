// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_user_password_request_entity.freezed.dart';

@freezed
abstract class ChangeUserPasswordRequestEntity
    with _$ChangeUserPasswordRequestEntity {
  const factory ChangeUserPasswordRequestEntity({
    required String oldPassword,
    required String newPassword,
  }) = _ChangeUserPasswordRequestEntity;
}
