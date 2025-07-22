import 'package:flutter/material.dart';

import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

import 'package:mobile/shared/enums/submit_state_enum.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/mixins/get_mixin.dart';

/// GetX-only Base Delete Controller: fully reactive, easy to use, and auto-cleanup.
///
/// All main state variables use Rx/obs, with no classic getter/setter and no private (_underscore) fields.
/// You can access, update, and observe state directly from your controller or UI (Obx, ever, etc).
///
/// Example usage:
/// ```dart
/// class UserDeleteController extends GetBaseDeleteController<String, void> {
///   final DeleteUserUsecase deleteUserUsecase;
///   UserDeleteController({required this.deleteUserUsecase});
///   @override
///   String get baseStateKey => 'userDelete';
///   @override
///   Future<Either<Failure, void>> executeUsecase(String userId) async {
///     return await deleteUserUsecase.execute(userId: userId);
///   }
/// }
/// // In UI:
/// Obx(() => controller.submitStates['userDelete'] == SubmitStateEnum.submitting
///   ? CircularProgressIndicator()
///   : ElevatedButton(
///       onPressed: () => controller.deleteItem('user123'),
///       child: Text('Delete'),
///     ),
/// )
/// ```
abstract class GetBaseDeleteController<P, T> extends GetxController
    with GetSubmitStateMixin {
  /// Holds the current parameters used for the last delete operation.
  final Rxn<P> currentParams = Rxn<P>();

  /// Indicates if optimistic deletion mode is enabled.
  final RxBool isOptimisticMode = false.obs;

  /// Callback for optimistic rollback, if needed.
  VoidCallback? rollbackCallback;

  /// Executes the delete API call with the given parameters.
  ///
  /// [params] - The parameters for the delete operation.
  /// Returns an Either containing Failure or the expected type T.
  Future<Either<Failure, T>> executeUsecase(P params);

  /// The unique state key for this controller (used for state tracking).
  String get baseStateKey;

  /// Main method to delete an item.
  ///
  /// [params] - The parameters for the delete operation.
  /// Sets state to submitting, calls executeUsecase, and updates state based on result.
  /// Usage:
  /// ```dart
  /// await controller.deleteItem('user123');
  /// ```
  Future<void> deleteItem(P params) async {
    currentParams.value = params;
    submitStates[baseStateKey] = SubmitStateEnum.submitting;
    final result = await executeUsecase(params);
    result.fold(
      (failure) {
        submitStates[baseStateKey] = SubmitStateEnum.failure;
        customMessages[baseStateKey] = failure.message;
        onDeleteError(failure, params);
      },
      (response) {
        submitStates[baseStateKey] = SubmitStateEnum.success;
        onDeleteSuccess(params);
      },
    );
  }

  /// Delete with confirmation dialog (UI layer should handle dialog).
  ///
  /// [params] - The parameters for the delete operation.
  /// [confirmationCallback] - Async callback returning true if user confirms.
  /// Usage:
  /// ```dart
  /// await controller.deleteWithConfirmation('user123', confirmationCallback: () async => await showDialog(...));
  /// ```
  Future<void> deleteWithConfirmation(P params,
      {required Future<bool> Function() confirmationCallback}) async {
    final confirmed = await confirmationCallback();
    if (confirmed) {
      await deleteItem(params);
    } else {
      submitStates[baseStateKey] = SubmitStateEnum.cancelled;
      onDeleteCancelled(params);
    }
  }

  /// Optimistic delete with rollback support.
  ///
  /// [params] - The parameters for the delete operation.
  /// [optimisticAction] - Action to perform optimistically before delete.
  /// [rollbackAction] - Action to rollback if delete fails.
  /// Usage:
  /// ```dart
  /// await controller.deleteOptimistic('user123', optimisticAction: () {...}, rollbackAction: () {...});
  /// ```
  Future<void> deleteOptimistic(P params,
      {VoidCallback? optimisticAction, VoidCallback? rollbackAction}) async {
    isOptimisticMode.value = true;
    rollbackCallback = rollbackAction;
    optimisticAction?.call();
    await deleteItem(params);
    if (submitStates[baseStateKey] == SubmitStateEnum.failure) {
      rollbackCallback?.call();
    }
    isOptimisticMode.value = false;
  }

  /// Delete without UI feedback (silent mode).
  ///
  /// [params] - The parameters for the delete operation.
  Future<void> deleteSilent(P params) async {
    await executeUsecase(params);
  }

  /// Reset the delete operation state to initial.
  void resetState() {
    submitStates[baseStateKey] = SubmitStateEnum.initial;
    customMessages.remove(baseStateKey);
  }

  /// Complete reset: clears state, parameters, and optimistic mode.
  void clearAll() {
    resetState();
    currentParams.value = null;
    isOptimisticMode.value = false;
    rollbackCallback = null;
  }

  /// Cancel ongoing delete operation and set state to cancelled.
  void cancelDelete() {
    submitStates[baseStateKey] = SubmitStateEnum.cancelled;
    onDeleteCancelled(currentParams.value);
  }

  /// Returns true if the controller is currently submitting a delete operation.
  bool get isSubmitting =>
      submitStates[baseStateKey] == SubmitStateEnum.submitting;

  /// Returns true if the last delete operation was successful.
  bool get isSuccess => submitStates[baseStateKey] == SubmitStateEnum.success;

  /// Returns true if the last delete operation failed.
  bool get hasError => submitStates[baseStateKey] == SubmitStateEnum.failure;

  /// Returns true if the last delete operation was cancelled.
  bool get isCancelled =>
      submitStates[baseStateKey] == SubmitStateEnum.cancelled;

  /// Returns true if the controller can perform a delete operation (not submitting).
  bool get canDelete => !isSubmitting;

  /// Returns the current submit state enum value.
  SubmitStateEnum get state =>
      submitStates[baseStateKey] ?? SubmitStateEnum.initial;

  /// Returns the current state description or error message if any.
  String get stateDescription =>
      customMessages[baseStateKey] ?? state.description;

  /// Hook: called when delete operation starts (override in subclass if needed).
  void onDeleteStarted(P params) {}

  /// Hook: called when delete operation succeeds (override in subclass if needed).
  void onDeleteSuccess(P params) {}

  /// Hook: called when delete operation fails (override in subclass if needed).
  void onDeleteError(Failure failure, P params) {}

  /// Hook: called when delete operation is cancelled (override in subclass if needed).
  void onDeleteCancelled(P? params) {}

  @override
  void onClose() {
    clearAll();
    super.onClose();
  }
}
