part of 'duty_attendance_model.dart';

extension DutyAttendanceModelExtension on DutyAttendanceModel {
  DutyAttendanceEntity toEntity() {
    return DutyAttendanceEntity(
      id: id,
      date: date,
      startTime: startTime,
      endTime: endTime,
      clockInTime: clockInTime,
      clockOutTime: clockOutTime,
      status: status,
      otpValidatedAt: otpValidatedAt,
      faceRecognitionConfidence: faceRecognitionConfidence,
      manualClockInOverride: manualClockInOverride,
      manualClockOutOverride: manualClockOutOverride,
      laboratoryAssistant: laboratoryAssistant?.toEntity(),
    );
  }
}
