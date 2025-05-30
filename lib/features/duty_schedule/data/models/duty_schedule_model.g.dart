// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'duty_schedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DutyScheduleModel _$DutyScheduleModelFromJson(Map<String, dynamic> json) =>
    _DutyScheduleModel(
      id: json['id'] as String?,
      teachingAssistants:
          (json['teaching_assistants'] as List<dynamic>?)
              ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
              .toList(),
      days: json['days'] as String?,
      startDate:
          json['start_date'] == null
              ? null
              : DateTime.parse(json['start_date'] as String),
      endDate:
          json['end_date'] == null
              ? null
              : DateTime.parse(json['end_date'] as String),
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      isActive: json['is_active'] as bool?,
      createdAt:
          json['created_at'] == null
              ? null
              : DateTime.parse(json['created_at'] as String),
      updatedAt:
          json['updated_at'] == null
              ? null
              : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$DutyScheduleModelToJson(
  _DutyScheduleModel instance,
) => <String, dynamic>{
  if (instance.id case final value?) 'id': value,
  if (instance.teachingAssistants case final value?)
    'teaching_assistants': value,
  if (instance.days case final value?) 'days': value,
  if (instance.startDate?.toIso8601String() case final value?)
    'start_date': value,
  if (instance.endDate?.toIso8601String() case final value?) 'end_date': value,
  if (instance.startTime case final value?) 'start_time': value,
  if (instance.endTime case final value?) 'end_time': value,
  if (instance.isActive case final value?) 'is_active': value,
  if (instance.createdAt?.toIso8601String() case final value?)
    'created_at': value,
  if (instance.updatedAt?.toIso8601String() case final value?)
    'updated_at': value,
};
