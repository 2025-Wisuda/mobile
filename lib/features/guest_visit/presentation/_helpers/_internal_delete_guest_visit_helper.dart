import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/guest_visit/domain/entities/entity.dart';
import 'package:mobile/features/guest_visit/presentation/controllers/controller.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';

class DeleteGuestVisitHelper {
  static Future<dynamic> showDeleteConfirmation(
    BuildContext context,
    GuestVisitEntity guestVisit, {
    VoidCallback? onSuccess,
  }) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('guestVisit'.message('deleteTitle')),
        content: Text('guestVisit'.message('deleteMessage')),
        actions: [
          TextButton(
            onPressed: () async {
              await _deleteGuestVisit(context, guestVisit,
                  onSuccess: onSuccess);
              if (context.mounted) {
                Navigator.of(context).pop({'shouldRefresh': true});
              }
            },
            child: Text('yes'.note()),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('no'.note()),
          ),
        ],
      ),
    );
  }

  static Future<void> _deleteGuestVisit(
    BuildContext context,
    GuestVisitEntity guestVisit, {
    VoidCallback? onSuccess,
  }) async {
    final controller = Get.find<DeleteGuestVisitController>();
    try {
      await controller.deleteItem(guestVisit.id!);
      if (onSuccess != null) onSuccess();
      if (context.mounted) {
        context.showCustomSnackbar(
          message: 'guestVisit'.success('deleteGuestVisit'),
          type: SnackbarType.success,
        );
        Get.back(result: {'shouldRefresh': true});
      }
    } catch (e) {
      if (context.mounted) {
        context.showCustomSnackbar(
          message: 'Gagal menghapus kunjungan: \\${e.toString()}',
          type: SnackbarType.error,
        );
      }
    }
  }
}
