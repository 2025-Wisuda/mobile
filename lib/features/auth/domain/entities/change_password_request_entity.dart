import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/auth/data/models/model.dart';

part 'change_password_request_entity.freezed.dart';
part 'change_password_request_entity_extension.dart';

@freezed
abstract class ChangePasswordRequestEntity with _$ChangePasswordRequestEntity {
  const factory ChangePasswordRequestEntity({
    required String oldPassword,
    required String newPassword,
  }) = _ChangePasswordRequestEntity;
}
