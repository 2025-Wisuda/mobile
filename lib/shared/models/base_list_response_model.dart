import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/models/meta_model.dart';

part 'base_list_response_model.freezed.dart';
part 'base_list_response_model.g.dart';
part 'base_list_response_model_extension.dart';

@Freezed(genericArgumentFactories: true)
abstract class BaseListResponseModel<T> with _$BaseListResponseModel<T> {
  const factory BaseListResponseModel({
    String? status,
    String? message,
    List<T>? data,
    MetaModel? meta,
  }) = _BaseListResponseModel<T>;

  factory BaseListResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$BaseListResponseModelFromJson(json, fromJsonT);

  @override
  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$BaseListResponseModelToJson(this as _BaseListResponseModel<T>, toJsonT);
}
