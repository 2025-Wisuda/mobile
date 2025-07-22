import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_entity.freezed.dart';

@freezed
abstract class NotificationEntity with _$NotificationEntity {
  const factory NotificationEntity({
    String? id,
    String? userName,
    String? notificationType,
    String? title,
    String? body,
    DateTime? sentAt,
    String? status,
    bool? isRead,
  }) = _NotificationEntity;
}

@freezed
abstract class MarkAsReadResponseEntity with _$MarkAsReadResponseEntity {
  const factory MarkAsReadResponseEntity({
    String? id,
  }) = _MarkAsReadResponseEntity;
}

@freezed
abstract class MarkAllAsReadResponseEntity with _$MarkAllAsReadResponseEntity {
  const factory MarkAllAsReadResponseEntity({
    int? updatedCount,
  }) = _MarkAllAsReadResponseEntity;
}

@freezed
abstract class UnreadCountResponseEntity with _$UnreadCountResponseEntity {
  const factory UnreadCountResponseEntity({
    int? unreadCount,
  }) = _UnreadCountResponseEntity;
}
