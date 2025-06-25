import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/guest_visit/presentation/controllers/controller.dart';
import 'package:mobile/features/guest_visit/presentation/widgets/guest_visit/delete_guest_visit_wrapper_widget.dart';
import 'package:mobile/shared/widgets/button/custom_menu_actions_widget.dart';

class GuestVisitActionsMenuWidget extends StatelessWidget {
  const GuestVisitActionsMenuWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final guestVisitWrapperController = Get.find<GuestVisitWrapperController>();

    return Obx(() {
      if (!guestVisitWrapperController.canShowActionsMenu) {
        return const SizedBox.shrink();
      }

      return CustomMenuActionsWidget(
        type: MenuActionType.course,
        entityId: guestVisitWrapperController.guestVisitId,
        title: guestVisitWrapperController.visitorName,
        isTeachingAssistant: true,
        isOwner: guestVisitWrapperController.isOwner,
        onUpdate: guestVisitWrapperController.canEditGuestVisit
            ? () => _handleUpdateGuestVisit(guestVisitWrapperController)
            : null,
        onCreate: () => _handleCreateGuestVisit(),
        onDelete: guestVisitWrapperController.isOwner
            ? () =>
                _handleDeleteGuestVisit(context, guestVisitWrapperController)
            : null,
      );
    });
  }

  void _handleUpdateGuestVisit(GuestVisitWrapperController c) {
    if (c.canEditGuestVisit) {
      // Navigate to update screen
      Get.toNamed('/guest-visit/update',
          parameters: {'guestVisitId': c.guestVisitId});
    }
  }

  void _handleCreateGuestVisit() {
    Get.toNamed('/guest-visit/create');
  }

  void _handleDeleteGuestVisit(
      BuildContext context, GuestVisitWrapperController c) {
    if (c.guestVisitId.isNotEmpty) {
      final deleteWrapper = DeleteGuestVisitWrapperWidget(
        guestVisitId: c.guestVisitId,
        visitorName: c.visitorName,
      );
      deleteWrapper.handleDelete(context);
    }
  }
}
