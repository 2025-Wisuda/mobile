// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_duty_schedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ListDutyScheduleModel _$ListDutyScheduleModelFromJson(
  Map<String, dynamic> json,
) => _ListDutyScheduleModel(
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => DutyScheduleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  meta:
      json['meta'] == null
          ? null
          : MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ListDutyScheduleModelToJson(
  _ListDutyScheduleModel instance,
) => <String, dynamic>{
  if (instance.data case final value?) 'data': value,
  if (instance.meta case final value?) 'meta': value,
};
