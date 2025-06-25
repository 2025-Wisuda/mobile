import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/course/data/models/model.dart';

part 'save_course_session_request_entity.freezed.dart';
part 'save_course_session_request_entity_extension.dart';

@freezed
abstract class SaveCourseSessionRequestEntity
    with _$SaveCourseSessionRequestEntity {
  const factory SaveCourseSessionRequestEntity({
    String? title,
    String? description,
    String? type,
    String? date,
    String? startTime,
    String? endTime,
    String? status,
    List<String>? teachingAssistants,
  }) = _SaveCourseSessionRequestEntity;
}
