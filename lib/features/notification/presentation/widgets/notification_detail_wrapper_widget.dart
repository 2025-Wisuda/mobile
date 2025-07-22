import 'package:flutter/material.dart';
import 'package:mobile/features/notification/domain/entities/notification_entity.dart';
import 'package:mobile/features/notification/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/date_helper.dart';

class NotificationDetailWrapperWidget extends StatelessWidget {
  final NotificationEntity notification;
  final NotificationDetailController controller;

  const NotificationDetailWrapperWidget({
    super.key,
    required this.notification,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        _buildHeader(context),
        const Divider(height: 32),
        _buildNotificationDetails(context),
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    final localDate = notification.sentAt?.toLocal();

    return Row(
      children: [
        Icon(
          _getNotificationIcon(notification.notificationType),
          color: _getNotificationColor(notification.notificationType),
          size: 24,
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                notification.title ?? '',
                style: context.titleMediumW(600),
              ),
              const SizedBox(height: 4),
              Text(
                DateHelper.formatCompactWithTime(localDate),
                style: context.labelSmallW(500).copyWith(
                      color: context.onSurfaceVariant,
                    ),
              ),
            ],
          ),
        ),
        if (notification.isRead == false)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: context.primary,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              'notification'.message('unread'),
              style: context.labelSmallW(600).copyWith(
                    color: context.onPrimary,
                    fontSize: 10,
                  ),
            ),
          ),
      ],
    );
  }

  Widget _buildNotificationDetails(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        if (notification.body != null && notification.body!.isNotEmpty)
          Text(
            notification.body!,
            style: context.bodyMediumW(400),
          ),
        // _buildStatusSection(context),
      ],
    );
  }

  IconData _getNotificationIcon(String? type) {
    switch (type) {
      case 'room_booking':
        return Icons.meeting_room_outlined;
      case 'course_session':
        return Icons.school_outlined;
      case 'lab_allocation':
        return Icons.computer_outlined;
      case 'duty_schedule':
        return Icons.work_outline;
      default:
        return Icons.notifications_outlined;
    }
  }

  Color _getNotificationColor(String? type) {
    switch (type) {
      case 'room_booking':
        return Colors.blue;
      case 'course_session':
        return Colors.green;
      case 'lab_allocation':
        return Colors.orange;
      case 'duty_schedule':
        return Colors.purple;
      default:
        return Colors.grey;
    }
  }
}
