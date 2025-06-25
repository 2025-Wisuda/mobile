// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lab_schedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LabScheduleModel _$LabScheduleModelFromJson(Map<String, dynamic> json) =>
    _LabScheduleModel(
      id: json['id'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      type: json['type'] as String?,
      detail: json['detail'] as String?,
      createdBy: json['created_by'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$LabScheduleModelToJson(_LabScheduleModel instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.date?.toIso8601String() case final value?) 'date': value,
      if (instance.startTime case final value?) 'start_time': value,
      if (instance.endTime case final value?) 'end_time': value,
      if (instance.type case final value?) 'type': value,
      if (instance.detail case final value?) 'detail': value,
      if (instance.createdBy case final value?) 'created_by': value,
      if (instance.updatedAt?.toIso8601String() case final value?)
        'updated_at': value,
    };
