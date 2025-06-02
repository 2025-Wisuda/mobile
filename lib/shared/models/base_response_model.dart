import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response_model.freezed.dart';
part 'base_response_model.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class BaseResponseModel<T> with _$BaseResponseModel<T> {
  const factory BaseResponseModel({
    String? status,
    String? message,
    T? data,
  }) = _BaseResponseModel<T>;

  factory BaseResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$BaseResponseModelFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(
    Object? Function(T value) toJsonT,
  ) => _$BaseResponseModelToJson(this as _BaseResponseModel<T>, toJsonT);
}
