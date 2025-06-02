import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/shared/entities/entity.dart';


part 'user_response_entity.freezed.dart';

@freezed
abstract class UserResponseEntity with _$UserResponseEntity {
  const factory UserResponseEntity({
    String? status,
    String? message,
    UserEntity? data,
    MetaEntity? meta,
  }) = _UserResponseEntity;
}
