// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_session_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CourseSessionModel _$CourseSessionModelFromJson(Map<String, dynamic> json) =>
    _CourseSessionModel(
      id: json['id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      status: json['status'] as String?,
      teachingAssistants: (json['teaching_assistants'] as List<dynamic>?)
          ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      teachingAssistantIds: (json['teaching_assistant_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$CourseSessionModelToJson(_CourseSessionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'type': instance.type,
      'date': instance.date?.toIso8601String(),
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'status': instance.status,
      'teaching_assistants': instance.teachingAssistants,
      'teaching_assistant_ids': instance.teachingAssistantIds,
    };
