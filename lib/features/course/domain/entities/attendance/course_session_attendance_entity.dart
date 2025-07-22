import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/duty/domain/entities/schedule/schedule.dart';
import 'package:mobile/shared/helpers/helper.dart';

part 'course_session_attendance_entity.freezed.dart';
part 'course_session_attendance_entity_extension.dart';

@freezed
abstract class CourseSessionAttendanceEntity
    with _$CourseSessionAttendanceEntity {
  const factory CourseSessionAttendanceEntity({
    String? id,
    DutyScheduleEntity? student,
    String? status,
    String? markedAt,
    String? markedBy,
    bool? manualAttendanceOverride,
    double? faceRecognitionConfidence,
  }) = _CourseSessionAttendanceEntity;
}
