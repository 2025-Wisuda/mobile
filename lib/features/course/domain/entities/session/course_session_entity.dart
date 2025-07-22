import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/user/user.dart';

part 'course_session_entity.freezed.dart';

@freezed
abstract class CourseSessionEntity with _$CourseSessionEntity {
  const factory CourseSessionEntity({
    String? id,
    String? title,
    String? description,
    String? type,
    DateTime? date,
    String? startTime,
    String? endTime,
    String? status,
    List<UserEntity>? teachingAssistants,
    List<String>? teachingAssistantIds,
  }) = _CourseSessionEntity;
}
