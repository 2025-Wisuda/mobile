import 'package:fpdart/fpdart.dart';
import 'package:mobile/features/notification/data/datasources/fcm_remote_datasource.dart';
import 'package:mobile/features/notification/data/models/model.dart';
import 'package:mobile/features/notification/domain/entities/entity.dart';
import 'package:mobile/features/notification/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/failure.dart';
import 'package:mobile/shared/models/model.dart';

class FcmRepositoryImpl implements FcmRepository {
  final FcmRemoteDataSource _fcmRemoteDataSource;

  FcmRepositoryImpl(this._fcmRemoteDataSource);

  @override
  Future<Either<Failure, BaseResponseEntity<RegisterDeviceResponseEntity>>>
      registerDevice({
    required String registrationToken,
    String? deviceType,
    String? deviceName,
  }) async {
    final remoteResult = await _fcmRemoteDataSource.registerDevice(
      registrationToken: registrationToken,
      deviceType: deviceType,
      deviceName: deviceName,
    );

    return remoteResult.fold((failure) => left(failure), (model) {
      final entity = model.toEntity((registerDevice) => registerDevice.toEntity());
      return right(entity);
    });
  }

  @override
  Future<Either<Failure, BaseListResponseEntity<ListFcmDeviceEntity>>>
      fetchFcmDevices() async {
    final remoteResult = await _fcmRemoteDataSource.fetchFcmDevices();

    return remoteResult.fold((failure) => left(failure), (model) {
      final entity = model.toEntity((listFcmDevice) => listFcmDevice.toEntity());
      return right(entity);
    });
  }

  @override
  Future<Either<Failure, BaseResponseEntity<FcmDeviceEntity>>>
      unregisterDevice({
    required String registrationToken,
  }) async {
    final remoteResult = await _fcmRemoteDataSource.unregisterDevice(
      registrationToken: registrationToken,
    );

    return remoteResult.fold((failure) => left(failure), (model) {
      final entity = model.toEntity((fcmDevice) => fcmDevice.toEntity());
      return right(entity);
    });
  }
}