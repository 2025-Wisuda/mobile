import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/room_booking/presentation/controllers/controller.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';

class ApprovalRoomBookingHelper {
  /// Build state handler widget following login wrapper pattern
  /// Returns a reactive widget that handles approval state changes
  static Widget buildStateHandler(
    BuildContext context, {
    VoidCallback? onSuccess,
    VoidCallback? onFailure,
    bool popOnSuccess = true,
  }) {
    final controller = Get.find<ApproveRoomBookingController>();

    return Obx(() {
      final state = controller.state;
      final errorMessage = controller.errorMessage;

      switch (state) {
        case SubmitStateEnum.success:
          _handleSuccessState(context, controller, onSuccess, popOnSuccess);
        case SubmitStateEnum.failure:
          _handleFailureState(context, controller, errorMessage, onFailure);
        default:
      }

      return const SizedBox.shrink();
    });
  }

  /// Handle success state following login wrapper pattern
  static void _handleSuccessState(
    BuildContext context,
    ApproveRoomBookingController controller,
    VoidCallback? onSuccess,
    bool popOnSuccess,
  ) {
    Future.microtask(() {
      if (context.mounted) {
        final action = controller.currentAction;
        final isApprove = action == 'approve';

        context.showCustomSnackbar(
          message: isApprove
              ? 'roomBooking'.message('approveSuccess')
              : 'roomBooking'.message('rejectSuccess'),
          type: SnackbarType.success,
        );

        // Custom success callback if provided
        onSuccess?.call();

        // Pop navigation if enabled
        if (popOnSuccess && Navigator.canPop(context)) {
          Navigator.pop(context, true);
        }
      }

      // Reset state after handling
      controller.resetState();
    });
  }

  /// Handle failure state following login wrapper pattern
  static void _handleFailureState(
    BuildContext context,
    ApproveRoomBookingController controller,
    String? errorMessage,
    VoidCallback? onFailure,
  ) {
    Future.microtask(() {
      if (context.mounted) {
        context.showCustomSnackbar(
          message: errorMessage ?? 'roomBooking'.message('approvalError'),
          type: SnackbarType.error,
        );

        // Custom failure callback if provided
        onFailure?.call();
      }

      // Reset state after handling
      controller.resetState();
    });
  }

  /// Handle approval with inline state management
  /// Alternative method for quick approval without separate state widget
  static Future<void> handleApproval(
    BuildContext context,
    String bookingId, {
    String? notes,
    VoidCallback? onSuccess,
    VoidCallback? onFailure,
  }) async {
    final controller = Get.find<ApproveRoomBookingController>();

    controller.setRoomBookingId(bookingId);

    if (notes != null && notes.isNotEmpty) {
      controller.getController('approvalNotes').text = notes;
    }

    // Listen to state changes for this operation
    late final Worker stateWorker;
    stateWorker = ever(controller.reactiveState, (SubmitStateEnum state) {
      switch (state) {
        case SubmitStateEnum.success:
          _handleSuccessState(context, controller, onSuccess, true);
          stateWorker.dispose();
        case SubmitStateEnum.failure:
          _handleFailureState(
              context, controller, controller.errorMessage, onFailure);
          stateWorker.dispose();
        default:
      }
    });

    await controller.approveBooking();
  }

  /// Handle rejection with inline state management
  static Future<void> handleRejection(
    BuildContext context,
    String bookingId, {
    String? notes,
    VoidCallback? onSuccess,
    VoidCallback? onFailure,
  }) async {
    final controller = Get.find<ApproveRoomBookingController>();

    controller.setRoomBookingId(bookingId);

    if (notes != null && notes.isNotEmpty) {
      controller.getController('approvalNotes').text = notes;
    }

    // Listen to state changes for this operation
    late final Worker stateWorker;
    stateWorker = ever(controller.reactiveState, (SubmitStateEnum state) {
      switch (state) {
        case SubmitStateEnum.success:
          _handleSuccessState(context, controller, onSuccess, true);
          stateWorker.dispose();
        case SubmitStateEnum.failure:
          _handleFailureState(
              context, controller, controller.errorMessage, onFailure);
          stateWorker.dispose();
        default:
      }
    });

    await controller.rejectBooking();
  }
}
