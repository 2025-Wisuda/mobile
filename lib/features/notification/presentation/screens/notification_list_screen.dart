import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/features/notification/presentation/controllers/controller.dart';
import 'package:mobile/features/notification/presentation/widgets/widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class NotificationListScreen extends GetView<NotificationListController> {
  const NotificationListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildBottomActions(context),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(52),
        child: _buildAppBar(context),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: const NotificationWrapperWidget(),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return CustomAppBarWithBorder(
      toolbarHeight: 76,
      showBackButton: true,
      title: 'notification'.menu(),
      // actions: [
      //   IconButton(
      //     onPressed: () {
      //       showModalBottomSheet(
      //         context: context,
      //         isScrollControlled: true,
      //         builder: (context) => FilterNotificationBottomSheetWidget(
      //           controller: controller,
      //         ),
      //       );
      //     },
      //     icon: const Icon(Icons.filter_list),
      //   ),
      //   const SizedBox(width: 8),
      // ],
    );
  }

  Widget _buildBottomActions(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: context.surface,
          border: Border(
            top: BorderSide(
              color: context.outline.withValues(alpha: 0.2),
              width: 1,
            ),
          ),
        ),
        child: Obx(() {
          return TextButton.icon(
            onPressed:
                controller.submitState.value == SubmitStateEnum.submitting
                    ? null
                    : controller.markAllAsRead,
            icon: controller.submitState.value == SubmitStateEnum.submitting
                ? const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.done_all),
            label: Text(
              controller.submitState.value == SubmitStateEnum.submitting
                  ? 'notification'.message('marking')
                  : 'notification'.message('markAllAsRead'),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: context.primary,
              foregroundColor: context.onPrimary,
            ),
          );
        }),
      ),
    );
  }
}
