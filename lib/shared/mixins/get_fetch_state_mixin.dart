import 'package:get/get.dart';

import 'package:mobile/shared/enums/fetch_state_enum.dart';

/// GetX-only Fetch State Mixin: fully reactive, easy to use, and auto-cleanup.
///
/// All main state variables use Rx/obs, with no classic getter/setter and no private (_underscore) fields.
/// You can access, update, and observe state directly from your controller or UI (Obx, ever, etc).
///
/// Example usage:
/// ```dart
/// class UserController extends GetxController with GetFetchStateMixin {
///   void fetchUserList() {
///     fetchStates['userList'] = FetchStateEnum.loading;
///     // ...
///     fetchStates['userList'] = FetchStateEnum.success;
///   }
/// }
/// // In UI:
/// Obx(() => Text(controller.fetchStates['userList']?.description ?? ''));
/// ```
mixin GetFetchStateMixin on GetxController {
  /// Reactive map for fetch states of different operations (keyed by operation name)
  final RxMap<String, FetchStateEnum> fetchStates =
      <String, FetchStateEnum>{}.obs;

  /// Reactive map for error messages of different operations (keyed by operation name)
  final RxMap<String, String> errorMessages = <String, String>{}.obs;

  /// Default key for operations that do not specify a key
  static const String defaultStateKey = 'default';

  /// Reset the fetch state and error message for a specific operation key to initial
  void resetOperationState(String key) {
    fetchStates[key] = FetchStateEnum.initial;
    errorMessages.remove(key);
  }

  /// Reset all fetch states and error messages to initial
  void resetAllStates() {
    final keys = fetchStates.keys.toList();
    for (final key in keys) {
      fetchStates[key] = FetchStateEnum.initial;
      errorMessages.remove(key);
    }
  }

  /// Get a snapshot of all current fetch states as a map
  Map<String, FetchStateEnum> getAllStates() => Map.from(fetchStates);

  /// Returns true if any operation is currently active (loading, refreshing, etc.)
  bool get hasAnyActiveOperation =>
      fetchStates.values.any((state) => state.isActive);

  /// Returns a list of keys for all currently active operations
  List<String> get activeOperationKeys => fetchStates.entries
      .where((e) => e.value.isActive)
      .map((e) => e.key)
      .toList();

  /// Automatically called when the controller is disposed. Resets all states.
  @override
  void onClose() {
    resetAllStates();
    super.onClose();
  }
}
