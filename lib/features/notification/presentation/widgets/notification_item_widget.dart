import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/features/notification/domain/entities/entity.dart';
import 'package:mobile/features/notification/presentation/controllers/controller.dart';
import 'package:mobile/shared/enums/submit_state_enum.dart';
import 'package:mobile/shared/extensions/extension.dart';

class NotificationItemWidget extends StatelessWidget {
  final NotificationEntity notification;
  final VoidCallback? onTap;

  const NotificationItemWidget({
    super.key,
    required this.notification,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NotificationListController>(
      builder: (controller) {
        final isSubmitting =
            controller.submitState.value == SubmitStateEnum.submitting;
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 4),
          child: ListTile(
            onTap: isSubmitting ? null : onTap,
            leading: CircleAvatar(
              backgroundColor: notification.isRead == true
                  ? context.surfaceContainer
                  : context.primary,
              child: isSubmitting
                  ? SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          notification.isRead == true
                              ? context.onSurfaceVariant
                              : context.onPrimary,
                        ),
                      ),
                    )
                  : Icon(
                      _getNotificationIcon(),
                      color: notification.isRead == true
                          ? context.onSurfaceVariant
                          : context.onPrimary,
                      size: 20,
                    ),
            ),
            title: Text(
              notification.title ?? 'Notification',
              style: context.titleSmall().copyWith(
                    fontWeight: notification.isRead == true
                        ? FontWeight.normal
                        : FontWeight.bold,
                  ),
            ),
            subtitle: Text(
              notification.body ?? '',
              style: context.bodySmall().copyWith(
                    color: context.onSurfaceVariant,
                  ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: notification.sentAt != null
                ? Text(
                    _formatDate(notification.sentAt!),
                    style: context.labelSmall().copyWith(
                          color: context.onSurfaceVariant,
                        ),
                  )
                : null,
          ),
        );
      },
    );
  }

  IconData _getNotificationIcon() {
    switch (notification.notificationType?.toLowerCase()) {
      case 'lab_schedule':
        return Icons.schedule;
      case 'room_booking':
        return Icons.meeting_room;
      case 'duty_schedule':
        return Icons.work;
      case 'attendance':
        return Icons.check_circle;
      default:
        return Icons.notifications;
    }
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();

    final localDate = date.toLocal();
    final difference = now.difference(localDate);

    if (difference.inDays > 0) {
      return 'notification'.message('timeFormat.daysAgo', args: {
        'days': difference.inDays.toString(),
      });
    } else if (difference.inHours > 0) {
      return 'notification'.message('timeFormat.hoursAgo', args: {
        'hours': difference.inHours.toString(),
      });
    } else if (difference.inMinutes > 0) {
      return 'notification'.message('timeFormat.minutesAgo', args: {
        'minutes': difference.inMinutes.toString(),
      });
    } else {
      return 'notification'.message('timeFormat.justNow');
    }
  }
}
