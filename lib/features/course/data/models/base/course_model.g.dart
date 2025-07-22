// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CourseModel _$CourseModelFromJson(Map<String, dynamic> json) => _CourseModel(
      id: json['id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
      students: (json['students'] as List<dynamic>?)
          ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      teachingAssistants: (json['teaching_assistants'] as List<dynamic>?)
          ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      enrollKey: json['enroll_key'] as String?,
      totalStudents: (json['total_students'] as num?)?.toInt(),
      totalTeachingAssistants:
          (json['total_teaching_assistants'] as num?)?.toInt(),
      totalSessions: (json['total_sessions'] as num?)?.toInt(),
      hasEnrollment: json['has_enrollment'] as bool?,
      isEnrollmentOpen: json['is_enrollment_open'] as bool?,
      image: json['image'] as String?,
      recentSessions: (json['recent_sessions'] as List<dynamic>?)
          ?.map((e) => CourseSessionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isParticipant: json['is_participant'] as bool?,
      createdBy: json['created_by'] == null
          ? null
          : UserModel.fromJson(json['created_by'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CourseModelToJson(_CourseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
      'students': instance.students,
      'teaching_assistants': instance.teachingAssistants,
      'enroll_key': instance.enrollKey,
      'total_students': instance.totalStudents,
      'total_teaching_assistants': instance.totalTeachingAssistants,
      'total_sessions': instance.totalSessions,
      'has_enrollment': instance.hasEnrollment,
      'is_enrollment_open': instance.isEnrollmentOpen,
      'image': instance.image,
      'recent_sessions': instance.recentSessions,
      'is_participant': instance.isParticipant,
      'created_by': instance.createdBy,
    };
