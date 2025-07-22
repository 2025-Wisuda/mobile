// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_course_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SaveCourseRequestModel _$SaveCourseRequestModelFromJson(
        Map<String, dynamic> json) =>
    _SaveCourseRequestModel(
      title: json['title'] as String?,
      description: json['description'] as String?,
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      students: (json['student_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      teachingAssistants: (json['teaching_assistant_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      enrollKey: json['enroll_key'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$SaveCourseRequestModelToJson(
        _SaveCourseRequestModel instance) =>
    <String, dynamic>{
      if (instance.title case final value?) 'title': value,
      if (instance.description case final value?) 'description': value,
      if (instance.startDate case final value?) 'start_date': value,
      if (instance.endDate case final value?) 'end_date': value,
      if (instance.students case final value?) 'student_ids': value,
      if (instance.teachingAssistants case final value?)
        'teaching_assistant_ids': value,
      if (instance.enrollKey case final value?) 'enroll_key': value,
      if (instance.image case final value?) 'image': value,
    };
