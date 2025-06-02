// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_duty_schedule_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SaveDutyScheduleRequestModel _$SaveDutyScheduleRequestModelFromJson(
  Map<String, dynamic> json,
) => _SaveDutyScheduleRequestModel(
  teachingAssistantIds:
      (json['teaching_assistants'] as List<dynamic>?)
          ?.map((e) => e as String)
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
);

Map<String, dynamic> _$SaveDutyScheduleRequestModelToJson(
  _SaveDutyScheduleRequestModel instance,
) => <String, dynamic>{
  if (instance.teachingAssistantIds case final value?)
    'teaching_assistants': value,
  if (instance.days case final value?) 'days': value,
  if (instance.startDate?.toIso8601String() case final value?)
    'start_date': value,
  if (instance.endDate?.toIso8601String() case final value?) 'end_date': value,
  if (instance.startTime case final value?) 'start_time': value,
  if (instance.endTime case final value?) 'end_time': value,
};
