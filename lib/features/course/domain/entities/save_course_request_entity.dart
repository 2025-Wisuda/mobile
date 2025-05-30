// Dart imports:
import 'dart:io';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_course_request_entity.freezed.dart';

@freezed
abstract class SaveCourseRequestEntity with _$SaveCourseRequestEntity {
  const factory SaveCourseRequestEntity({
    File? image,
    String? title,
    String? description,
    String? startDate,
    String? endDate,
    List<String>? students,
    List<String>? teachingAssistants,
    String? enrollKey,
  }) = _SaveCourseRequestEntity;
}
