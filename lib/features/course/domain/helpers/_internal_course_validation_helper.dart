import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/helpers/time_helper.dart';

class InternalCourseValidationHelper {
  static const String timeFormat = 'HH:mm';

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

  static bool isTimeWithinLabHours(String timeStr) {
    final time = TimeHelper.parseTimeString(timeStr);
    if (time == null) return false;
    return TimeHelper.isTimeWithinLabHours(time);
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
