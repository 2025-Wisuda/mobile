// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MetaModel _$MetaModelFromJson(Map<String, dynamic> json) => _MetaModel(
      pagination: json['pagination'] == null
          ? null
          : PaginationModel.fromJson(
              json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MetaModelToJson(_MetaModel instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
    };
