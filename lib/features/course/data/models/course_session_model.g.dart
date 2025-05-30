// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_session_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CourseSessionModel _$CourseSessionModelFromJson(Map<String, dynamic> json) =>
    _CourseSessionModel(
      id: json['id'] as String?,
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
              ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
              .toList(),
      createdBy:
          json['created_by'] == null
              ? null
              : UserModel.fromJson(json['created_by'] as Map<String, dynamic>),
      createdAt:
          json['created_at'] == null
              ? null
              : DateTime.parse(json['created_at'] as String),
      updatedAt:
          json['updated_at'] == null
              ? null
              : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$CourseSessionModelToJson(_CourseSessionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'course': instance.course,
      'session_date': instance.sessionDate?.toIso8601String(),
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'status': instance.status,
      'teaching_assistants': instance.teachingAssistants,
      'created_by': instance.createdBy,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
