import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/features/notification/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class NotificationBadgeWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final String imagePath;
  final double? iconSize;
  final Color? badgeColor;
  final Color? textColor;

  const NotificationBadgeWidget({
    super.key,
    this.onTap,
    required this.imagePath,
    this.iconSize,
    this.badgeColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NotificationListController>(
      builder: (controller) {
        // Auto fetch unread count when widget builds
        WidgetsBinding.instance.addPostFrameCallback((_) {
          controller.fetchUnreadCount();
        });

        return Stack(
          children: [
            IconButton(
              onPressed: onTap,
              icon: customImageIconWidget(
                imagePath: imagePath,
              ),
            ),

            // Badge with Obx for reactive updates
            Obx(() {
              if (controller.unreadCount.value > 0) {
                return Positioned(
                  right: 8,
                  top: 8,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: badgeColor ?? Theme.of(context).colorScheme.error,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.1),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 20,
                      minHeight: 20,
                    ),
                    child: Center(
                      child: Text(
                        _formatCount(controller.unreadCount.value),
                        style: context.labelSmallW(600).copyWith(
                              color: textColor ?? Colors.white,
                              fontSize: 10,
                            ),
                      ),
                    ),
                  ),
                );
              }
              return const SizedBox.shrink();
            }),
          ],
        );
      },
    );
  }

  String _formatCount(int count) {
    if (count > 99) {
      return '99+';
    }
    return count.toString();
  }
}
