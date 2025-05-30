// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:mobile/features/user/user.dart';

part 'course_session_entity.freezed.dart';

@freezed
abstract class CourseSessionEntity with _$CourseSessionEntity {
  const factory CourseSessionEntity({
    String? id,
    String? title,
    dynamic course,
    DateTime? sessionDate,
    String? startTime,
    String? endTime,
    String? status,
    UserEntity? createdBy,
    List<UserEntity>? teachingAssistants,
    String? approvalStatus,
    DateTime? approvalTime,
    UserEntity? approvedBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _CourseSessionEntity;
}
