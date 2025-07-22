import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/notification/domain/entities/entity.dart';
import 'package:mobile/features/notification/domain/repositories/fcm_repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class RegisterDeviceUsecase {
  final FcmRepository fcmRepository;

  RegisterDeviceUsecase(this.fcmRepository);

  Future<Either<Failure, BaseResponseEntity<RegisterDeviceResponseEntity>>>
      execute({
    required String registrationToken,
    String? deviceType,
    String? deviceName,
  }) {
    return fcmRepository.registerDevice(
      registrationToken: registrationToken,
      deviceType: deviceType,
      deviceName: deviceName,
    );
  }
}
