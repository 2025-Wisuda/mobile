// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CourseModel _$CourseModelFromJson(Map<String, dynamic> json) => _CourseModel(
  id: json['id'] as String?,
  image: json['image'] as String?,
  title: json['title'] as String?,
  description: json['description'] as String?,
  startDate:
      json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
  endDate:
      json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
  students:
      (json['students'] as List<dynamic>?)
          ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  teachingAssistants:
      (json['teaching_assistants'] as List<dynamic>?)
          ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  sessions:
      (json['sessions'] as List<dynamic>?)
          ?.map((e) => CourseSessionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  createdBy:
      json['created_by'] == null
          ? null
          : UserModel.fromJson(json['created_by'] as Map<String, dynamic>),
  enrollKey: json['enroll_key'] as String?,
  totalStudents: (json['total_students'] as num?)?.toInt(),
  totalTeachingAssistants: (json['total_teaching_assistants'] as num?)?.toInt(),
  totalParticipants: (json['total_participants'] as num?)?.toInt(),
  createdAt:
      json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
  updatedAt:
      json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$CourseModelToJson(_CourseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'title': instance.title,
      'description': instance.description,
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
      'students': instance.students,
      'teaching_assistants': instance.teachingAssistants,
      'sessions': instance.sessions,
      'created_by': instance.createdBy,
      'enroll_key': instance.enrollKey,
      'total_students': instance.totalStudents,
      'total_teaching_assistants': instance.totalTeachingAssistants,
      'total_participants': instance.totalParticipants,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
