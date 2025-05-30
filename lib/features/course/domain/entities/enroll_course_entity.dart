// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'enroll_course_entity.freezed.dart';

@freezed
abstract class EnrollCourseEntity with _$EnrollCourseEntity {
  const factory EnrollCourseEntity({String? enrollKey}) = _EnrollCourseEntity;
}
