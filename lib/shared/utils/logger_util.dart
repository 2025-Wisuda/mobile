import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:logger/logger.dart';

class LoggerUtil {
  static final Logger _logger = Logger(
    level: kDebugMode ? Level.debug : Level.warning,
    printer: PrettyPrinter(
      methodCount: 0,
      lineLength: 120,
      colors: true,
      printEmojis: true,
      dateTimeFormat:
          (DateTime dateTime) =>
              '${dateTime.year.toString().padLeft(4, '0')}-'
              '${dateTime.month.toString().padLeft(2, '0')}-'
              '${dateTime.day.toString().padLeft(2, '0')} '
              '${dateTime.hour.toString().padLeft(2, '0')}:'
              '${dateTime.minute.toString().padLeft(2, '0')}:'
              '${dateTime.second.toString().padLeft(2, '0')}',
    ),
  );

  static void logInfo(String message) => _logger.i(message);
  static void logDebug(String message) => _logger.d(message);
  static void logWarning(String message) => _logger.w(message);
  static void logError(String message) => _logger.e(message);
  static void logFatal(String message) => _logger.f(message);
  static void logTrace(String message) => _logger.t(message);

  static void logDetail(String label, dynamic data) {
    _logger.i('$label:\n${_format(data)}');
  }

  static void logHttpRequest({
    required String method,
    required String url,
    Map<String, dynamic>? headers,
    dynamic body,
  }) {
    final buffer = StringBuffer();
    buffer.writeln('📤 [REQUEST] $method $url');
    if (headers != null) buffer.writeln('↪️ Headers:\n${_format(headers)}');
    if (body != null) buffer.writeln('📦 Body:\n${_format(body)}');
    _logger.i(buffer.toString().trim());
  }

  static void logHttpResponse({
    required int statusCode,
    required String url,
    Map<String, dynamic>? headers,
    dynamic body,
  }) {
    final icon = statusCode >= 200 && statusCode < 300 ? '✅' : '❌';
    final label = statusCode >= 200 && statusCode < 300 ? 'SUCCESS' : 'ERROR';
    final buffer = StringBuffer();
    buffer.writeln('$icon [$label] $statusCode - $url');
    if (headers != null) buffer.writeln('📩 Headers:\n${_format(headers)}');
    if (body != null) buffer.writeln('📨 Body:\n${_format(body)}');
    _logger.i(buffer.toString().trim());
  }

  static void logHttpError({
    required String url,
    required String error,
    int? statusCode,
    Map<String, dynamic>? headers,
    String? method,
  }) {
    final buffer = StringBuffer();
    buffer.writeln('❌ [HTTP ERROR] ${statusCode ?? '-'} - $url');
    if (method != null) buffer.writeln('Method: $method');
    buffer.writeln('Error: $error');
    if (headers != null) buffer.writeln('Headers:\n${_format(headers)}');
    _logger.e(buffer.toString().trim());
  }

  static void logExecutionTime(String label, Function action) {
    final sw = Stopwatch()..start();
    action();
    sw.stop();
    _logger.i('$label executed in ${sw.elapsedMilliseconds}ms');
  }

  static String _format(dynamic data) {
    if (data is String) return data;
    return const JsonEncoder.withIndent('  ').convert(data);
  }
}
