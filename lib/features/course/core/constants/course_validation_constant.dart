import 'package:mobile/shared/extensions/extension.dart';

class CourseValidationConstant {
  static const String labStartTime = '07:30';
  static const String labEndTime = '18:00';

  static const String timeFormat = 'HH:mm';

  static const int labStartMinutes = 7 * 60 + 30;
  static const int labEndMinutes = 18 * 60;

  static String get timeRequiredError =>
      'time'.courseValidationError('required');
  static String get timeFormatError =>
      'time'.courseValidationError('invalidFormat');
  static String get timeOutsideLabHoursError =>
      'time'.courseValidationError('outsideLabHours');
  static String get endTimeBeforeStartError =>
      'time'.courseValidationError('endBeforeStart');
  static String get dateOutsideRangeError =>
      'date'.courseValidationError('outsideRange');
  static String get invalidDateError => 'date'.courseValidationError('invalid');

  static int? timeToMinutes(String timeStr) {
    if (timeStr.trim().isEmpty) return null;

    try {
      final parts = timeStr.split(':');
      if (parts.length != 2) return null;

      final hours = int.parse(parts[0]);
      final minutes = int.parse(parts[1]);

      if (hours < 0 || hours > 23 || minutes < 0 || minutes > 59) {
        return null;
      }

      return hours * 60 + minutes;
    } catch (e) {
      return null;
    }
  }

  static bool isTimeWithinLabHours(String timeStr) {
    final minutes = timeToMinutes(timeStr);
    if (minutes == null) return false;

    return minutes >= labStartMinutes && minutes <= labEndMinutes;
  }

  static bool isStartTimeBeforeEndTime(String startTime, String endTime) {
    final startMinutes = timeToMinutes(startTime);
    final endMinutes = timeToMinutes(endTime);

    if (startMinutes == null || endMinutes == null) return false;

    return startMinutes < endMinutes;
  }

  static bool isDateWithinCourseRange(DateTime sessionDate,
      DateTime? courseStartDate, DateTime? courseEndDate) {
    if (courseStartDate == null || courseEndDate == null) {
      return true;
    }

    final sessionDateOnly =
        DateTime(sessionDate.year, sessionDate.month, sessionDate.day);
    final courseStartOnly = DateTime(
        courseStartDate.year, courseStartDate.month, courseStartDate.day);
    final courseEndOnly =
        DateTime(courseEndDate.year, courseEndDate.month, courseEndDate.day);

    return !sessionDateOnly.isBefore(courseStartOnly) &&
        !sessionDateOnly.isAfter(courseEndOnly);
  }
}
