import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/course/data/models/model.dart';

part 'save_course_request_entity.freezed.dart';
part 'save_course_request_entity_extension.dart';

@freezed
abstract class SaveCourseRequestEntity with _$SaveCourseRequestEntity {
  const factory SaveCourseRequestEntity({
    String? title,
    String? description,
    String? startDate,
    String? endDate,
    List<String>? students,
    List<String>? teachingAssistants,
    String? enrollKey,
    String? image,
  }) = _SaveCourseRequestEntity;
}
