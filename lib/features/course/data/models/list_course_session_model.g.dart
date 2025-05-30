// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_course_session_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ListCourseSessionModel _$ListCourseSessionModelFromJson(
  Map<String, dynamic> json,
) => _ListCourseSessionModel(
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => CourseSessionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  meta:
      json['meta'] == null
          ? null
          : MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ListCourseSessionModelToJson(
  _ListCourseSessionModel instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};
