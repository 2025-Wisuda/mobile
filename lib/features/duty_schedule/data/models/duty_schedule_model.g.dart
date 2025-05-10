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

Map<String, dynamic> _$DutyScheduleModelToJson(_DutyScheduleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'teaching_assistants': instance.teachingAssistants,
      'days': instance.days,
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'is_active': instance.isActive,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
