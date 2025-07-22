part of 'course_session_attendance_entity.dart';

extension CourseSessionAttendanceEntityExtension
    on CourseSessionAttendanceEntity {
  String get markedAtFormatted {
    return DateHelper.formatDateTime(markedAt);
  }
}
