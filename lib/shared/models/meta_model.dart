import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/shared/entities/entity.dart';

import 'package:mobile/shared/models/model.dart';

part 'meta_model.freezed.dart';
part 'meta_model.g.dart';
part 'meta_model_extension.dart';

@freezed
abstract class MetaModel with _$MetaModel {
  const factory MetaModel({
    @JsonKey(name: 'pagination') PaginationModel? pagination,
  }) = _MetaModel;

  factory MetaModel.fromJson(Map<String, dynamic> json) =>
      _$MetaModelFromJson(json);
}
