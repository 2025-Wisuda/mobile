// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:mobile/core/entities/meta_entity.dart';
import 'package:mobile/features/course/domain/entities/course_entity.dart';

part 'list_course_entity.freezed.dart';

@freezed
abstract class ListCourseEntity with _$ListCourseEntity {
  const factory ListCourseEntity({List<CourseEntity>? data, MetaEntity? meta}) =
      _ListCourseEntity;
}
