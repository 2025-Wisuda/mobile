import 'package:mobile/features/course/domain/helpers/_internal_course_validation_helper.dart';

/// Public interface for Course helper methods and utilities
class CourseHelpers {
  // ===== PUBLIC VALIDATION API =====

  static String get timeRequiredError =>
      InternalCourseValidationHelper.timeRequiredError;
  static String get timeFormatError =>
      InternalCourseValidationHelper.timeFormatError;
  static String get timeOutsideLabHoursError =>
      InternalCourseValidationHelper.timeOutsideLabHoursError;
  static String get endTimeBeforeStartError =>
      InternalCourseValidationHelper.endTimeBeforeStartError;
  static String get dateOutsideRangeError =>
      InternalCourseValidationHelper.dateOutsideRangeError;
  static String get invalidDateError =>
      InternalCourseValidationHelper.invalidDateError;

  static bool isTimeWithinLabHours(String timeStr) =>
      InternalCourseValidationHelper.isTimeWithinLabHours(timeStr);

  static bool isDateWithinCourseRange(DateTime sessionDate,
          DateTime? courseStartDate, DateTime? courseEndDate) =>
      InternalCourseValidationHelper.isDateWithinCourseRange(
          sessionDate, courseStartDate, courseEndDate);
}
