import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:mobile/features/notification/data/models/notification_model.dart';
import 'package:mobile/shared/models/base_list_response_model.dart';
import 'package:mobile/shared/models/base_response_model.dart';

part 'notification_api_client.g.dart';

@RestApi()
abstract class NotificationApiClient {
  factory NotificationApiClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _NotificationApiClient;

  @GET("/fcm/notifications")
  Future<BaseListResponseModel<NotificationModel>> fetchNotifications(
    @Queries() Map<String, dynamic> queryParams,
  );

  @POST("/fcm/notifications/{id}/mark-as-read")
  Future<BaseResponseModel<NotificationMarkAsReadResponseModel>>
      fetchMarkAsRead(
    @Path("id") String notificationId,
  );

  @POST("/fcm/notifications/mark-all-as-read")
  Future<BaseResponseModel<NotificationMarkAllAsReadResponseModel>>
      fetchMarkAllAsRead();

  @GET("/fcm/notifications/unread-count")
  Future<BaseResponseModel<NotificationUnreadCountResponseModel>>
      fetchUnreadCount();
}
