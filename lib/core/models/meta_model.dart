// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:mobile/core/models/pagination_model.dart';

part 'meta_model.freezed.dart';
part 'meta_model.g.dart';

@freezed
abstract class MetaModel with _$MetaModel {
  const factory MetaModel({
    @JsonKey(name: 'pagination') PaginationModel? pagination,
  }) = _MetaModel;

  factory MetaModel.fromJson(Map<String, dynamic> json) =>
      _$MetaModelFromJson(json);
}
