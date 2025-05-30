// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:mobile/core/entities/pagination_entity.dart';

part 'meta_entity.freezed.dart';

@freezed
abstract class MetaEntity with _$MetaEntity {
  const factory MetaEntity({PaginationEntity? pagination}) = _MetaEntity;
}
