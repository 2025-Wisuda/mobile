// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_lab_schedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ListLabScheduleModel _$ListLabScheduleModelFromJson(
  Map<String, dynamic> json,
) => _ListLabScheduleModel(
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => LabScheduleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  pagination:
      json['meta'] == null
          ? null
          : PaginationModel.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ListLabScheduleModelToJson(
  _ListLabScheduleModel instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.pagination};
