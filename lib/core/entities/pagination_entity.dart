// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_entity.freezed.dart';

@freezed
abstract class PaginationEntity with _$PaginationEntity {
  const factory PaginationEntity({
    required String? next,
    required String? previous,
    required int? totalItems,
    required int? totalPages,
    required int? currentPage,
    required int? pageSize,
  }) = _PaginationEntity;
}
