// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:logger/logger.dart';

class LoggerUtil {
  static final Logger _logger = Logger(
    output: ConsoleOutput(),
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 5,
      lineLength: 120,
      colors: true,
      printEmojis: false,
      dateTimeFormat: DateTimeFormat.dateAndTime,
      excludeBox: const {},
      noBoxingByDefault: false,
      excludePaths: const [],
      levelColors: <Level, AnsiColor>{},
      levelEmojis: <Level, String>{},
    ),
  );

  static Logger get logger => _logger;

  static void logInfo(String message) {
    _logger.i(message);
  }

  static void logError(String message) {
    _logger.e(message);
  }

  static String prettyJson(dynamic data) {
    return const JsonEncoder.withIndent('  ').convert(data);
  }

  static void logDetail(String label, dynamic data) {
    final formattedData = _formatObject(data);
    _logger.i('$label: $formattedData');
  }

  static String _formatObject(dynamic data) {
    if (data is String) {
      return data;
    } else if (data is Map || data is Iterable) {
      return const JsonEncoder.withIndent('  ').convert(data);
    } else {
      return data.toString();
    }
  }
}
