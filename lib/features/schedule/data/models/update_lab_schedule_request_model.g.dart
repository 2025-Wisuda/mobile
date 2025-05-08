// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_lab_schedule_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateLabScheduleRequestModel _$UpdateLabScheduleRequestModelFromJson(
  Map<String, dynamic> json,
) => _UpdateLabScheduleRequestModel(
  activityType: json['activity_type'] as String?,
  activityDescription: json['activity_description'] as String?,
  scheduleDate:
      json['schedule_date'] == null
          ? null
          : DateTime.parse(json['schedule_date'] as String),
  startTime: json['start_time'] as String?,
  endTime: json['end_time'] as String?,
);

Map<String, dynamic> _$UpdateLabScheduleRequestModelToJson(
  _UpdateLabScheduleRequestModel instance,
) => <String, dynamic>{
  if (instance.activityType case final value?) 'activity_type': value,
  if (instance.activityDescription case final value?)
    'activity_description': value,
  if (instance.scheduleDate?.toIso8601String() case final value?)
    'schedule_date': value,
  if (instance.startTime case final value?) 'start_time': value,
  if (instance.endTime case final value?) 'end_time': value,
};
