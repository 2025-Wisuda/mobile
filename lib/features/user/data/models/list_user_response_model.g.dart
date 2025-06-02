// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_user_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ListUserResponseModel _$ListUserResponseModelFromJson(
  Map<String, dynamic> json,
) => _ListUserResponseModel(
  status: json['status'] as String?,
  message: json['message'] as String?,
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  meta:
      json['meta'] == null
          ? null
          : MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ListUserResponseModelToJson(
  _ListUserResponseModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
  'meta': instance.meta,
};
