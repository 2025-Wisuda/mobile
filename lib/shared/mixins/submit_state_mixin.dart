// ignore_for_file: unintended_html_in_doc_comment

import 'package:flutter/material.dart';

import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

import 'package:mobile/shared/enums/submit_state_enum.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/network_helper.dart';

/// A mixin that provides centralized submit state management with configurable keys.
/// This allows different forms or operations to maintain separate states within the same controller.
///
/// Example usage:
/// ```dart
/// class LoginController extends GetxController with SubmitStateMixin {
///   void login() {
///     setSubmitState('login', SubmitStateEnum.submitting);
///     // Perform login logic
///     setSubmitState('login', SubmitStateEnum.success);
///   }
///
///   void register() {
///     setSubmitState('register', SubmitStateEnum.submitting);
///     // Perform register logic
///     setSubmitState('register', SubmitStateEnum.success);
///   }
/// }
/// ```
mixin SubmitStateMixin on GetxController {
  /// Map to store submit states for different operations using configurable keys
  final RxMap<String, SubmitStateEnum> _submitStates =
      <String, SubmitStateEnum>{}.obs;

  /// Map to store custom messages for different operations
  final RxMap<String, String> _customMessages = <String, String>{}.obs;

  /// Default state key for operations that don't specify a key
  static const String defaultStateKey = 'default';

  /// Sets the submit state for a specific operation key.
  ///
  /// Parameters:
  /// - [key]: The operation key (e.g., 'login', 'register', 'forgot_password')
  /// - [state]: The new state to set
  ///
  /// Example:
  /// ```dart
  /// setSubmitState('login', SubmitStateEnum.submitting);
  /// ```
  void setSubmitState(String key, SubmitStateEnum state) {
    _submitStates[key] = state;
  }

  /// Gets the current submit state for a specific operation key.
  ///
  /// Parameters:
  /// - [key]: The operation key
  ///
  /// Returns the current state or [SubmitStateEnum.initial] if not set.
  SubmitStateEnum getSubmitState(String key) {
    return _submitStates[key] ?? SubmitStateEnum.initial;
  }

  /// Gets the current submit state for the default operation.
  ///
  /// Returns the current state or [SubmitStateEnum.initial] if not set.
  SubmitStateEnum get defaultSubmitState => getSubmitState(defaultStateKey);

  /// Sets the submit state for the default operation.
  ///
  /// Parameters:
  /// - [state]: The new state to set
  void setDefaultSubmitState(SubmitStateEnum state) {
    setSubmitState(defaultStateKey, state);
  }

  /// Checks if a specific operation is in an active state (loading, submitting, etc.).
  ///
  /// Parameters:
  /// - [key]: The operation key
  ///
  /// Returns true if the operation is active, false otherwise.
  bool isOperationActive(String key) {
    return getSubmitState(key).isActive;
  }

  /// Checks if the default operation is in an active state.
  ///
  /// Returns true if the default operation is active, false otherwise.
  bool get isDefaultOperationActive => isOperationActive(defaultStateKey);

  /// Checks if a specific operation is completed (success, failure, cancelled, timeout).
  ///
  /// Parameters:
  /// - [key]: The operation key
  ///
  /// Returns true if the operation is completed, false otherwise.
  bool isOperationCompleted(String key) {
    return getSubmitState(key).isCompleted;
  }

  /// Checks if a specific operation is in an error state.
  ///
  /// Parameters:
  /// - [key]: The operation key
  ///
  /// Returns true if the operation has an error, false otherwise.
  bool isOperationError(String key) {
    return getSubmitState(key).isError;
  }

  /// Checks if a specific operation can accept user interaction.
  ///
  /// Parameters:
  /// - [key]: The operation key
  ///
  /// Returns true if the operation can accept interaction, false otherwise.
  bool canOperationInteract(String key) {
    return getSubmitState(key).canInteract;
  }

  /// Checks if a specific operation is loading or submitting.
  ///
  /// Parameters:
  /// - [key]: The operation key
  ///
  /// Returns true if the operation is loading or submitting, false otherwise.
  bool isOperationLoadingOrSubmitting(String key) {
    return getSubmitState(key).isLoadingOrSubmitting;
  }

  /// Gets the description of the current state for a specific operation.
  ///
  /// Parameters:
  /// - [key]: The operation key
  ///
  /// Returns a human-readable description of the current state or custom message if set.
  String getOperationStateDescription(String key) {
    final customMessage = _customMessages[key];
    return customMessage ?? getSubmitState(key).description;
  }

  /// Sets a custom message for a specific operation key.
  ///
  /// Parameters:
  /// - [key]: The operation key
  /// - [message]: The custom message to set
  void setCustomMessage(String key, String message) {
    _customMessages[key] = message;
  }

  /// Clears the custom message for a specific operation key.
  ///
  /// Parameters:
  /// - [key]: The operation key
  void clearCustomMessage(String key) {
    _customMessages.remove(key);
  }

  /// Resets the submit state for a specific operation to initial.
  ///
  /// Parameters:
  /// - [key]: The operation key
  void resetOperationState(String key) {
    setSubmitState(key, SubmitStateEnum.initial);
  }

  /// Resets all submit states to initial.
  void resetAllStates() {
    final keys = _submitStates.keys.toList();
    for (String key in keys) {
      setSubmitState(key, SubmitStateEnum.initial);
    }
  }

  /// Gets all current submit states as a map.
  ///
  /// Returns a map of operation keys to their current states.
  Map<String, SubmitStateEnum> getAllStates() {
    return Map.from(_submitStates);
  }

  /// Checks if any operation is currently active.
  ///
  /// Returns true if any operation is in an active state, false otherwise.
  bool get hasAnyActiveOperation {
    return _submitStates.values.any((state) => state.isActive);
  }

  /// Gets all active operation keys.
  ///
  /// Returns a list of keys for operations that are currently active.
  List<String> get activeOperationKeys {
    return _submitStates.entries
        .where((entry) => entry.value.isActive)
        .map((entry) => entry.key)
        .toList();
  }

  /// Executes an operation with automatic state management.
  ///
  /// This method handles setting the state to submitting, executing the operation,
  /// and setting the appropriate final state based on success or failure.
  ///
  /// Parameters:
  /// - [key]: The operation key
  /// - [operation]: The async operation to execute
  /// - [onSuccess]: Optional callback for successful completion
  /// - [onError]: Optional callback for error handling
  ///
  /// Example:
  /// ```dart
  /// await executeWithStateManagement(
  ///   'login',
  ///   () => _loginUsecase.execute(data: loginRequest),
  ///   onSuccess: () => Get.offAllNamed('/home'),
  ///   onError: (error) => setFieldError('general', error.toString()),
  /// );
  /// ```
  Future<void> executeWithStateManagement(
    String key,
    Future<void> Function() operation, {
    VoidCallback? onSuccess,
    void Function(dynamic error)? onError,
  }) async {
    try {
      setSubmitState(key, SubmitStateEnum.submitting);
      await operation();
      setSubmitState(key, SubmitStateEnum.success);
      onSuccess?.call();
    } catch (error) {
      setSubmitState(key, SubmitStateEnum.failure);
      onError?.call(error);
    }
  }

  /// Executes a loading operation with automatic state management.
  ///
  /// Similar to [executeWithStateManagement] but uses loading state instead of submitting.
  ///
  /// Parameters:
  /// - [key]: The operation key
  /// - [operation]: The async operation to execute
  /// - [onSuccess]: Optional callback for successful completion
  /// - [onError]: Optional callback for error handling
  Future<void> executeLoadingWithStateManagement(
    String key,
    Future<void> Function() operation, {
    VoidCallback? onSuccess,
    void Function(dynamic error)? onError,
  }) async {
    try {
      setSubmitState(key, SubmitStateEnum.loading);
      await operation();
      setSubmitState(key, SubmitStateEnum.success);
      onSuccess?.call();
    } catch (error) {
      setSubmitState(key, SubmitStateEnum.failure);
      onError?.call(error);
    }
  }

  /// Creates a reactive getter for a specific operation state.
  ///
  /// This is useful for UI components that need to reactively update based on state changes.
  ///
  /// Parameters:
  /// - [key]: The operation key
  ///
  /// Returns an Rx<SubmitStateEnum> that can be observed.
  Rx<SubmitStateEnum> getReactiveState(String key) {
    return Rx<SubmitStateEnum>(getSubmitState(key));
  }

  /// Simple template method for the exact pattern you want.
  ///
  /// This provides ONLY the state management pattern - no auto-magic features.
  /// You handle validation, snackbars, token storage, navigation yourself.
  ///
  /// Usage Pattern:
  /// ```dart
  /// Future<void> login(BuildContext context) async {
  ///   await executeWithPattern(
  ///     'login',
  ///     (state) async {
  ///       state.value = SubmitStateEnum.loading;
  ///       final result = await loginUseCase.execute(entity);
  ///       result.fold(
  ///         (failure) {
  ///           state.value = SubmitStateEnum.failure;
  ///           context.showErrorSnackbar(failure.message);
  ///         },
  ///         (response) async {
  ///           state.value = SubmitStateEnum.success;
  ///           // Your custom logic here
  ///           await Session.saveAccessToken(response.accessToken!);
  ///           clearForm();
  ///           Get.offAllNamed('/home');
  ///         },
  ///       );
  ///     },
  ///   );
  /// }
  /// ```
  Future<void> executeWithPattern(
    String key,
    Future<void> Function(Rx<SubmitStateEnum> state) operation,
  ) async {
    final state = getReactiveState(key);
    await operation(state);
  }

  /// Executes operation with parameter support - reusable template without auto UI logic.
  ///
  /// This method provides parameter support for entities while keeping UI logic customizable.
  /// No auto snackbar, navigation, or token storage - just clean state management.
  ///
  /// Parameters:
  /// - [key]: The operation key for state tracking
  /// - [entity]: The request entity/parameter to pass to the operation
  /// - [operation]: Function that takes entity and returns Either<Failure, Response>
  /// - [onSuccess]: Custom success handler (receives response)
  /// - [onFailure]: Custom failure handler (receives failure)
  /// - [useLoadingState]: Whether to use loading state (default: true)
  ///
  /// Example:
  /// ```dart
  /// await executeOperation(
  ///   'login',
  ///   loginRequest,
  ///   (entity) => _loginUsecase.execute(data: entity),
  ///   onSuccess: (response) async {
  ///     // Custom success logic
  ///     await Session.saveAccessToken(response.accessToken!);
  ///     clearForm();
  ///     Get.offAllNamed('/home');
  ///   },
  ///   onFailure: (failure) {
  ///     // Custom error logic
  ///     context.showFailureSnackbar(failure);
  ///   },
  /// );
  /// ```
  Future<void> executeOperation<TEntity, TResponse>(
    String key,
    TEntity entity,
    Future<Either<Failure, TResponse>> Function(TEntity entity) operation, {
    Future<void> Function(TResponse response)? onSuccess,
    void Function(Failure failure)? onFailure,
    bool useLoadingState = true,
  }) async {
    setSubmitState(key,
        useLoadingState ? SubmitStateEnum.loading : SubmitStateEnum.submitting);

    try {
      final result = await operation(entity);

      result.fold(
        (failure) {
          setSubmitState(key, SubmitStateEnum.failure);
          onFailure?.call(failure);
        },
        (response) async {
          setSubmitState(key, SubmitStateEnum.success);
          await onSuccess?.call(response);
        },
      );
    } catch (error) {
      setSubmitState(key, SubmitStateEnum.failure);
      if (onFailure != null) {
        final genericFailure = GenericFailure(error.toString());
        onFailure.call(genericFailure);
      }
    }
  }

  /// Executes operation with automatic network handling.
  ///
  /// This method provides network connectivity check and clean state management without UI logic.
  /// The UI layer should handle all user feedback (snackbars, navigation, etc.).
  ///
  /// Parameters:
  /// - [key]: The operation key for state tracking
  /// - [entity]: The request entity/parameter to pass to the operation
  /// - [operation]: Function that takes entity and returns Either<Failure, Response>
  /// - [onSuccess]: Custom success handler (receives response)
  /// - [onFailure]: Custom failure handler (receives failure)
  /// - [useLoadingState]: Whether to use loading state (default: true)
  ///
  /// Example:
  /// ```dart
  /// await executeSubmitWithNetwork(
  ///   'login',
  ///   loginRequest,
  ///   (entity) => _loginUsecase.execute(data: entity),
  ///   onSuccess: (response) async {
  ///     await Session.saveAccessToken(response.accessToken!);
  ///     cleanForm();
  ///   },
  ///   onFailure: (failure) {
  ///     // UI layer handles error display
  ///   },
  /// );
  /// ```
  Future<void> executeSubmitWithNetwork<TEntity, TResponse>(
    String key,
    TEntity entity,
    Future<Either<Failure, TResponse>> Function(TEntity entity) operation, {
    Future<void> Function(TResponse response)? onSuccess,
    void Function(Failure failure)? onFailure,
    bool useLoadingState = true,
  }) async {
    try {
      final hasConnection = await NetworkHelper.hasInternetConnection();
      if (!hasConnection) {
        final noInternetFailure =
            NoConnectionFailure('common'.message('noInternet'));
        setSubmitState(key, SubmitStateEnum.failure);
        setCustomMessage(key, 'No internet connection');
        onFailure?.call(noInternetFailure);
        return;
      }

      setSubmitState(
          key,
          useLoadingState
              ? SubmitStateEnum.loading
              : SubmitStateEnum.submitting);

      if (useLoadingState) {
        setCustomMessage(key, 'Loading data...');
      } else {
        setCustomMessage(key, 'Submitting...');
      }

      final result = await operation(entity);
      result.fold(
        (failure) {
          setSubmitState(key, SubmitStateEnum.failure);
          setCustomMessage(key, failure.message);
          onFailure?.call(failure);
        },
        (response) async {
          setSubmitState(key, SubmitStateEnum.success);
          setCustomMessage(key, 'Operation completed successfully');
          await onSuccess?.call(response);
        },
      );
    } catch (error) {
      setSubmitState(key, SubmitStateEnum.failure);
      setCustomMessage(key, 'Unexpected error: $error');
      final genericFailure = GenericFailure(error.toString());
      onFailure?.call(genericFailure);
    }
  }

  /// Cleanup method to reset all states and prevent memory leaks.
  ///
  /// This method is automatically called when the controller is disposed.
  /// It resets all submit states to prevent any lingering state issues.
  @override
  void onClose() {
    resetAllStates();
    super.onClose();
  }
}
