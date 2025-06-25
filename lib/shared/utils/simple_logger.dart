import 'dart:convert';
import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';

import 'package:dio/dio.dart';

/// Simple logger utility using Flutter's built-in print with structured formatting
///
/// Features:
/// - 🎯 Easy to search with prefixes
/// - 📱 Uses Flutter's print (no external dependencies)
/// - 🎨 Emoji-based categorization
/// - 📊 Structured output for better readability
/// - 🔍 Searchable log tags
/// - ⚡ Lightweight and
///
/// Usage:
/// ```dart
/// SimpleLogger.info('User logged in successfully');
/// SimpleLogger.error('Failed to fetch data', error: exception);
/// SimpleLogger.http('POST /api/users', data: userData);
/// ```
class SimpleLogger {
  // Log levels
  static const String _tagInfo = '🔵 INFO';
  static const String _tagDebug = '🟢 DEBUG';
  static const String _tagWarning = '🟡 WARNING';
  static const String _tagError = '🔴 ERROR';
  static const String _tagSuccess = '✅ SUCCESS';
  static const String _tagHttp = '🌐 HTTP';
  static const String _tagNavigation = '🧭 NAV';
  static const String _tagAuth = '🔐 AUTH';
  static const String _tagDatabase = '💾 DB';
  static const String _tagCache = '🗂️ CACHE';
  static const String _tagPerformance = '⚡ PERF';

  // App configuration
  static bool _enabled = kDebugMode;
  static bool _showTimestamp = true;
  static bool _showLocation = false;

  /// Configure logger settings
  static void configure({
    bool? enabled,
    bool? showTimestamp,
    bool? showLocation,
  }) {
    _enabled = enabled ?? _enabled;
    _showTimestamp = showTimestamp ?? _showTimestamp;
    _showLocation = showLocation ?? _showLocation;
  }

  /// Disable all logging
  static void disable() => _enabled = false;

  /// Enable logging (debug mode only)
  static void enable() => _enabled = kDebugMode;

  // Core logging method
  static void _log(
    String tag,
    String message, {
    dynamic data,
    String? error,
    StackTrace? stackTrace,
    String? location,
  }) {
    if (!_enabled) return;

    final buffer = StringBuffer();

    // Timestamp
    if (_showTimestamp) {
      buffer.write('${_getTimestamp()} ');
    }

    // Tag
    buffer.write('$tag ');

    // Location (optional)
    if (_showLocation && location != null) {
      buffer.write('[$location] ');
    }

    // Message
    buffer.write(message);

    // Data (if provided)
    if (data != null) {
      buffer.write('\n📋 Data: ${_formatData(data)}');
    }

    // Error (if provided)
    if (error != null) {
      buffer.write('\n❌ Error: $error');
    }

    // Stack trace (if provided)
    if (stackTrace != null) {
      buffer.write('\n📍 Stack:\n$stackTrace');
    }

    // Use both print and developer.log for visibility
    final logMessage = buffer.toString();
    // debugPrint(logMessage);
    developer.log(
      logMessage,
      name: tag.replaceAll(RegExp(r'[^\w]'), ''),
    );
  }

  /// Info level logging - General information
  ///
  /// Example: `SimpleLogger.info('User session started')`
  static void info(String message, {dynamic data}) {
    _log(_tagInfo, message, data: data);
  }

  /// Debug level logging - Development information
  ///
  /// Example: `SimpleLogger.debug('Processing user data', data: userData)`
  static void debug(String message, {dynamic data}) {
    _log(_tagDebug, message, data: data);
  }

  /// Warning level logging - Potential issues
  ///
  /// Example: `SimpleLogger.warning('API response slow', data: {'time': 2000})`
  static void warning(String message, {dynamic data}) {
    _log(_tagWarning, message, data: data);
  }

  /// Error level logging - Error conditions
  ///
  /// Example: `SimpleLogger.error('Login failed', error: exception.toString())`
  static void error(String message, {dynamic error, StackTrace? stackTrace}) {
    _log(_tagError, message, error: error?.toString(), stackTrace: stackTrace);
  }

  /// Success level logging - Successful operations
  ///
  /// Example: `SimpleLogger.success('Data saved successfully')`
  static void success(String message, {dynamic data}) {
    _log(_tagSuccess, message, data: data);
  }

  /// HTTP request logging
  ///
  /// Example: `SimpleLogger.httpRequest('POST', '/api/users', body: userData)`
  static void httpRequest(
    String method,
    String url, {
    Map<String, dynamic>? headers,
    dynamic body,
  }) {
    final buffer = StringBuffer();
    buffer.write('📤 $method $url');

    // Show only important headers
    if (headers != null && headers.isNotEmpty) {
      final importantHeaders = <String, dynamic>{};
      for (var entry in headers.entries) {
        final key = entry.key.toLowerCase();
        if (key.contains('auth') ||
            key.contains('token') ||
            key.contains('content-type')) {
          if (key.contains('auth') || key.contains('token')) {
            // Mask sensitive tokens
            final value = entry.value.toString();
            if (value.length > 20) {
              importantHeaders[entry.key] =
                  '${value.substring(0, 10)}...${value.substring(value.length - 10)}';
            } else {
              importantHeaders[entry.key] = value;
            }
          } else {
            importantHeaders[entry.key] = entry.value;
          }
        }
      }
      if (importantHeaders.isNotEmpty) {
        buffer.write('\n📝 Headers: ${_formatData(importantHeaders)}');
      }
    }

    if (body != null) {
      // For large bodies, show summary
      final bodyStr = _formatData(body);
      if (bodyStr.length > 500) {
        final lines = bodyStr.split('\n');
        if (lines.length > 10) {
          buffer.write(
              '\n📦 Body: ${lines.take(10).join('\n')}\n... (${lines.length - 10} more lines)');
        } else {
          buffer
              .write('\n📦 Body: ${bodyStr.substring(0, 500)}... (truncated)');
        }
      } else {
        buffer.write('\n📦 Body: $bodyStr');
      }
    }

    _log(_tagHttp, buffer.toString());
  }

  /// HTTP response logging
  ///
  /// Example: `SimpleLogger.httpResponse(200, '/api/users', body: responseData)`
  static void httpResponse(
    int statusCode,
    String url, {
    Map<String, dynamic>? headers,
    dynamic body,
  }) {
    final isSuccess = statusCode >= 200 && statusCode < 300;
    final icon = isSuccess ? '✅' : '❌';
    final status = isSuccess ? 'SUCCESS' : 'ERROR';

    final buffer = StringBuffer();
    buffer.write('📥 $icon $status $statusCode $url');

    // Don't show all headers for responses, just important ones
    if (headers != null && headers.isNotEmpty) {
      final importantHeaders = <String, dynamic>{};
      for (var entry in headers.entries) {
        final key = entry.key.toLowerCase();
        if (key.contains('content-type') ||
            key.contains('cache') ||
            key.contains('rate-limit')) {
          importantHeaders[entry.key] = entry.value;
        }
      }
      if (importantHeaders.isNotEmpty) {
        buffer.write('\n📝 Headers: ${_formatData(importantHeaders)}');
      }
    }

    if (body != null) {
      // For large responses, show summary
      final bodyStr = _formatData(body);
      if (bodyStr.length > 800) {
        final lines = bodyStr.split('\n');
        if (lines.length > 15) {
          buffer.write(
              '\n📨 Response: ${lines.take(15).join('\n')}\n... (${lines.length - 15} more lines)');
        } else {
          buffer.write(
              '\n📨 Response: ${bodyStr.substring(0, 800)}... (truncated)');
        }
      } else {
        buffer.write('\n📨 Response: $bodyStr');
      }
    }

    _log(_tagHttp, buffer.toString());
  }

  /// Simple HTTP logging - just method, url, and status
  ///
  /// Example: `SimpleLogger.httpSimple('GET', '/api/users', 200)`
  static void httpSimple(String method, String url, [int? statusCode]) {
    if (statusCode != null) {
      final isSuccess = statusCode >= 200 && statusCode < 300;
      final icon = isSuccess ? '✅' : '❌';
      _log(_tagHttp, '$icon $method $url ($statusCode)');
    } else {
      _log(_tagHttp, '📤 $method $url');
    }
  }

  /// HTTP error logging
  ///
  /// Example: `SimpleLogger.httpError('POST', '/api/users', 500, 'Server Error')`
  static void httpError(
    String method,
    String url,
    int? statusCode,
    String errorMessage, {
    dynamic serverResponse,
  }) {
    final buffer = StringBuffer();
    buffer.write('❌ $method $url');
    if (statusCode != null) {
      buffer.write(' ($statusCode)');
    }
    buffer.write('\n💥 Error: $errorMessage');

    if (serverResponse != null) {
      buffer.write('\n🔴 Server Response: ${_formatData(serverResponse)}');
    }

    _log(_tagHttp, buffer.toString());
  }

  /// Navigation logging
  ///
  /// Example: `SimpleLogger.navigation('Navigated to ProfileScreen')`
  static void navigation(String message, {dynamic data}) {
    _log(_tagNavigation, message, data: data);
  }

  /// Authentication logging
  ///
  /// Example: `SimpleLogger.auth('User logged in', data: {'userId': 123})`
  static void auth(String message, {dynamic data}) {
    _log(_tagAuth, message, data: data);
  }

  /// Database operation logging
  ///
  /// Example: `SimpleLogger.database('User record updated', data: userData)`
  static void database(String message, {dynamic data}) {
    _log(_tagDatabase, message, data: data);
  }

  /// Cache operation logging
  ///
  /// Example: `SimpleLogger.cache('Cache hit for user_123')`
  static void cache(String message, {dynamic data}) {
    _log(_tagCache, message, data: data);
  }

  /// Performance logging with execution time
  ///
  /// Example:
  /// ```dart
  /// SimpleLogger.performance('Data processing', () {
  ///   processData();
  /// });
  /// ```
  static T performance<T>(String operation, T Function() action) {
    final stopwatch = Stopwatch()..start();
    try {
      final result = action();
      stopwatch.stop();
      _log(
        _tagPerformance,
        '$operation completed in ${stopwatch.elapsedMilliseconds}ms',
      );
      return result;
    } catch (e) {
      stopwatch.stop();
      _log(
        _tagPerformance,
        '$operation failed after ${stopwatch.elapsedMilliseconds}ms',
        error: e.toString(),
      );
      rethrow;
    }
  }

  /// Async performance logging
  ///
  /// Example:
  /// ```dart
  /// await SimpleLogger.performanceAsync('API call', () async {
  ///   return await apiService.getData();
  /// });
  /// ```
  static Future<T> performanceAsync<T>(
    String operation,
    Future<T> Function() action,
  ) async {
    final stopwatch = Stopwatch()..start();
    try {
      final result = await action();
      stopwatch.stop();
      _log(
        _tagPerformance,
        '$operation completed in ${stopwatch.elapsedMilliseconds}ms',
      );
      return result;
    } catch (e) {
      stopwatch.stop();
      _log(
        _tagPerformance,
        '$operation failed after ${stopwatch.elapsedMilliseconds}ms',
        error: e.toString(),
      );
      rethrow;
    }
  }

  /// Log a separator line for better readability
  ///
  /// Example: `SimpleLogger.separator('API CALLS')`
  static void separator([String? label]) {
    if (!_enabled) return;

    final line = '─' * 50;
    final message = label != null ? '─── $label $line' : line;
    developer.log(message, name: 'SEPARATOR');
  }

  /// Log app lifecycle events
  ///
  /// Example: `SimpleLogger.lifecycle('App resumed')`
  static void lifecycle(String message, {dynamic data}) {
    _log('🔄 LIFECYCLE', message, data: data);
  }

  /// Log widget lifecycle events
  ///
  /// Example: `SimpleLogger.widget('HomeScreen initState')`
  static void widget(String message, {dynamic data}) {
    _log('🎨 WIDGET', message, data: data);
  }

  /// Get current timestamp
  static String _getTimestamp() {
    final now = DateTime.now();
    return '${now.hour.toString().padLeft(2, '0')}:'
        '${now.minute.toString().padLeft(2, '0')}:'
        '${now.second.toString().padLeft(2, '0')}'
        '.${now.millisecond.toString().padLeft(3, '0')}';
  }

  /// Format data for logging
  static String _formatData(dynamic data) {
    if (data == null) return 'null';
    if (data is String) return data;

    // Handle FormData
    if (data is FormData) {
      final buffer = StringBuffer();
      buffer.write('FormData(\n');

      if (data.fields.isNotEmpty) {
        buffer.write('  📝 Fields:\n');
        for (var field in data.fields) {
          buffer.write('    ${field.key}: "${field.value}"\n');
        }
      }

      if (data.files.isNotEmpty) {
        buffer.write('  📎 Files:\n');
        for (var file in data.files) {
          final filename = file.value.filename ?? 'unnamed';
          buffer.write('    ${file.key}: $filename\n');
        }
      }

      buffer.write(')');
      return buffer.toString();
    }

    // Handle complex objects
    try {
      final jsonString = const JsonEncoder.withIndent('  ').convert(data);
      return jsonString;
    } catch (e) {
      return data.toString();
    }
  }
}

/// Extension methods for easier logging
extension SimpleLoggerExtensions on Object {
  /// Log this object as info
  ///
  /// Example: `userData.logInfo('User data loaded')`
  void logInfo(String message) {
    SimpleLogger.info(message, data: this);
  }

  /// Log this object as debug
  ///
  /// Example: `responseData.logDebug('API response')`
  void logDebug(String message) {
    SimpleLogger.debug(message, data: this);
  }

  /// Log this object as error
  ///
  /// Example: `exception.logError('Operation failed')`
  void logError(String message) {
    SimpleLogger.error(message, error: this);
  }
}

/// Convenient aliases for common logging scenarios
class Log {
  /// Quick info logging
  static void i(String message, [dynamic data]) =>
      SimpleLogger.info(message, data: data);

  /// Quick debug logging
  static void d(String message, [dynamic data]) =>
      SimpleLogger.debug(message, data: data);

  /// Quick warning logging
  static void w(String message, [dynamic data]) =>
      SimpleLogger.warning(message, data: data);

  /// Quick error logging
  static void e(String message, [dynamic error]) =>
      SimpleLogger.error(message, error: error);

  /// Quick success logging
  static void s(String message, [dynamic data]) =>
      SimpleLogger.success(message, data: data);

  /// Quick HTTP logging
  static void http(String message, [dynamic data]) =>
      SimpleLogger._log(SimpleLogger._tagHttp, message, data: data);

  /// Quick simple HTTP logging
  static void httpSimple(String method, String url, [int? statusCode]) =>
      SimpleLogger.httpSimple(method, url, statusCode);

  /// Quick navigation logging
  static void nav(String message, [dynamic data]) =>
      SimpleLogger.navigation(message, data: data);

  /// Quick auth logging
  static void auth(String message, [dynamic data]) =>
      SimpleLogger.auth(message, data: data);

  /// Quick performance logging
  static T perf<T>(String operation, T Function() action) =>
      SimpleLogger.performance(operation, action);

  /// Quick separator
  static void sep([String? label]) => SimpleLogger.separator(label);

  /// Quick function call logging
  static T call<T>(String name, T Function() function) =>
      SimpleLogger.performance(name, function);

  /// Quick async call logging
  static Future<T> async<T>(String name, Future<T> Function() function) =>
      SimpleLogger.performanceAsync(name, function);
}
