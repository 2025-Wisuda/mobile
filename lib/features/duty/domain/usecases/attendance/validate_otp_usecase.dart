import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/duty/domain/entities/entity.dart';
import 'package:mobile/features/duty/domain/repositories/repository.dart';
import 'package:mobile/shared/errors/error.dart';

class ValidateOtpUsecase {
  final DutyAttendanceRepository _dutyAttendanceRepository;

  ValidateOtpUsecase(this._dutyAttendanceRepository);

  Future<Either<Failure, OtpValidationResponseEntity>> execute(
      {required String otpCode}) {
    return _dutyAttendanceRepository.validateOtp(otpCode: otpCode);
  }
}
