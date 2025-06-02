import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/shared/entities/entity.dart';

part 'meta_entity.freezed.dart';

@freezed
abstract class MetaEntity with _$MetaEntity {
  const factory MetaEntity({PaginationEntity? pagination}) = _MetaEntity;
}
