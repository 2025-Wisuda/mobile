import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response_entity.freezed.dart';

@freezed
abstract class BaseResponseEntity<T> with _$BaseResponseEntity<T> {
  const factory BaseResponseEntity({
    String? status,
    String? message,
    T? data,
  }) = _BaseResponseEntity<T>;
}
