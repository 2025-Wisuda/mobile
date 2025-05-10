import 'package:easy_localization/easy_localization.dart';

class DateHelper {
  static String getFormattedFullDate({
    DateTime? date,
    String format = 'EEEE, dd MMMM yyyy',
  }) {
    return DateFormat(format, 'id_ID').format(date ?? DateTime.now());
  }

  static String getDayOnly({String format = 'd'}) {
    return DateFormat(format, 'id_ID').format(DateTime.now());
  }

  static String getDayMonthOnly({String format = 'd MMMM'}) {
    return DateFormat(format, 'id_ID').format(DateTime.now());
  }

  static String formatCompactWithTime(DateTime? date) {
    if (date == null) return '-';
    return DateFormat('d MMM yyyy • HH:mm', 'id_ID').format(date);
  }

  static String getCurrentEnglishDay() {
    return DateFormat('EEEE', 'en_US').format(DateTime.now()).toLowerCase();
  }
}
