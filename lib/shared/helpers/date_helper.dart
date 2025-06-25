import 'package:easy_localization/easy_localization.dart';

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
      final parsed = DateFormat("HH:mm:ss").parse(time);
      return DateFormat.Hm().format(parsed);
    } catch (_) {
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
}
