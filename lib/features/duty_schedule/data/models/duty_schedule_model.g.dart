// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'duty_schedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DutyScheduleModel _$DutyScheduleModelFromJson(Map<String, dynamic> json) =>
    _DutyScheduleModel(
      avatar: json['avatar'] as String?,
      name: json['name'] as String?,
      studentNumber: json['student_number'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$DutyScheduleModelToJson(_DutyScheduleModel instance) =>
    <String, dynamic>{
      if (instance.avatar case final value?) 'avatar': value,
      if (instance.name case final value?) 'name': value,
      if (instance.studentNumber case final value?) 'student_number': value,
      if (instance.status case final value?) 'status': value,
    };
