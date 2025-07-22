import 'package:fpdart/fpdart.dart';
import 'package:mobile/features/notification/data/datasources/datasource.dart';
import 'package:mobile/features/notification/data/models/model.dart';
import 'package:mobile/features/notification/domain/entities/entity.dart';
import 'package:mobile/features/notification/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/failure.dart';
import 'package:mobile/shared/models/model.dart';


class NotificationRepositoryImpl implements NotificationRepository {
  final NotificationRemoteDataSource _notificationRemoteDataSource;

  NotificationRepositoryImpl(this._notificationRemoteDataSource);

  @override
  Future<Either<Failure, BaseListResponseEntity<NotificationEntity>>>
      fetchNotifications({
    NotificationFilterParamsModel? params,
  }) async {
    final remoteResult = await _notificationRemoteDataSource.fetchNotifications(params: params);

    return remoteResult.fold((failure) => left(failure), (model) {
      final entity = model.toEntity((notification) => notification.toEntity());
      return right(entity);
    });
  }

  @override
  Future<Either<Failure, BaseResponseEntity<MarkAsReadResponseEntity>>>
      markAsRead(String notificationId) async {
    final remoteResult = await _notificationRemoteDataSource.markAsRead(notificationId);

    return remoteResult.fold((failure) => left(failure), (model) {
      final entity = model.toEntity((markAsRead) => markAsRead.toEntity());
      return right(entity);
    });
  }

  @override
  Future<Either<Failure, BaseResponseEntity<MarkAllAsReadResponseEntity>>>
      markAllAsRead() async {
    final remoteResult = await _notificationRemoteDataSource.markAllAsRead();

    return remoteResult.fold((failure) => left(failure), (model) {
      final entity = model.toEntity((markAllAsRead) => markAllAsRead.toEntity());
      return right(entity);
    });
  }

  @override
  Future<Either<Failure, BaseResponseEntity<UnreadCountResponseEntity>>>
      fetchUnreadCount() async {
    final remoteResult = await _notificationRemoteDataSource.fetchUnreadCount();

    return remoteResult.fold((failure) => left(failure), (model) {
      final entity = model.toEntity((unreadCount) => unreadCount.toEntity());
      return right(entity);
    });
  }
}