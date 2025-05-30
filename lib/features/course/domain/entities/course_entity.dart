// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:mobile/features/course/domain/entities/course_session_entity.dart';
import 'package:mobile/features/user/user.dart';

part 'course_entity.freezed.dart';

@freezed
abstract class CourseEntity with _$CourseEntity {
  const factory CourseEntity({
    String? id,
    String? image,
    String? title,
    String? description,
    DateTime? startDate,
    DateTime? endDate,
    List<UserEntity>? students,
    List<UserEntity>? teachingAssistants,
    List<CourseSessionEntity>? sessions,
    UserEntity? createdBy,
    String? enrollKey,
    int? totalStudents,
    int? totalTeachingAssistants,
    int? totalParticipants,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _CourseEntity;
}
