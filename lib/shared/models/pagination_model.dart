import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/shared/entities/entity.dart';

part 'pagination_model.freezed.dart';
part 'pagination_model.g.dart';
part 'pagination_model_extension.dart';

@freezed
abstract class PaginationModel with _$PaginationModel {
  const factory PaginationModel({
    @JsonKey(name: 'next') String? next,
    @JsonKey(name: 'previous') String? previous,
    @JsonKey(name: 'total_items') int? totalItems,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'page_size') int? pageSize,
  }) = _PaginationModel;

  factory PaginationModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationModelFromJson(json);
}
