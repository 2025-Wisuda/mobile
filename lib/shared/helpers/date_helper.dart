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
}
