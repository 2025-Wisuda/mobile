import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/shared/entities/entity.dart';


part 'base_list_response_entity.freezed.dart';

@freezed
abstract class BaseListResponseEntity<T> with _$BaseListResponseEntity<T> {
  const factory BaseListResponseEntity({
    String? status,
    String? message,
    List<T>? data,
    MetaEntity? meta,
  }) = _BaseListResponseEntity<T>;
}
