// ignore_for_file: unintended_html_in_doc_comment

import 'package:flutter/material.dart';

import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

import 'package:mobile/shared/enums/submit_state_enum.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/mixins/mixin.dart';

/// A base abstract controller that provides standardized delete operations with comprehensive state management.
/// This controller eliminates code duplication for common delete operations across different entities.
///
/// **Key Features:**
/// - 🗑️ Delete operations with confirmation and state management
/// - 🎯 Flexible parameter system using dynamic types
/// - 📊 Built-in submitting, success, error, and cancelled states
/// - 🧹 Comprehensive state and data management
/// - 🔧 SubmitStateMixin integration for consistent state handling
/// - ♻️ Multiple reset and clear methods
/// - 📝 Support for single or multiple parameters
/// - ⚠️ Built-in confirmation handling
/// - 🔄 Optional optimistic deletion with rollback
///
/// **Type Parameters:**
/// - `[P]`: Parameter type (e.g., String, int, Map<String, dynamic>, custom model)
///
/// **Basic Implementation Example:**
/// ```dart
/// class UserDeleteController extends BaseDeleteController<String, void> {
///   final DeleteUserUsecase deleteUserUsecase;
///
///   UserDeleteController({required this.deleteUserUsecase});
///
///   @override
///   String get baseStateKey => 'userDelete';
///
///   @override
///   Future<Either<Failure, void>> executeUsecase(
///     String userId
///   ) async {
///     return await deleteUserUsecase.execute(userId: userId);
///   }
/// }
/// ```
///
/// **Advanced Implementation Example (Multiple Parameters):**
/// ```dart
/// class OrderDeleteController extends BaseDeleteController<Map<String, dynamic>, void> {
///   final DeleteOrderUsecase deleteOrderUsecase;
///
///   OrderDeleteController({required this.deleteOrderUsecase});
///
///   @override
///   String get baseStateKey => 'orderDelete';
///
///   @override
///   Future<Either<Failure, void>> executeUsecase(
///     Map<String, dynamic> params
///   ) async {
///     return await deleteOrderUsecase.execute(
///       orderId: params['orderId'] as String,
///       customerId: params['customerId'] as String,
///       reason: params['reason'] as String?,
///     );
///   }
///
///   // Convenience method
///   Future<void> deleteOrder(String orderId, String customerId, {String? reason}) async {
///     await deleteItem({
///       'orderId': orderId,
///       'customerId': customerId,
///       'reason': reason,
///     });
///   }
/// }
/// ```
///
/// **Usage Examples:**
/// ```dart
/// // Simple single parameter
/// await userController.deleteItem('user123');
///
/// // Multiple parameters with Map
/// await orderController.deleteItem({
///   'orderId': 'order123',
///   'customerId': 'customer456',
///   'reason': 'Customer request',
/// });
///
/// // With confirmation (UI layer handles dialog)
/// await controller.deleteWithConfirmation(
///   'user123',
///   confirmationCallback: () async {
///     // UI layer handles confirmation dialog
///     return await showConfirmationDialog();
///   },
/// );
///
/// // Optimistic deletion (delete from UI first, rollback on error)
/// await controller.deleteOptimistic('user123');
/// ```
///
/// **State Management Examples:**
/// ```dart
/// // Check states
/// if (controller.isSubmitting) {
///   // Show loading indicator
/// }
///
/// if (controller.hasError) {
///   // Show error message
///   print(controller.stateDescription);
/// }
///
/// if (controller.isSuccess) {
///   // Show success message
///   Get.snackbar('Success', 'Item deleted successfully');
/// }
///
/// // Reset operations
/// controller.resetState();
/// controller.clearAll();
/// ```
///
/// **UI Integration Examples:**
/// ```dart
/// // Delete button with state
/// Obx(() => ElevatedButton(
///   onPressed: controller.isSubmitting
///     ? null
///     : () => controller.deleteWithConfirmation('item123'),
///   child: controller.isSubmitting
///     ? CircularProgressIndicator()
///     : Text('Delete'),
/// ))
///
/// // Delete with confirmation dialog
/// IconButton(
///   icon: Icon(Icons.delete),
///   onPressed: () => controller.deleteWithConfirmation('item123'),
/// )
///
/// // State feedback
/// if (controller.hasError) {
///   ScaffoldMessenger.of(context).showSnackBar(
///     SnackBar(content: Text(controller.stateDescription)),
///   );
/// }
/// ```
///
/// **Available Methods Summary:**
///
/// **Core Delete Methods:**
/// - `deleteItem(P params)` - Main method to delete item
/// - `deleteWithConfirmation(P params)` - Delete with confirmation dialog
/// - `deleteOptimistic(P params)` - Optimistic delete with rollback
/// - `deleteSilent(P params)` - Delete without UI feedback
///
/// **State Management Methods:**
/// - `resetState()` - Reset delete operation state
/// - `clearAll()` - Complete reset (state and parameters)
/// - `cancelDelete()` - Cancel ongoing delete operation
///
/// **State Getters:**
/// - `isSubmitting`, `isSuccess`, `hasError`, `isCancelled`
/// - `canDelete`, `state`, `reactiveState`
/// - `stateDescription`
///
/// **Helper Methods (Override if needed):**
/// - `onDeleteStarted(P params)` - Called when delete starts
/// - `onDeleteSuccess(P params)` - Called on successful delete
/// - `onDeleteError(Failure failure, P params)` - Called on delete error
/// - `onDeleteCancelled(P params)` - Called when delete is cancelled
/// - `showConfirmationDialog(P params)` - Custom confirmation dialog
abstract class BaseDeleteController<P, T> extends GetxController
    with SubmitStateMixin {
  // ═══════════════════════════════════════════════════════════════════════════
  // PROPERTIES & FIELDS
  // ═══════════════════════════════════════════════════════════════════════════

  /// Current parameters used for the last delete operation
  P? _currentParams;

  /// Flag to track if optimistic deletion is enabled
  bool _isOptimisticMode = false;

  /// Callback for optimistic rollback
  VoidCallback? _rollbackCallback;

  // ═══════════════════════════════════════════════════════════════════════════
  // ABSTRACT METHODS (Must be implemented by subclasses)
  // ═══════════════════════════════════════════════════════════════════════════

  /// Abstract method to execute the delete API call with the given parameters
  ///
  /// This method should implement the actual API call using the provided usecase.
  /// It must return an Either type with Failure on the left and the response type T on the right.
  ///
  /// Example implementation:
  /// ```dart
  /// @override
  /// Future<Either<Failure, void>> executeUsecase(
  ///   String userId
  /// ) async {
  ///   return await deleteUserUsecase.execute(userId: userId);
  /// }
  /// ```
  Future<Either<Failure, T>> executeUsecase(P params);

  /// Abstract getter for the base state key
  ///
  /// This key is used for state management operations. It should be unique
  /// for each controller type to avoid state conflicts.
  ///
  /// Example:
  /// ```dart
  /// @override
  /// String get baseStateKey => 'userDelete';
  /// ```
  String get baseStateKey;

  // ═══════════════════════════════════════════════════════════════════════════
  // GETTERS & STATE KEYS
  // ═══════════════════════════════════════════════════════════════════════════

  /// Current state key for this controller
  String get currentStateKey => baseStateKey;

  /// Current parameters used for the last operation
  P? get currentParams => _currentParams;

  /// Whether optimistic mode is currently enabled
  bool get isOptimisticMode => _isOptimisticMode;

  // ═══════════════════════════════════════════════════════════════════════════
  // REACTIVE STATE GETTERS
  // ═══════════════════════════════════════════════════════════════════════════

  /// Gets reactive state for the current operation
  Rx<SubmitStateEnum> get reactiveState => getReactiveState(currentStateKey);

  /// Current state enum value (non-reactive)
  SubmitStateEnum get state => getReactiveState(currentStateKey).value;

  /// State check getters using current state key
  bool get isSubmitting => isOperationLoadingOrSubmitting(currentStateKey);
  bool get isSuccess =>
      getSubmitState(currentStateKey) == SubmitStateEnum.success;
  bool get hasError => isOperationError(currentStateKey);
  bool get canDelete => canOperationInteract(currentStateKey);

  /// Current state description (includes error message if any)
  String get stateDescription => getOperationStateDescription(currentStateKey);

  // ═══════════════════════════════════════════════════════════════════════════
  // CORE DELETE METHODS
  // ═══════════════════════════════════════════════════════════════════════════

  /// Main method to delete item
  ///
  /// This method handles the delete operation with proper state management.
  /// It automatically manages submitting, success, error, and cancelled states.
  ///
  /// Parameters:
  /// - [params]: Parameters required for the delete operation
  ///
  /// Example usage:
  /// ```dart
  /// // Single parameter
  /// await controller.deleteItem('user123');
  ///
  /// // Multiple parameters
  /// await controller.deleteItem({
  ///   'userId': 'user123',
  ///   'reason': 'Account closure',
  /// });
  ///
  /// // Custom parameter model
  /// final params = DeleteUserParams(userId: 'user123', reason: 'Inactive');
  /// await controller.deleteItem(params);
  /// ```
  Future<void> deleteItem(P params) async {
    _currentParams = params;
    _isOptimisticMode = false;

    onDeleteStarted(params);

    await executeSubmitWithNetwork<P, T>(
      currentStateKey,
      params,
      (p) => executeUsecase(p),
      onSuccess: (response) async {
        onDeleteSuccess(params);
        update([currentStateKey]);
      },
      onFailure: (failure) {
        onDeleteError(failure, params);
      },
    );
  }

  /// Delete with confirmation callback
  ///
  /// This method calls a confirmation callback before proceeding with the delete operation.
  /// The UI layer should handle the confirmation dialog/logic.
  ///
  /// Parameters:
  /// - [params]: Parameters required for the delete operation
  /// - [confirmationCallback]: Function that returns Future<bool> for confirmation
  ///
  /// Example usage:
  /// ```dart
  /// // In UI layer
  /// await controller.deleteWithConfirmation(
  ///   'user123',
  ///   confirmationCallback: () async {
  ///     return await showDialog<bool>(...) ?? false;
  ///   },
  /// );
  /// ```
  Future<void> deleteWithConfirmation(
    P params, {
    required Future<bool> Function() confirmationCallback,
  }) async {
    final confirmed = await confirmationCallback();
    if (confirmed) {
      await deleteItem(params);
    } else {
      onDeleteCancelled(params);
    }
  }

  /// Optimistic delete operation
  ///
  /// This method performs optimistic deletion - it assumes the operation will succeed
  /// and immediately applies changes to the UI, then performs the actual delete.
  /// If the delete fails, it rolls back the changes.
  ///
  /// Parameters:
  /// - [params]: Parameters required for the delete operation
  /// - [optimisticAction]: Function to execute immediately (remove from UI)
  /// - [rollbackAction]: Function to execute if delete fails (restore UI)
  ///
  /// Example usage:
  /// ```dart
  /// await controller.deleteOptimistic(
  ///   'user123',
  ///   optimisticAction: () => users.removeWhere((u) => u.id == 'user123'),
  ///   rollbackAction: () => users.add(deletedUser),
  /// );
  /// ```
  Future<void> deleteOptimistic(
    P params, {
    VoidCallback? optimisticAction,
    VoidCallback? rollbackAction,
  }) async {
    _currentParams = params;
    _isOptimisticMode = true;
    _rollbackCallback = rollbackAction;

    // Execute optimistic action immediately
    optimisticAction?.call();
    onDeleteStarted(params);

    await executeSubmitWithNetwork<P, T>(
      currentStateKey,
      params,
      (p) => executeUsecase(p),
      onSuccess: (response) async {
        onDeleteSuccess(params);
        update([currentStateKey]);
      },
      onFailure: (failure) {
        // Rollback optimistic changes
        rollbackAction?.call();
        onDeleteError(failure, params);
      },
    );

    _isOptimisticMode = false;
    _rollbackCallback = null;
  }

  /// Silent delete operation
  ///
  /// This method performs a delete operation without showing loading states
  /// or user feedback. Useful for background operations.
  ///
  /// Parameters:
  /// - [params]: Parameters required for the delete operation
  ///
  /// Example usage:
  /// ```dart
  /// // Silent delete for cleanup operations
  /// await controller.deleteSilent('tempFile123');
  /// ```
  Future<void> deleteSilent(P params) async {
    _currentParams = params;
    onDeleteStarted(params);

    final result = await executeUsecase(params);
    result.fold(
      (failure) => onDeleteError(failure, params),
      (response) => onDeleteSuccess(params),
    );
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // STATE MANAGEMENT METHODS
  // ═══════════════════════════════════════════════════════════════════════════

  /// Cancel ongoing delete operation
  ///
  /// This method cancels the current delete operation and sets the state to cancelled.
  /// If optimistic deletion was used, it triggers the rollback.
  ///
  /// Example:
  /// ```dart
  /// // Cancel current delete operation
  /// controller.cancelDelete();
  /// ```
  void cancelDelete() {
    if (_currentParams != null) {
      setSubmitState(currentStateKey, SubmitStateEnum.cancelled);

      // Rollback optimistic changes if applicable
      if (_isOptimisticMode && _rollbackCallback != null) {
        _rollbackCallback!();
      }

      onDeleteCancelled(_currentParams as P);
      update([currentStateKey]);
    }
  }

  /// Reset delete operation state to initial
  ///
  /// This method resets the delete operation state while keeping
  /// the current parameters intact.
  ///
  /// Example:
  /// ```dart
  /// // Reset state after handling results
  /// controller.resetState();
  /// ```
  void resetState() {
    resetOperationState(currentStateKey);
  }

  /// Clear all data and reset states to initial
  ///
  /// This is a comprehensive reset that clears:
  /// - Current parameters
  /// - All operation states (submitting, error, etc.)
  /// - Optimistic mode flags
  ///
  /// Example:
  /// ```dart
  /// // Complete reset - useful for logout, route changes, etc.
  /// controller.clearAll();
  /// ```
  void clearAll() {
    _currentParams = null;
    _isOptimisticMode = false;
    _rollbackCallback = null;
    resetOperationState(currentStateKey);
    update([currentStateKey]);
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // LIFECYCLE HOOKS (Override in subclasses if needed)
  // ═══════════════════════════════════════════════════════════════════════════

  /// Called when delete operation starts
  ///
  /// Override this method in subclasses to perform additional actions
  /// when delete starts, such as logging, analytics, or UI preparations.
  ///
  /// Parameters:
  /// - [params]: The parameters for the delete operation
  ///
  /// Example override:
  /// ```dart
  /// @override
  /// void onDeleteStarted(String userId) {
  ///   super.onDeleteStarted(userId);
  ///   // Log delete action
  ///   analyticsService.logDeleteStarted('user', userId);
  ///   // Show loading toast
  ///   Get.showSnackbar(GetSnackBar(message: 'Deleting user...'));
  /// }
  /// ```
  void onDeleteStarted(P params) {
    // Override in subclasses if needed
  }

  /// Called when delete operation succeeds
  ///
  /// Override this method in subclasses to perform additional actions
  /// on successful delete, such as navigation, cache clearing, or notifications.
  ///
  /// Parameters:
  /// - [params]: The parameters for the delete operation
  ///
  /// Example override:
  /// ```dart
  /// @override
  /// void onDeleteSuccess(String userId) {
  ///   super.onDeleteSuccess(userId);
  ///   // Show success message
  ///   Get.snackbar('Success', 'User deleted successfully');
  ///   // Navigate back
  ///   Get.back();
  ///   // Clear related caches
  ///   cacheService.clearUserCache(userId);
  /// }
  /// ```
  void onDeleteSuccess(P params) {
    // Override in subclasses if needed
  }

  /// Called when delete operation fails
  ///
  /// Override this method in subclasses to handle errors, such as
  /// logging, showing custom error messages, or triggering fallback operations.
  ///
  /// Parameters:
  /// - [failure]: The failure object containing error information
  /// - [params]: The parameters for the delete operation
  ///
  /// Example override:
  /// ```dart
  /// @override
  /// void onDeleteError(Failure failure, String userId) {
  ///   super.onDeleteError(failure, userId);
  ///   // Log error
  ///   logger.error('Failed to delete user $userId: ${failure.message}');
  ///   // Show error to user
  ///   Get.snackbar('Error', failure.message ?? 'Failed to delete user');
  /// }
  /// ```
  void onDeleteError(Failure failure, P params) {
    // Override in subclasses if needed
  }

  /// Called when delete operation is cancelled
  ///
  /// Override this method in subclasses to handle cancellation, such as
  /// logging, showing messages, or cleanup operations.
  ///
  /// Parameters:
  /// - [params]: The parameters for the delete operation
  ///
  /// Example override:
  /// ```dart
  /// @override
  /// void onDeleteCancelled(String userId) {
  ///   super.onDeleteCancelled(userId);
  ///   // Log cancellation
  ///   analyticsService.logDeleteCancelled('user', userId);
  ///   // Show message
  ///   Get.snackbar('Cancelled', 'Delete operation cancelled');
  /// }
  /// ```
  void onDeleteCancelled(P params) {
    // Override in subclasses if needed
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // UTILITY METHODS
  // ═══════════════════════════════════════════════════════════════════════════

  /// Check if controller has valid parameters for operations
  ///
  /// Returns true if current parameters are not null, false otherwise.
  bool get hasValidParams => _currentParams != null;

  /// Get formatted string representation of current parameters
  ///
  /// Useful for debugging and logging purposes.
  String get paramsString => _currentParams?.toString() ?? 'null';

  /// Check if a delete operation can be performed
  ///
  /// Returns true if not currently submitting and has valid params, false otherwise.
  bool get canPerformDelete => canDelete && hasValidParams;

  /// Get the last used parameters or throw an exception if null
  ///
  /// Use this method when you're certain that parameters should be available.
  /// Throws an exception if parameters are null.
  P get requireParams {
    final params = _currentParams;
    if (params == null) {
      throw Exception(
          'Parameters are null. Make sure to call a delete method first.');
    }
    return params;
  }

  /// Get the last used parameters or return a default value if null
  ///
  /// Parameters:
  /// - [defaultValue]: Value to return if parameters are null
  ///
  /// Returns the parameters or the default value.
  P getParamsOrDefault(P defaultValue) {
    return _currentParams ?? defaultValue;
  }
}
