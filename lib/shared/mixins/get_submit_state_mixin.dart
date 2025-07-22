// ignore_for_file: unintended_html_in_doc_comment

import 'package:get/get.dart';

import 'package:mobile/shared/enums/submit_state_enum.dart';

/// GetX-only Submit State Mixin: fully reactive, easy to use, and auto-cleanup.
///
/// All main state variables use Rx/obs, with no classic getter/setter and no private (_underscore) fields.
/// You can access, update, and observe state directly from your controller or UI (Obx, ever, etc).
///
/// Example usage:
/// ```dart
/// class LoginController extends GetxController with GetSubmitStateMixin {
///   void login() {
///     submitStates['login'] = SubmitStateEnum.submitting;
///     // ...
///     submitStates['login'] = SubmitStateEnum.success;
///   }
/// }
/// // In UI:
/// Obx(() => Text(controller.submitStates['login']?.description ?? ''));
/// ```
mixin GetSubmitStateMixin on GetxController {
  /// Reactive map for submit states of different operations (keyed by operation name)
  final RxMap<String, SubmitStateEnum> submitStates =
      <String, SubmitStateEnum>{}.obs;

  /// Reactive map for custom messages of different operations (keyed by operation name)
  final RxMap<String, String> customMessages = <String, String>{}.obs;

  /// Default key for operations that do not specify a key
  static const String defaultStateKey = 'default';

  /// Reset the submit state and custom message for a specific operation key to initial
  void resetOperationState(String key) {
    submitStates[key] = SubmitStateEnum.initial;
    customMessages.remove(key);
  }

  /// Reset all submit states and custom messages to initial
  void resetAllStates() {
    final keys = submitStates.keys.toList();
    for (final key in keys) {
      submitStates[key] = SubmitStateEnum.initial;
      customMessages.remove(key);
    }
  }

  /// Get a snapshot of all current submit states as a map
  Map<String, SubmitStateEnum> getAllStates() => Map.from(submitStates);

  /// Returns true if any operation is currently active (loading, submitting, etc.)
  bool get hasAnyActiveOperation =>
      submitStates.values.any((state) => state.isActive);

  /// Returns a list of keys for all currently active operations
  List<String> get activeOperationKeys => submitStates.entries
      .where((e) => e.value.isActive)
      .map((e) => e.key)
      .toList();

  /// Get reactive state for a specific operation key
  ///
  /// Returns an Rx<SubmitStateEnum> that can be observed.
  /// Parameters:
  /// - [key]: The operation key
  ///
  /// Returns an Rx<SubmitStateEnum> that can be observed.
  Rx<SubmitStateEnum> getReactiveState(String key) {
    return Rx<SubmitStateEnum>(submitStates[key] ?? SubmitStateEnum.initial);
  }

  /// Automatically called when the controller is disposed. Resets all states.
  @override
  void onClose() {
    resetAllStates();
    super.onClose();
  }
}
