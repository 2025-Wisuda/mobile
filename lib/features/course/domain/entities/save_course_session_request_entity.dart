// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_course_session_request_entity.freezed.dart';

@freezed
abstract class SaveCourseSessionRequestEntity
    with _$SaveCourseSessionRequestEntity {
  const factory SaveCourseSessionRequestEntity({
    String? title,
    dynamic course,
    DateTime? sessionDate,
    String? startTime,
    String? endTime,
    String? status,
    List<String>? teachingAssistants,
  }) = _SaveCourseSessionRequestEntity;
}
