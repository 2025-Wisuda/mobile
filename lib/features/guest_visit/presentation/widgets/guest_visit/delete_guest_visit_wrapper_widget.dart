import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/guest_visit/presentation/controllers/controller.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DeleteGuestVisitWrapperWidget extends StatelessWidget {
  final String guestVisitId;
  final String visitorName;

  const DeleteGuestVisitWrapperWidget({
    super.key,
    required this.guestVisitId,
    required this.visitorName,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }

  void handleDelete(BuildContext context) {
    Get.dialog(
      CustomConfirmDialogWidget(
        title: 'Delete Guest Visit',
        message:
            'Are you sure you want to delete this guest visit for "$visitorName"?',
        onConfirm: () => _performDelete(),
        confirmText: 'Delete',
        cancelText: 'Cancel',
      ),
    );
  }

  void _performDelete() {
    final controller = Get.find<DeleteGuestVisitController>();
    controller.deleteItem(guestVisitId);
    Get.back(); // Close dialog
    Get.back(); // Go back to list
  }
}
