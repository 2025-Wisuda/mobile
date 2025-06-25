// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BaseListResponseModel<T> _$BaseListResponseModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _BaseListResponseModel<T>(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)?.map(fromJsonT).toList(),
      meta: json['meta'] == null
          ? null
          : MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BaseListResponseModelToJson<T>(
  _BaseListResponseModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.map(toJsonT).toList(),
      'meta': instance.meta,
    };
