import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/course/domain/entities/course_session_entity.dart';
import 'package:mobile/features/user/user.dart';

part 'course_entity.freezed.dart';

@freezed
abstract class CourseEntity with _$CourseEntity {
  const factory CourseEntity({
    String? id,
    String? title,
    String? description,
    DateTime? startDate,
    DateTime? endDate,
    List<UserEntity>? students,
    List<UserEntity>? teachingAssistants,
    String? enrollKey,
    int? totalStudents,
    int? totalTeachingAssistants,
    int? totalSessions,
    bool? hasEnrollment,
    bool? isEnrollmentOpen,
    String? image,
    bool? isParticipant,
    List<CourseSessionEntity>? recentSessions,
    UserEntity? createdBy,
  }) = _CourseEntity;
}
