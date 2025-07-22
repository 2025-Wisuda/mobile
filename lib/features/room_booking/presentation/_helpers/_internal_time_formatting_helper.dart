import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/helper.dart';

/// Internal helper for time formatting logic
class InternalTimeFormattingHelper {
  /// Formats time string with proper null/empty handling
  static String formatTime(String? time) {
    if (time == null || time.isEmpty) {
      return 'roomBooking'.message('notAvailable');
    }

    final formattedTime = DateHelper.formatTime(time);
    return formattedTime.isEmpty
        ? 'roomBooking'.message('notAvailable')
        : formattedTime;
  }
}
