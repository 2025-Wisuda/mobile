import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/notification/domain/entities/entity.dart';
import 'package:mobile/features/notification/domain/repositories/fcm_repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class FetchMyDevicesUsecase {
  final FcmRepository fcmRepository;

  FetchMyDevicesUsecase(this.fcmRepository);

  Future<Either<Failure, BaseListResponseEntity<ListFcmDeviceEntity>>>
      execute() {
    return fcmRepository.fetchFcmDevices();
  }
}
