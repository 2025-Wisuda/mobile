import 'dart:async';

import 'package:get/get.dart';

/// GetX-only Debounce Mixin: fully reactive, easy to use, and auto-cleanup.
///
/// All main state variables use Rx/obs, with no classic getter/setter and no private (_underscore) fields.
/// You can access, update, and observe state directly from your controller or UI (Obx, ever, etc).
///
/// Example usage:
/// ```dart
/// class SearchController extends GetxController with GetDebounceMixin {
///   void onSearchChanged(String query) {
///     debounceAction('search', () => performSearch(query));
///   }
/// }
/// ```
mixin GetDebounceMixin on GetxController {
  /// Reactive map for active debounce timers (keyed by operation name)
  final RxMap<String, Timer?> debounceTimers = <String, Timer?>{}.obs;

  /// Default debounce duration (can be overridden in controller)
  Duration get defaultDebounceDuration => const Duration(milliseconds: 500);

  /// Debounce a synchronous action
  void debounceAction(
    String key,
    void Function() action, {
    Duration? duration,
  }) {
    debounceTimers[key]?.cancel();
    debounceTimers[key] = Timer(duration ?? defaultDebounceDuration, () {
      if (!isClosed) action();
      debounceTimers[key] = null;
    });
  }

  /// Debounce an async action
  void debounceAsyncAction(
    String key,
    Future<void> Function() action, {
    Duration? duration,
  }) {
    debounceAction(key, () async => await action(), duration: duration);
  }

  /// Cancel a specific debounce
  void cancelDebounce(String key) {
    debounceTimers[key]?.cancel();
    debounceTimers[key] = null;
  }

  /// Cancel all debounces
  void cancelAllDebounce() {
    for (final timer in debounceTimers.values) {
      timer?.cancel();
    }
    debounceTimers.clear();
  }

  /// Returns true if a debounce is active for a key
  bool isDebounceActive(String key) => debounceTimers[key] != null;

  /// Automatically called when the controller is disposed. Cancels all debounces.
  @override
  void onClose() {
    cancelAllDebounce();
    super.onClose();
  }
}
