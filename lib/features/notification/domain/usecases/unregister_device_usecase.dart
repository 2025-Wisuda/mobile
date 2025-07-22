import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/notification/domain/entities/entity.dart';
import 'package:mobile/features/notification/domain/repositories/fcm_repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class UnregisterDeviceUsecase {
  final FcmRepository fcmRepository;

  UnregisterDeviceUsecase(this.fcmRepository);

  Future<Either<Failure, BaseResponseEntity<FcmDeviceEntity>>>
      execute({
    required String registrationToken,
  }) {
    return fcmRepository.unregisterDevice(
      registrationToken: registrationToken,
    );
  }
}
