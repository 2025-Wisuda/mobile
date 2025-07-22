import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/features/notification/presentation/controllers/controller.dart';
import 'package:mobile/features/notification/presentation/widgets/widget.dart';
import 'package:mobile/shared/enums/snackbar_type_enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/utils/util.dart';
import 'package:mobile/shared/widgets/widget.dart';

class NotificationWrapperWidget extends GetView<NotificationListController> {
  const NotificationWrapperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ever(controller.submitError, (String error) {
      if (error.isNotEmpty) {
        showCustomSnackbar(
          message: error,
          type: SnackbarType.error,
        );
        controller.clearSubmitError();
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.fetchList();
      controller.fetchUnreadCount();
    });

    return Obx(() {
      return customFetchStateHandler(
        context: context,
        state: controller.fetchState,
        feature: 'notification',
        customIcon: Icons.notifications_outlined,
        customErrorMessage: controller.fetchError,
        customTitle: 'notification'.message('empty'),
        customLoadingTitle: 'notification'.message('loading'),
        onSuccess: () => RefreshIndicator(
          onRefresh: controller.refresh,
          child: NotificationListItemWidget(
            controller: controller,
          ),
        ),
      );
    });
  }
}
