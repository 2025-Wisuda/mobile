// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ListUserModel _$ListUserModelFromJson(Map<String, dynamic> json) =>
    _ListUserModel(
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
              .toList(),
      meta:
          json['meta'] == null
              ? null
              : MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ListUserModelToJson(_ListUserModel instance) =>
    <String, dynamic>{'data': instance.data, 'meta': instance.meta};
