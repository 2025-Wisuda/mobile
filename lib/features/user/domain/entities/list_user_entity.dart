import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/core/entities/pagination_entity.dart';

import 'user_entity.dart';

part 'list_user_entity.freezed.dart';

@freezed
abstract class ListUserEntity with _$ListUserEntity {
  const factory ListUserEntity({
    required List<UserEntity>? data,
    required PaginationEntity? pagination,
  }) = _ListUserEntity;
}
