import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/shared/entities/entity.dart';
import 'user_entity.dart';

part 'list_user_response_entity.freezed.dart';

@freezed
abstract class ListUserResponseEntity with _$ListUserResponseEntity {
  const factory ListUserResponseEntity({
    String? status,
    String? message,
    List<UserEntity>? data,
    MetaEntity? meta,
  }) = _ListUserResponseEntity;
}
