// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_course_session_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SaveCourseSessionRequestModel _$SaveCourseSessionRequestModelFromJson(
        Map<String, dynamic> json) =>
    _SaveCourseSessionRequestModel(
      title: json['title'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      date: json['date'] as String?,
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      status: json['status'] as String?,
      teachingAssistants: (json['teaching_assistant_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SaveCourseSessionRequestModelToJson(
        _SaveCourseSessionRequestModel instance) =>
    <String, dynamic>{
      if (instance.title case final value?) 'title': value,
      if (instance.description case final value?) 'description': value,
      if (instance.type case final value?) 'type': value,
      if (instance.date case final value?) 'date': value,
      if (instance.startTime case final value?) 'start_time': value,
      if (instance.endTime case final value?) 'end_time': value,
      if (instance.status case final value?) 'status': value,
      if (instance.teachingAssistants case final value?)
        'teaching_assistant_ids': value,
    };
