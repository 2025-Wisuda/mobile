// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:mobile/core/entities/meta_entity.dart';
import 'package:mobile/features/course/domain/entities/course_session_entity.dart';

part 'list_course_session_entity.freezed.dart';

@freezed
abstract class ListCourseSessionEntity with _$ListCourseSessionEntity {
  const factory ListCourseSessionEntity({
    List<CourseSessionEntity>? data,
    MetaEntity? meta,
  }) = _ListCourseSessionEntity;
}
