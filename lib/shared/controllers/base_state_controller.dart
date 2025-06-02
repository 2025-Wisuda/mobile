import 'package:get/get.dart';

import 'package:mobile/core/enums/enum.dart';

/// Base abstract controller that provides common state management functionality.
///
/// This controller follows the Single Responsibility Principle (SRP) and is only
/// responsible for managing application state. It provides a unified state management
/// system for both fetch and submit operations across all controllers.
///
/// **Key Features:**
/// - Reactive state management using GetX observables
/// - Separate state tracking for fetch and submit operations
/// - Convenient state checker methods
/// - Error message handling
/// - Thread-safe state updates
///
/// **State Types:**
/// - [FetchStateEnum]: For read operations (initial, loading, loaded, error, empty)
/// - [SubmitStateEnum]: For write operations (initial, loading, success, failure)
///
/// **Usage:**
/// ```dart
/// class MyController extends BaseStateController {
///   Future<void> loadData() async {
///     setLoading();
///     try {
///       // Perform data fetching
///       setSuccess();
///     } catch (e) {
///       setError(e.toString());
///     }
///   }
/// }
/// ```
///
/// **Why SRP?**
/// This controller has only one reason to change: when state management
/// requirements change. All other responsibilities (data fetching, form handling,
/// validation, etc.) are handled by separate controllers or mixins.
abstract class BaseStateController extends GetxController {
  /// Internal reactive state for fetch operations
  final _state = Rx<FetchStateEnum>(FetchStateEnum.initial);

  /// Internal reactive state for submit operations
  final _submitState = Rx<SubmitStateEnum>(SubmitStateEnum.initial);

  /// Internal reactive error message storage
  final _errorMessage = RxString('');

  /// Current fetch state (loading, loaded, error, etc.)
  ///
  /// Use this to determine the current state of data fetching operations.
  FetchStateEnum get state => _state.value;

  /// Current submit state (loading, success, failure, etc.)
  ///
  /// Use this to determine the current state of data submission operations.
  SubmitStateEnum get submitState => _submitState.value;

  /// Current error message, empty string if no error
  ///
  /// Contains the latest error message from either fetch or submit operations.
  String get errorMessage => _errorMessage.value;

  /// Returns true if a fetch operation is currently in progress
  ///
  /// Useful for showing loading indicators in the UI.
  bool get isLoading => _state.value == FetchStateEnum.loading;

  /// Returns true if a submit operation is currently in progress
  ///
  /// Useful for disabling submit buttons during form submission.
  bool get isSubmitting => _submitState.value == SubmitStateEnum.loading;

  /// Returns true if the last fetch operation completed successfully
  ///
  /// Indicates that data has been successfully loaded and is available.
  bool get isSuccess => _state.value == FetchStateEnum.loaded;

  /// Returns true if the last submit operation completed successfully
  ///
  /// Indicates that form submission or data update was successful.
  bool get isSubmitSuccess => _submitState.value == SubmitStateEnum.success;

  /// Returns true if the last fetch operation resulted in an error
  ///
  /// Check [errorMessage] for details about the error.
  bool get isError => _state.value == FetchStateEnum.error;

  /// Returns true if the last submit operation resulted in an error
  ///
  /// Check [errorMessage] for details about the error.
  bool get isSubmitError => _submitState.value == SubmitStateEnum.failure;

  /// Returns true if the last fetch operation returned no data
  ///
  /// Useful for showing empty state messages in the UI.
  bool get isEmpty => _state.value == FetchStateEnum.empty;

  /// Returns true if no fetch operation has been performed yet
  ///
  /// Useful for showing initial state or placeholder content.
  bool get isInitial => _state.value == FetchStateEnum.initial;

  /// Sets the fetch state to loading
  ///
  /// Call this at the beginning of any data fetching operation.
  /// This will trigger UI updates to show loading indicators.
  void setLoading() => _state.value = FetchStateEnum.loading;

  /// Sets the fetch state to success/loaded
  ///
  /// Call this when data fetching completes successfully.
  /// This will trigger UI updates to hide loading indicators and show data.
  void setSuccess() => _state.value = FetchStateEnum.loaded;

  /// Sets the fetch state to error and stores the error message
  ///
  /// Call this when data fetching fails. The [message] will be stored
  /// and can be displayed to the user.
  ///
  /// [message] The error message to display to the user
  void setError(String message) {
    _state.value = FetchStateEnum.error;
    _errorMessage.value = message;
  }

  /// Sets the fetch state to empty
  ///
  /// Call this when data fetching succeeds but returns no data.
  /// This is useful for showing "No data found" messages in the UI.
  void setEmpty() => _state.value = FetchStateEnum.empty;

  /// Resets the fetch state to initial
  ///
  /// Call this to clear any previous state and return to the initial state.
  /// Useful when navigating away from a page or resetting a form.
  void setInitial() => _state.value = FetchStateEnum.initial;

  /// Sets the submit state to loading
  ///
  /// Call this at the beginning of any data submission operation.
  /// This will trigger UI updates to show loading indicators and disable submit buttons.
  void setSubmitLoading() => _submitState.value = SubmitStateEnum.loading;

  /// Sets the submit state to success
  ///
  /// Call this when data submission completes successfully.
  /// This will trigger UI updates to hide loading indicators and show success feedback.
  void setSubmitSuccess() => _submitState.value = SubmitStateEnum.success;

  /// Sets the submit state to error and stores the error message
  ///
  /// Call this when data submission fails. The [message] will be stored
  /// and can be displayed to the user.
  ///
  /// [message] The error message to display to the user
  void setSubmitError(String message) {
    _submitState.value = SubmitStateEnum.failure;
    _errorMessage.value = message;
  }

  /// Resets the submit state to initial
  ///
  /// Call this to clear any previous submit state and return to the initial state.
  /// Useful when preparing for a new form submission.
  void setSubmitInitial() => _submitState.value = SubmitStateEnum.initial;

  /// Resets both fetch and submit states to their initial values
  ///
  /// This method clears all state information including error messages.
  /// Useful when completely resetting a controller or navigating to a new page.
  void resetState() {
    _state.value = FetchStateEnum.initial;
    _submitState.value = SubmitStateEnum.initial;
    _errorMessage.value = '';
  }

  /// Clears the current error message without changing state
  ///
  /// Useful for dismissing error messages while keeping the current state.
  /// The error state will remain, but the message will be cleared.
  void clearError() => _errorMessage.value = '';
}
