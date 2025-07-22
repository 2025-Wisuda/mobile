import 'package:easy_localization/easy_localization.dart';
import 'package:timezone/timezone.dart' as tz;

/// A helper class for formatting dates and times.
///
/// This class provides utility methods to format dates and times
/// into various formats, including localized formats.
///
/// ### Features:
/// - Format dates into full or compact formats.
/// - Retrieve specific parts of the date (e.g., day, month).
/// - Support for localized formatting (e.g., Indonesian or English).
///
/// ### Example Usage:
/// ```dart
/// final fullDate = DateHelper.formatFullDate(DateTime.now());
/// final time = DateHelper.formatTime('14:30:00');
/// final compactDate = DateHelper.formatCompactWithTime(DateTime.now());
/// final isoDate = DateHelper.formatIsoDate(DateTime.now());
/// ```
class DateHelper {
  /// Formats a date into a full format (e.g., "Monday, 01 January 2023").
  ///
  /// - [date]: The date to format. Defaults to the current date if null.
  /// - [format]: The desired format. Defaults to `'EEEE, dd MMMM yyyy'`.
  static String formatFullDate({
    DateTime? date,
    String format = 'EEEE, dd MMMM yyyy',
  }) {
    return DateFormat(format, 'id').format(date ?? DateTime.now());
  }

  /// Retrieves only the day from the current date.
  ///
  /// - [format]: The desired format. Defaults to `'d'`.
  static String getDayOnly({String format = 'd'}) {
    return DateFormat(format, 'id').format(DateTime.now());
  }

  /// Retrieves the day and month from the current date.
  ///
  /// - [format]: The desired format. Defaults to `'d MMMM'`.
  static String getDayAndMonth({String format = 'd MMMM'}) {
    return DateFormat(format, 'id').format(DateTime.now());
  }

  /// Formats a date into a compact format with time (e.g., "1 Jan 2023 • 14:30").
  ///
  /// - [date]: The date to format. Returns an empty string if null.
  static String formatCompactWithTime(DateTime? date) {
    if (date == null) return '';
    return DateFormat('d MMM yyyy • HH:mm', 'id').format(date);
  }

  /// Retrieves the current day in English (e.g., "monday").
  ///
  /// The day is returned in lowercase.
  static String getCurrentDayInEnglish() {
    return DateFormat('EEEE', 'en_US').format(DateTime.now()).toLowerCase();
  }

  /// Formats a time string (e.g., "14:30:00") into a shorter format (e.g., "14:30").
  ///
  /// - [time]: The time string to format. Returns an empty string if null or invalid.
  static String formatTime(String? time) {
    if (time == null || time.isEmpty) return '';
    try {
      // Parse the full ISO 8601 string.
      final utcDateTime = DateTime.parse(time);

      // Get the Jakarta location (timezone data already initialized in main.dart).
      final jakarta = tz.getLocation('Asia/Jakarta');

      // Convert the DateTime to a timezone-aware DateTime in Jakarta's timezone.
      final jakartaDateTime = tz.TZDateTime.from(utcDateTime, jakarta);

      // Format the timezone-aware DateTime.
      return DateFormat.Hm().format(jakartaDateTime);
    } catch (_) {
      // Fallback for older, simple time-only strings (e.g., "14:30:00").
      try {
        final parsed = DateFormat("HH:mm:ss").parse(time);
        return DateFormat.Hm().format(parsed);
      } catch (e) {
        // If all parsing fails, return an empty string.
        return '';
      }
    }
  }

  /// Formats a date and time string into "20 Juni 2025 (14:30)" format.
  ///
  /// - [dateTime]: The date and time string to format. Returns an empty string if null or invalid.
  static String formatDateTime(String? dateTime) {
    if (dateTime == null || dateTime.isEmpty) return '';
    try {
      // Parse the full ISO 8601 string.
      final utcDateTime = DateTime.parse(dateTime);

      // Get the Jakarta location (timezone data already initialized in main.dart).
      final jakarta = tz.getLocation('Asia/Jakarta');

      // Convert the DateTime to a timezone-aware DateTime in Jakarta's timezone.
      final jakartaDateTime = tz.TZDateTime.from(utcDateTime, jakarta);

      // Format the date and time in Indonesian format.
      final dateFormat = DateFormat('d MMMM yyyy', 'id_ID');
      final timeFormat = DateFormat.Hm();

      final date = dateFormat.format(jakartaDateTime);
      final time = timeFormat.format(jakartaDateTime);

      return '$date ($time)';
    } catch (e) {
      // If parsing fails, return an empty string.
      return '';
    }
  }

  /// Formats a date into ISO format (e.g., "2023-01-01").
  ///
  /// - [date]: The date to format. Defaults to the current date if null.
  static String formatIsoDate({DateTime? date}) {
    return DateFormat('yyyy-MM-dd').format(date ?? DateTime.now());
  }

  /// Formats a date into "d MMMM yyyy" (e.g., "12 Januari 2024").
  ///
  /// - [date]: The date to format. Defaults to the current date if null.
  /// - [locale]: The locale to use for month name. Defaults to 'id'.
  ///
  /// ### Example:
  /// ```dart
  /// final result = DateHelper.formatDayMonthYear(DateTime(2024, 1, 12)); // "12 Januari 2024"
  /// ```
  static String formatDayMonthYear({DateTime? date}) {
    return DateFormat('d MMMM yyyy', 'id').format(date ?? DateTime.now());
  }

  /// Formats a date into "MMMM yyyy" format (e.g., "Januari 2024").
  ///
  /// - [date]: The date to format. Defaults to the current date if null.
  ///
  /// ### Example:
  /// ```dart
  /// final result = DateHelper.formatMonthYear(DateTime(2024, 1, 12)); // "Januari 2024"
  /// ```
  static String formatMonthYear({DateTime? date}) {
    return DateFormat('MMMM yyyy', 'id').format(date ?? DateTime.now());
  }

  /// Formats a date range into a compact format (e.g., "12/1 - 15/1", "From 12/1", "Until 15/1").
  ///
  /// - [startDate]: The start date of the range. Can be null.
  /// - [endDate]: The end date of the range. Can be null.
  ///
  /// Returns an empty string if both dates are null.
  ///
  /// ### Example:
  /// ```dart
  /// final range1 = DateHelper.formatDateRange(DateTime(2024, 1, 12), DateTime(2024, 1, 15)); // "12/1 - 15/1"
  /// final range2 = DateHelper.formatDateRange(DateTime(2024, 1, 12), null); // "From 12/1"
  /// final range3 = DateHelper.formatDateRange(null, DateTime(2024, 1, 15)); // "Until 15/1"
  /// ```
  static String formatDateRange(DateTime? startDate, DateTime? endDate) {
    if (startDate == null && endDate == null) return '';

    if (startDate != null && endDate != null) {
      final start = '${startDate.day}/${startDate.month}';
      final end = '${endDate.day}/${endDate.month}';
      return '$start - $end';
    } else if (startDate != null) {
      return 'From ${startDate.day}/${startDate.month}';
    } else if (endDate != null) {
      return 'Until ${endDate.day}/${endDate.month}';
    }

    return '';
  }

  /// Formats a date into a compact "d/M" format (e.g., "12/1").
  ///
  /// - [date]: The date to format. Returns an empty string if null.
  ///
  /// ### Example:
  /// ```dart
  /// final result = DateHelper.formatCompactDate(DateTime(2024, 1, 12)); // "12/1"
  /// ```
  static String formatCompactDate(DateTime? date) {
    if (date == null) return '';
    return '${date.day}/${date.month}';
  }

  /// Formats a date into "d/M/yyyy" format (e.g., "12/1/2024").
  ///
  /// - [date]: The date to format. Returns an empty string if null.
  ///
  /// ### Example:
  /// ```dart
  /// final result = DateHelper.formatDateWithYear(DateTime(2024, 1, 12)); // "12/1/2024"
  /// ```
  static String formatDateWithYear(DateTime? date) {
    if (date == null) return '';
    return '${date.day}/${date.month}/${date.year}';
  }

  /// Calculates duration between two time strings and formats it (e.g., "2h 30m", "1h", "45m").
  ///
  /// - [startTime]: Start time in "HH:mm" or "HH:mm:ss" format
  /// - [endTime]: End time in "HH:mm" or "HH:mm:ss" format
  /// - [defaultDuration]: Default duration to return if calculation fails (default: "1h")
  ///
  /// ### Example:
  /// ```dart
  /// final duration1 = DateHelper.calculateDuration("09:00", "11:30"); // "2h 30m"
  /// final duration2 = DateHelper.calculateDuration("09:00", "10:00"); // "1h"
  /// final duration3 = DateHelper.calculateDuration("09:00", "09:45"); // "45m"
  /// ```
  static String calculateDuration(String startTime, String endTime,
      {String defaultDuration = '1h'}) {
    try {
      final startParts = startTime.split(':');
      final endParts = endTime.split(':');

      final startMinutes =
          int.parse(startParts[0]) * 60 + int.parse(startParts[1]);
      final endMinutes = int.parse(endParts[0]) * 60 + int.parse(endParts[1]);

      final durationMinutes = endMinutes - startMinutes;
      final hours = durationMinutes ~/ 60;
      final minutes = durationMinutes % 60;

      if (hours > 0 && minutes > 0) {
        return '${hours}h ${minutes}m';
      } else if (hours > 0) {
        return '${hours}h';
      } else {
        return '${minutes}m';
      }
    } catch (_) {
      return defaultDuration;
    }
  }

  /// Formats a DateTime to ISO date string "yyyy-MM-dd" format.
  ///
  /// - [date]: The date to format.
  ///
  /// ### Example:
  /// ```dart
  /// final isoDate = DateHelper.formatIsoDateString(DateTime(2024, 1, 12)); // "2024-01-12"
  /// ```
  static String formatIsoDateString(DateTime date) {
    return "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}";
  }

  /// Formats a DateTime to time string "HH:mm" format.
  ///
  /// - [time]: The time to format.
  ///
  /// ### Example:
  /// ```dart
  /// final timeString = DateHelper.formatTimeString(DateTime(2024, 1, 12, 9, 30)); // "09:30"
  /// ```
  static String formatTimeString(DateTime time) {
    return "${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}";
  }

  /// Checks if a given date and optional end time is in the past.
  ///
  /// - [date]: The date to check.
  /// - [endTime]: Optional end time in "HH:mm" format.
  ///
  /// Returns true if the date (with end time if provided) is in the past.
  /// If endTime is provided, compares the full datetime.
  /// If endTime is null or empty, only compares the date.
  ///
  /// ### Example:
  /// ```dart
  /// final isPast1 = DateHelper.isPastDateTime(DateTime(2024, 1, 1), "10:30"); // true if past
  /// final isPast2 = DateHelper.isPastDateTime(DateTime(2024, 1, 1)); // true if date is before today
  /// ```
  static bool isPastDateTime(DateTime date, [String? endTime]) {
    final now = DateTime.now();

    if (endTime != null && endTime.isNotEmpty) {
      try {
        final endTimeParts = endTime.split(':');
        final endHour = int.parse(endTimeParts[0]);
        final endMinute = int.parse(endTimeParts[1]);

        final endDateTime = DateTime(
          date.year,
          date.month,
          date.day,
          endHour,
          endMinute,
        );

        return now.isAfter(endDateTime);
      } catch (e) {
        // Fallback to date-only comparison if time parsing fails
        final dateOnly = DateTime(date.year, date.month, date.day);
        final todayDate = DateTime(now.year, now.month, now.day);
        return dateOnly.isBefore(todayDate);
      }
    }

    // Compare date only
    final dateOnly = DateTime(date.year, date.month, date.day);
    final todayDate = DateTime(now.year, now.month, now.day);
    return dateOnly.isBefore(todayDate);
  }

  /// Checks if a given date string and optional end time is in the past.
  ///
  /// - [dateString]: The date string to check (e.g., "2024-01-01", "2024/01/01", "01-01-2024").
  /// - [endTime]: Optional end time in "HH:mm" format.
  ///
  /// Returns true if the date (with end time if provided) is in the past.
  /// Returns false if the date string cannot be parsed.
  ///
  /// ### Example:
  /// ```dart
  /// final isPast1 = DateHelper.isPastDateTimeFromString("2024-01-01", "10:30"); // true if past
  /// final isPast2 = DateHelper.isPastDateTimeFromString("2024-01-01"); // true if date is before today
  /// ```
  static bool isPastDateTimeFromString(String dateString, [String? endTime]) {
    try {
      final date = DateTime.parse(dateString);
      return isPastDateTime(date, endTime);
    } catch (e) {
      // If parsing fails, return false as we can't determine
      return false;
    }
  }

  /// Returns true if the given date is today.
  static bool isToday(DateTime? date) {
    if (date == null) return false;
    final now = DateTime.now();
    return date.year == now.year &&
        date.month == now.month &&
        date.day == now.day;
  }

  /// Formats a date into "d MMM" format (e.g., "12 Jan").
  ///
  /// - [date]: The date to format. Returns an empty string if null.
  ///
  /// ### Example:
  /// ```dart
  /// final result = DateHelper.formatDayMonth(DateTime(2024, 1, 12)); // "12 Jan"
  /// ```
  static String formatDayMonth({DateTime? date}) {
    if (date == null) return '';
    return DateFormat('d MMM', 'id').format(date);
  }
}
