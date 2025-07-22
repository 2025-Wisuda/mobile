part of 'notification_model.dart';

extension NotificationModelX on NotificationModel {
  NotificationEntity toEntity() {
    return NotificationEntity(
      id: id,
      userName: userName,
      notificationType: notificationType,
      title: title,
      body: body,
      sentAt: sentAt,
      status: status,
      isRead: isRead,
    );
  }
}


extension NotificationMarkAsReadResponseModelX
    on NotificationMarkAsReadResponseModel {
  MarkAsReadResponseEntity toEntity() {
    return MarkAsReadResponseEntity(
      id: id,
    );
  }
}

extension NotificationMarkAllAsReadResponseModelX
    on NotificationMarkAllAsReadResponseModel {
  MarkAllAsReadResponseEntity toEntity() {
    return MarkAllAsReadResponseEntity(
      updatedCount: updatedCount,
    );
  }
}

extension NotificationUnreadCountResponseModelX
    on NotificationUnreadCountResponseModel {
  UnreadCountResponseEntity toEntity() {
    return UnreadCountResponseEntity(
      unreadCount: unreadCount,
    );
  }
}