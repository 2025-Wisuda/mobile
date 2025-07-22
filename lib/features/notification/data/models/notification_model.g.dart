// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) =>
    _NotificationModel(
      id: json['id'] as String?,
      userName: json['user_name'] as String?,
      notificationType: json['notification_type'] as String?,
      title: json['title'] as String?,
      body: json['body'] as String?,
      sentAt: json['sent_at'] == null
          ? null
          : DateTime.parse(json['sent_at'] as String),
      status: json['status'] as String?,
      isRead: json['is_read'] as bool?,
    );

Map<String, dynamic> _$NotificationModelToJson(_NotificationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_name': instance.userName,
      'notification_type': instance.notificationType,
      'title': instance.title,
      'body': instance.body,
      'sent_at': instance.sentAt?.toIso8601String(),
      'status': instance.status,
      'is_read': instance.isRead,
    };

_NotificationMarkAsReadResponseModel
    _$NotificationMarkAsReadResponseModelFromJson(Map<String, dynamic> json) =>
        _NotificationMarkAsReadResponseModel(
          id: json['id'] as String?,
        );

Map<String, dynamic> _$NotificationMarkAsReadResponseModelToJson(
        _NotificationMarkAsReadResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_NotificationMarkAllAsReadResponseModel
    _$NotificationMarkAllAsReadResponseModelFromJson(
            Map<String, dynamic> json) =>
        _NotificationMarkAllAsReadResponseModel(
          updatedCount: (json['updated_count'] as num?)?.toInt(),
        );

Map<String, dynamic> _$NotificationMarkAllAsReadResponseModelToJson(
        _NotificationMarkAllAsReadResponseModel instance) =>
    <String, dynamic>{
      'updated_count': instance.updatedCount,
    };

_NotificationUnreadCountResponseModel
    _$NotificationUnreadCountResponseModelFromJson(Map<String, dynamic> json) =>
        _NotificationUnreadCountResponseModel(
          unreadCount: (json['unread_count'] as num?)?.toInt(),
        );

Map<String, dynamic> _$NotificationUnreadCountResponseModelToJson(
        _NotificationUnreadCountResponseModel instance) =>
    <String, dynamic>{
      'unread_count': instance.unreadCount,
    };
