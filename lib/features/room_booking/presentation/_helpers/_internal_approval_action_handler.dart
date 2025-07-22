import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/room_booking/presentation/controllers/controller.dart';
import 'package:mobile/shared/enums/enum.dart';
import '_internal_approval_state_handler.dart';

class InternalApprovalActionHandler {
  static Future<void> handleApproval(
    BuildContext context,
    String bookingId, {
    String? notes,
    VoidCallback? onSuccess,
    VoidCallback? onFailure,
  }) async {
    final controller = Get.find<ApproveRoomBookingController>();

    _setupControllerForAction(controller, bookingId, notes);

    _createStateWorker(
      context,
      controller,
      onSuccess,
      onFailure,
    );

    await controller.approveBooking();
  }

  static Future<void> handleRejection(
    BuildContext context,
    String bookingId, {
    String? notes,
    VoidCallback? onSuccess,
    VoidCallback? onFailure,
  }) async {
    final controller = Get.find<ApproveRoomBookingController>();

    _setupControllerForAction(controller, bookingId, notes);

    _createStateWorker(
      context,
      controller,
      onSuccess,
      onFailure,
    );

    await controller.rejectBooking();
  }

  static void _setupControllerForAction(
    ApproveRoomBookingController controller,
    String bookingId,
    String? notes,
  ) {
    controller.setRoomBookingId(bookingId);

    final formNotes = notes ?? controller.getController('approvalNotes').text;
    if (formNotes.isNotEmpty) {
      controller.getController('approvalNotes').text = formNotes;
    }

    controller.validateAllFields();
  }

  static Worker _createStateWorker(
    BuildContext context,
    ApproveRoomBookingController controller,
    VoidCallback? onSuccess,
    VoidCallback? onFailure,
  ) {
    late final Worker stateWorker;
    stateWorker = ever(controller.reactiveState, (SubmitStateEnum state) {
      switch (state) {
        case SubmitStateEnum.success:
          InternalApprovalStateHandler.handleSuccessState(
            context,
            controller,
            onSuccess,
            true,
          );
          stateWorker.dispose();
        case SubmitStateEnum.failure:
          InternalApprovalStateHandler.handleFailureState(
            context,
            controller,
            controller.stateDescription,
            onFailure,
          );
          stateWorker.dispose();
        default:
      }
    });
    return stateWorker;
  }
}
