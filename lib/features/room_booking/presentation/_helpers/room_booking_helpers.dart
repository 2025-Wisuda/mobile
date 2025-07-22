import 'package:flutter/material.dart';

import 'package:mobile/features/room_booking/presentation/controllers/controller.dart';
import '_internal_approval_room_booking_helper.dart';
import '_internal_room_booking_navigation_helper.dart';

class RoomBookingHelpers {
  static void handleTimeSlotNavigation(
    BuildContext context, {
    required String selectedDate,
    required String startTime,
    required String endTime,
  }) {
    RoomBookingNavigationHelper.handleTimeSlotNavigation(
      context,
      selectedDate: selectedDate,
      startTime: startTime,
      endTime: endTime,
    );
  }

  static void handleSuccessNavigation() {
    RoomBookingNavigationHelper.handleSuccessNavigation();
  }

  static Widget buildApprovalStateHandler(
    BuildContext context, {
    VoidCallback? onSuccess,
    VoidCallback? onFailure,
    bool popOnSuccess = true,
    required ApproveRoomBookingController controller,
  }) {
    return ApprovalRoomBookingHelper.buildStateHandler(
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
    await ApprovalRoomBookingHelper.handleApproval(
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
    await ApprovalRoomBookingHelper.handleRejection(
      context,
      bookingId,
      notes: notes,
      onSuccess: onSuccess,
      onFailure: onFailure,
    );
  }
}
