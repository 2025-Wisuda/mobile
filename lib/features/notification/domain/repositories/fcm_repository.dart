import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/notification/domain/entities/entity.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

abstract class FcmRepository {
  Future<Either<Failure, BaseResponseEntity<RegisterDeviceResponseEntity>>>
      registerDevice({
    required String registrationToken,
    String? deviceType,
    String? deviceName,
  });

  Future<Either<Failure, BaseListResponseEntity<ListFcmDeviceEntity>>>
      fetchFcmDevices();

  Future<Either<Failure, BaseResponseEntity<FcmDeviceEntity>>> unregisterDevice({
    required String registrationToken,
  });
}
