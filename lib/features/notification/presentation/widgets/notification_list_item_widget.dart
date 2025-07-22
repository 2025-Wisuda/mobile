import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/features/notification/presentation/controllers/controller.dart';
import 'package:mobile/features/notification/presentation/widgets/widget.dart';
import 'package:mobile/shared/widgets/widget.dart';

class NotificationListItemWidget extends StatelessWidget {
  final NotificationListController controller;

  const NotificationListItemWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() {
          if (!controller.hasFiltersApplied.value) {
            return const SizedBox.shrink();
          }
          return FilterIndicatorSection(
            text: controller.filtersDescription,
            onClear: () => controller.clearFilters(),
          );
        }),
        Expanded(
          child: NotificationListener<ScrollNotification>(
            onNotification: (ScrollNotification scrollInfo) {
              if (scrollInfo.metrics.pixels ==
                  scrollInfo.metrics.maxScrollExtent) {
                controller.loadMore();
              }
              return false;
            },
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: controller.items.length +
                  (controller.hasMoreData.value ? 1 : 0),
              itemBuilder: (context, index) {
                if (index == controller.items.length) {
                  return Obx(() {
                    if (controller.isLoadingMore.value) {
                      return const Center(
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: CustomPrimaryLoadingWidget(),
                        ),
                      );
                    }
                    return const SizedBox.shrink();
                  });
                }

                final notification = controller.items[index];
                return NotificationItemWidget(
                  notification: notification,
                  onTap: () {
                    _showNotificationDetail(context, notification);
                    controller.markAsRead(notification.id ?? '');
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  void _showNotificationDetail(BuildContext context, notification) {
    final detailController = Get.find<NotificationDetailController>();
    detailController.setEntity(notification);

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      enableDrag: true,
      isDismissible: true,
      useSafeArea: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.4,
        width: double.infinity,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 48),
              child: SingleChildScrollView(
                child: NotificationDetailWrapperWidget(
                  notification: notification,
                  controller: detailController,
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: IconButton(
                onPressed: () {
                  Get.back();
                  detailController.clearEntity();
                  // Refresh list and unread count after bottom sheet closes
                  controller.refresh();
                  controller.fetchUnreadCount();
                },
                icon: const Icon(Icons.close),
              ),
            ),
          ],
        ),
      ),
    ).then((_) {
      // Also refresh when bottom sheet is dismissed
      controller.refresh();
      controller.fetchUnreadCount();
    });
  }
}
