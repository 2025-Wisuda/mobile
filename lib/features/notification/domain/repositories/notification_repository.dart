import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/notification/data/models/notification_filter_params_model.dart';
import 'package:mobile/features/notification/domain/entities/notification_entity.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/failure.dart';

abstract class NotificationRepository {
  Future<Either<Failure, BaseListResponseEntity<NotificationEntity>>>
      fetchNotifications({
    NotificationFilterParamsModel? params,
  });

  Future<Either<Failure, BaseResponseEntity<MarkAsReadResponseEntity>>>
      markAsRead(String notificationId);

  Future<Either<Failure, BaseResponseEntity<MarkAllAsReadResponseEntity>>>
      markAllAsRead();

  Future<Either<Failure, BaseResponseEntity<UnreadCountResponseEntity>>>
      fetchUnreadCount();
}
