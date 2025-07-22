import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/features/notification/domain/entities/entity.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';
part 'notification_model_extension.dart';

@freezed
abstract class NotificationModel with _$NotificationModel {
  const factory NotificationModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'notification_type') String? notificationType,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'body') String? body,
    @JsonKey(name: 'sent_at') DateTime? sentAt,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'is_read') bool? isRead,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}

@freezed
abstract class NotificationMarkAsReadResponseModel
    with _$NotificationMarkAsReadResponseModel {
  const factory NotificationMarkAsReadResponseModel({
    @JsonKey(name: 'id') String? id,
  }) = _NotificationMarkAsReadResponseModel;

  factory NotificationMarkAsReadResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$NotificationMarkAsReadResponseModelFromJson(json);
}

@freezed
abstract class NotificationMarkAllAsReadResponseModel
    with _$NotificationMarkAllAsReadResponseModel {
  const factory NotificationMarkAllAsReadResponseModel({
    @JsonKey(name: 'updated_count') int? updatedCount,
  }) = _NotificationMarkAllAsReadResponseModel;

  factory NotificationMarkAllAsReadResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$NotificationMarkAllAsReadResponseModelFromJson(json);
}

@freezed
abstract class NotificationUnreadCountResponseModel
    with _$NotificationUnreadCountResponseModel {
  const factory NotificationUnreadCountResponseModel({
    @JsonKey(name: 'unread_count') int? unreadCount,
  }) = _NotificationUnreadCountResponseModel;

  factory NotificationUnreadCountResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$NotificationUnreadCountResponseModelFromJson(json);
}
