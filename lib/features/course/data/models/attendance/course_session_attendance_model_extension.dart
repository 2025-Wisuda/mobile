part of 'course_session_attendance_model.dart';

extension CourseSessionAttendanceModelExtension
    on CourseSessionAttendanceModel {
  CourseSessionAttendanceEntity toEntity() {
    return CourseSessionAttendanceEntity(
      id: id,
      status: status,
      student: student?.toEntity(),
      faceRecognitionConfidence: faceRecognitionConfidence,
      markedAt: markedAt,
      markedBy: markedBy,
      manualAttendanceOverride: manualAttendanceOverride,
    );
  }
}
