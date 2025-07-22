part of 'fcm_remote_datasource.dart';

class FcmRemoteDataSourceImpl implements FcmRemoteDataSource {
  final FcmApiClient _fcmApiClient;
  final Connectivity connectivity;
  final Dio dio;

  FcmRemoteDataSourceImpl(this._fcmApiClient, this.connectivity, this.dio);

  @override
  Future<Either<Failure, BaseResponseModel<RegisterDeviceResponseModel>>>
      registerDevice({
    required String registrationToken,
    String? deviceType,
    String? deviceName,
  }) async {
    try {
      final response = await _fcmApiClient.fetchRegisterDevice({
        'token': registrationToken,
        'device_type': deviceType ?? 'android',
        'device_name': deviceName,
      });

      return Right(response);
    } on DioException catch (e) {
      return Left(
        ServerFailure(
          TextHelper.error(e,
              feature: 'notification', action: 'registerDevice'),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseListResponseModel<ListFcmDeviceModel>>>
      fetchFcmDevices() async {
    try {
      final response = await _fcmApiClient.fetchMyDevices();
      return Right(response);
    } on DioException catch (e) {
      return Left(
        ServerFailure(
          TextHelper.error(e, feature: 'notification', action: 'getMyDevices'),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseResponseModel<FcmDeviceModel>>> unregisterDevice({
    required String registrationToken,
  }) async {
    try {
      final response = await _fcmApiClient.fetchUnregisterDevice({
        'token': registrationToken,
      });

      return Right(response);
    } on DioException catch (e) {
      return Left(
        ServerFailure(
          TextHelper.error(e,
              feature: 'notification', action: 'unregisterDevice'),
        ),
      );
    }
  }
}
