import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/room_booking/presentation/controllers/controller.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/utils/util.dart';

class InternalApprovalStateHandler {
  static Widget buildStateHandler(
    BuildContext context, {
    VoidCallback? onSuccess,
    VoidCallback? onFailure,
    bool popOnSuccess = true,
    required ApproveRoomBookingController controller,
  }) {
    return Obx(() {
      final state = controller.state;
      final errorMessage = controller.stateDescription;

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

  static void _handleSuccessState(
    BuildContext context,
    ApproveRoomBookingController controller,
    VoidCallback? onSuccess,
    bool popOnSuccess,
  ) {
    Future.microtask(() {
      if (!context.mounted) return;

      final action = controller.currentAction;
      final isApprove = action == 'approve';

      showCustomSnackbar(
        showOnTop: true,
        message: isApprove
            ? 'roomBooking'.success('approveRoomBooking')
            : 'roomBooking'.success('rejectRoomBooking'),
        type: SnackbarType.success,
      );

      if (popOnSuccess && Navigator.canPop(context)) {
        Navigator.pop(context, true);
      }

      onSuccess?.call();
            controller.cleanForm();


      Future.delayed(const Duration(milliseconds: 100), () {
        controller.resetState();
      });
    });
  }

  static void _handleFailureState(
    BuildContext context,
    ApproveRoomBookingController controller,
    String? errorMessage,
    VoidCallback? onFailure,
  ) {
    Future.microtask(() {
      if (context.mounted) {
        showCustomSnackbar(
          showOnTop: true,
          message: errorMessage ?? 'roomBooking'.message('approvalError'),
          type: SnackbarType.error,
        );

        onFailure?.call();
      }

      controller.resetState();
      controller.cleanForm();
    });
  }

  static void handleSuccessState(
    BuildContext context,
    ApproveRoomBookingController controller,
    VoidCallback? onSuccess,
    bool popOnSuccess,
  ) {
    _handleSuccessState(context, controller, onSuccess, popOnSuccess);
  }

  static void handleFailureState(
    BuildContext context,
    ApproveRoomBookingController controller,
    String? errorMessage,
    VoidCallback? onFailure,
  ) {
    _handleFailureState(context, controller, errorMessage, onFailure);
  }
}
