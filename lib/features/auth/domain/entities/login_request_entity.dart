import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/auth/data/models/model.dart';

part 'login_request_entity.freezed.dart';
part 'login_request_entity_extension.dart';

@freezed
abstract class LoginRequestEntity with _$LoginRequestEntity {
  const factory LoginRequestEntity({
    required String username,
    required String password,
  }) = _LoginRequestEntity;
}
