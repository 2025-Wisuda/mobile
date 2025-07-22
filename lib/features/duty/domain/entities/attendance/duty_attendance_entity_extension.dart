part of 'duty_attendance_entity.dart';

extension DutyAttendanceEntityExtension on DutyAttendanceEntity {
  bool get isOtpValidated => otpValidatedAt != null;

  bool get isPresent => status == 'Hadir' || status == 'Terlambat';

  bool get canClockIn => clockInTime == null;

  bool get canClockOut => clockInTime != null && clockOutTime == null;

  String get confidencePercentage => faceRecognitionConfidence != null
      ? '${(faceRecognitionConfidence! * 100).toStringAsFixed(1)}%'
      : '0%';

  bool get isManualOverride =>
      manualClockInOverride == true || manualClockOutOverride == true;

  String get assistantDisplayName {
    return laboratoryAssistant?.name ?? '';
  }

  String get assistantDisplayStudentNumber {
    return laboratoryAssistant?.studentNumber ?? '';
  }

  String? get assistantDisplayAvatar {
    return laboratoryAssistant?.avatar;
  }

  String get startTimeFormatted {
    return DateHelper.formatTime(startTime);
  }

  String get endTimeFormatted {
    return DateHelper.formatTime(endTime);
  }

  String get startToEndTimeFormatted {
    return '$startTimeFormatted - $endTimeFormatted';
  }

  String get clockInTimeFormatted {
    return DateHelper.formatTime(clockInTime);
  }

  String get clockOutTimeFormatted {
    return DateHelper.formatTime(clockOutTime);
  }
}
