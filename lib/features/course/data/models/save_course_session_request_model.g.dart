// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_course_session_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SaveCourseSessionRequestModel _$SaveCourseSessionRequestModelFromJson(
  Map<String, dynamic> json,
) => _SaveCourseSessionRequestModel(
  title: json['title'] as String?,
  course: json['course'],
  sessionDate:
      json['session_date'] == null
          ? null
          : DateTime.parse(json['session_date'] as String),
  startTime: json['start_time'] as String?,
  endTime: json['end_time'] as String?,
  status: json['status'] as String?,
  teachingAssistants:
      (json['teaching_assistants'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
);

Map<String, dynamic> _$SaveCourseSessionRequestModelToJson(
  _SaveCourseSessionRequestModel instance,
) => <String, dynamic>{
  'title': instance.title,
  'course': instance.course,
  'session_date': instance.sessionDate?.toIso8601String(),
  'start_time': instance.startTime,
  'end_time': instance.endTime,
  'status': instance.status,
  'teaching_assistants': instance.teachingAssistants,
};
