part of 'notification_remote_datasource.dart';

class NotificationRemoteDataSourceImpl implements NotificationRemoteDataSource {
  final NotificationApiClient _notificationApiClient;
  final Connectivity connectivity;
  final Dio dio;

  NotificationRemoteDataSourceImpl(
    this._notificationApiClient,
    this.connectivity,
    this.dio,
  );

  @override
  Future<Either<Failure, BaseListResponseModel<NotificationModel>>>
      fetchNotifications({
    NotificationFilterParamsModel? params,
  }) async {
    try {
      final queryParams = params?.toQueryParameters() ?? {};
      final response =
          await _notificationApiClient.fetchNotifications(queryParams);
      return Right(response);
    } on DioException catch (e) {
      return Left(
        ServerFailure(
          TextHelper.error(e,
              feature: 'notification', action: 'getNotifications'),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseResponseModel<NotificationMarkAsReadResponseModel>>>
      markAsRead(String notificationId) async {
    try {
      final response =
          await _notificationApiClient.fetchMarkAsRead(notificationId);
      return Right(response);
    } on DioException catch (e) {
      return Left(
        ServerFailure(
          TextHelper.error(e, feature: 'notification', action: 'markAsRead'),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseResponseModel<NotificationMarkAllAsReadResponseModel>>>
      markAllAsRead() async {
    try {
      final response = await _notificationApiClient.fetchMarkAllAsRead();
      return Right(response);
    } on DioException catch (e) {
      return Left(
        ServerFailure(
          TextHelper.error(e, feature: 'notification', action: 'markAllAsRead'),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseResponseModel<NotificationUnreadCountResponseModel>>>
      fetchUnreadCount() async {
    try {
      final response = await _notificationApiClient.fetchUnreadCount();
      return Right(response);
    } on DioException catch (e) {
      return Left(
        ServerFailure(
          TextHelper.error(e,
              feature: 'notification', action: 'getUnreadCount'),
        ),
      );
    }
  }
}
