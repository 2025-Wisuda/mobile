import 'package:flutter/material.dart';

import 'package:mobile/features/room_booking/presentation/controllers/controller.dart';
import '_internal_approval_action_handler.dart';
import '_internal_approval_state_handler.dart';

class ApprovalRoomBookingHelper {
  static Widget buildStateHandler(
    BuildContext context, {
    VoidCallback? onSuccess,
    VoidCallback? onFailure,
    bool popOnSuccess = true,
    required ApproveRoomBookingController controller,
  }) {
    return InternalApprovalStateHandler.buildStateHandler(
      context,
      onSuccess: onSuccess,
      onFailure: onFailure,
      popOnSuccess: popOnSuccess,
      controller: controller,
    );
  }

  static Future<void> handleApproval(
    BuildContext context,
    String bookingId, {
    String? notes,
    VoidCallback? onSuccess,
    VoidCallback? onFailure,
  }) async {
    await InternalApprovalActionHandler.handleApproval(
      context,
      bookingId,
      notes: notes,
      onSuccess: onSuccess,
      onFailure: onFailure,
    );
  }

  static Future<void> handleRejection(
    BuildContext context,
    String bookingId, {
    String? notes,
    VoidCallback? onSuccess,
    VoidCallback? onFailure,
  }) async {
    await InternalApprovalActionHandler.handleRejection(
      context,
      bookingId,
      notes: notes,
      onSuccess: onSuccess,
      onFailure: onFailure,
    );
  }
}
