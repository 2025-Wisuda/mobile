import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/features/room_booking/presentation/controllers/delete_room_booking_controller.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/dialog/custom_confirm_dialog_widget.dart';

class DeleteRoomBookingHelper {
  static void showDeleteConfirmation(
    BuildContext context,
    RoomBookingEntity booking, {
    required VoidCallback onSuccess,
  }) {
    showCustomConfirmDialog(
      context: context,
      title: 'roomBooking'.message('deleteTitle'),
      message: 'roomBooking'.message('deleteMessage'),
      confirmText: 'yes'.note(),
      cancelText: 'no'.note(),
      type: DialogType.destructive,
      icon: Icons.delete_outline,
      onConfirm: () async {
        await _deleteBooking(context, booking, onSuccess: onSuccess);
      },
    );
  }

  static Future<void> _deleteBooking(
    BuildContext context,
    RoomBookingEntity booking, {
    required VoidCallback onSuccess,
  }) async {
    final controller = Get.find<DeleteRoomBookingController>();
    try {
      await controller.deleteItem(booking.id!);
      onSuccess();
      if (context.mounted) {
        context.showCustomSnackbar(
          message: 'roomBooking'.success('deleteRoomBooking'),
          type: SnackbarType.success,
        );
      }
    } catch (e) {
      if (context.mounted) {
        context.showCustomSnackbar(
          message: 'Gagal menghapus peminjaman: \\${e.toString()}',
          type: SnackbarType.error,
        );
      }
    }
  }
}
