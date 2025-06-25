import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

/// A mixin that provides debounce functionality for controllers.
///
/// This mixin follows the Single Responsibility Principle (SRP) by being
/// solely responsible for debouncing operations. It allows controllers to
/// delay the execution of functions until a specified duration has passed
/// without the function being called again.
///
/// **Use Cases:**
/// - Search input debouncing
/// - API call rate limiting
/// - Button click prevention
/// - Form validation delays
///
/// **Features:**
/// - Multiple debounce keys support
/// - Async function support
/// - Automatic cleanup on controller disposal
/// - Configurable durations per operation
///
/// **Example:**
/// ```dart
/// class SearchController extends GetxController with DebounceMixin {
///   void onSearchChanged(String query) {
///     executeWithDebounce('search', () {
///       performSearch(query);
///     });
///   }
/// }
/// ```
mixin DebounceMixin on GetxController {
  /// Internal map to store active debounce timers by key.
  /// Each key can have its own independent timer.
  final Map<String, Timer?> _debounceTimers = {};

  /// Default duration for debounce operations.
  ///
  /// This can be overridden in implementing classes to provide
  /// a different default duration. Individual operations can still
  /// specify their own duration when calling debounce methods.
  ///
  /// **Default:** 500 milliseconds
  Duration get defaultDebounceDuration => const Duration(milliseconds: 500);

  /// Executes a function with debounce mechanism
  ///
  /// [key] A unique identifier for this debounce operation. Multiple keys
  ///       allow for independent debounce timers within the same controller.
  /// [function] The VoidCallback function to execute after the debounce delay.
  /// [duration] Optional custom duration. If not provided, uses [defaultDebounceDuration].
  ///
  /// This method cancels any existing timer for the given key and starts a new
  /// timer. The function will only execute if the timer completes without being
  /// cancelled by another call with the same key.
  ///
  /// **Example:**
  /// ```dart
  /// class SearchController extends GetxController with DebounceMixin {
  ///   final TextEditingController searchController = TextEditingController();
  ///
  ///   void onSearchChanged(String query) {
  ///     executeWithDebounce('search', () {
  ///       if (query.isNotEmpty) {
  ///         performSearch(query);
  ///       }
  ///     }, duration: Duration(milliseconds: 300));
  ///   }
  /// }
  /// ```
  void executeWithDebounce(
    String key,
    VoidCallback function, {
    Duration? duration,
  }) {
    // Cancel previous timer if exists
    _debounceTimers[key]?.cancel();

    // Create new timer
    _debounceTimers[key] = Timer(duration ?? defaultDebounceDuration, () {
      if (!isClosed) {
        function();
      }
      _debounceTimers[key] = null;
    });
  }

  /// Executes an async function with debounce mechanism
  ///
  /// [key] A unique identifier for this debounce operation.
  /// [function] The async function to execute after the debounce delay.
  /// [duration] Optional custom duration. If not provided, uses [defaultDebounceDuration].
  ///
  /// This method is similar to [executeWithDebounce] but specifically designed
  /// for async operations like API calls. The async function will be properly
  /// awaited when executed.
  ///
  /// **Example:**
  /// ```dart
  /// class CourseSearchController extends GetxController with DebounceMixin {
  ///   void onSearchChanged(String query) {
  ///     executeAsyncWithDebounce('courseSearch', () async {
  ///       try {
  ///         setLoading();
  ///         final results = await courseService.searchCourses(query);
  ///         setSuccess(results);
  ///       } catch (e) {
  ///         setError('Search failed: ${e.toString()}');
  ///       }
  ///     }, duration: Duration(milliseconds: 500));
  ///   }
  /// }
  /// ```
  void executeAsyncWithDebounce(
    String key,
    Future<void> Function() function, {
    Duration? duration,
  }) {
    executeWithDebounce(key, () async => await function(), duration: duration);
  }

  /// Cancels a specific debounce timer
  ///
  /// [key] The unique identifier of the debounce operation to cancel.
  ///
  /// Use this method to manually cancel a pending debounce operation before
  /// it executes. This is useful when you need to immediately stop a specific
  /// debounced operation.
  ///
  /// **Example:**
  /// ```dart
  /// void onUserStoppedTyping() {
  ///   // Cancel any pending search operations
  ///   cancelDebounce('search');
  ///   // Immediately perform search
  ///   performSearch(currentQuery);
  /// }
  /// ```
  void cancelDebounce(String key) {
    _debounceTimers[key]?.cancel();
    _debounceTimers[key] = null;
  }

  /// Cancels all active debounce timers
  ///
  /// This method cancels all pending debounce operations across all keys.
  /// Use this when you need to immediately stop all debounced operations,
  /// typically during controller cleanup or major state changes.
  ///
  /// **Example:**
  /// ```dart
  /// void onUserLogout() {
  ///   // Cancel all pending operations before logout
  ///   cancelAllDebounce();
  ///   performLogout();
  /// }
  /// ```
  void cancelAllDebounce() {
    for (var timer in _debounceTimers.values) {
      timer?.cancel();
    }
    _debounceTimers.clear();
  }

  /// Checks if a debounce operation is currently active for the given key
  ///
  /// [key] The unique identifier to check for active debounce.
  ///
  /// Returns `true` if there's an active timer for the specified key,
  /// `false` otherwise. Use this to check the debounce state and adjust
  /// UI accordingly.
  ///
  /// **Example:**
  /// ```dart
  /// Widget buildSearchButton() {
  ///   return Obx(() => ElevatedButton(
  ///     onPressed: isDebounceActive('search') ? null : performSearch,
  ///     child: isDebounceActive('search')
  ///       ? CircularProgressIndicator()
  ///       : Text('Search'),
  ///   ));
  /// }
  /// ```
  bool isDebounceActive(String key) {
    return _debounceTimers[key] != null;
  }

  /// Lifecycle method called when the controller is disposed
  ///
  /// This method automatically cancels all active debounce timers when the
  /// controller is being disposed to prevent memory leaks and ensure proper
  /// cleanup. This is part of the automatic resource management provided by
  /// this mixin.
  ///
  /// **Note:** This method is called automatically by GetX framework.
  /// You don't need to call it manually unless you're overriding it in
  /// your controller (in which case, make sure to call super.onClose()).
  @override
  void onClose() {
    cancelAllDebounce();
    super.onClose();
  }
}
