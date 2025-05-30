// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ListCourseModel _$ListCourseModelFromJson(Map<String, dynamic> json) =>
    _ListCourseModel(
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => CourseModel.fromJson(e as Map<String, dynamic>))
              .toList(),
      meta:
          json['meta'] == null
              ? null
              : MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ListCourseModelToJson(_ListCourseModel instance) =>
    <String, dynamic>{'data': instance.data, 'meta': instance.meta};
