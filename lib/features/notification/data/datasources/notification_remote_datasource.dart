import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/notification/data/data.dart';
import 'package:mobile/shared/errors/failure.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/models/model.dart';

part 'notification_remote_datasource_impl.dart';

abstract class NotificationRemoteDataSource {
  Future<Either<Failure, BaseListResponseModel<NotificationModel>>>
      fetchNotifications({
    NotificationFilterParamsModel? params,
  });

  Future<
      Either<Failure,
          BaseResponseModel<NotificationMarkAsReadResponseModel>>> markAsRead(
      String notificationId);

  Future<
          Either<Failure,
              BaseResponseModel<NotificationMarkAllAsReadResponseModel>>>
      markAllAsRead();

  Future<
          Either<Failure,
              BaseResponseModel<NotificationUnreadCountResponseModel>>>
      fetchUnreadCount();
}
