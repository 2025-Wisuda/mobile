import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/duty/domain/entities/entity.dart';
import 'package:mobile/features/duty/domain/repositories/repository.dart';
import 'package:mobile/shared/errors/error.dart';

class ManualOverrideAttendanceUsecase {
  final DutyAttendanceRepository _dutyAttendanceRepository;

  ManualOverrideAttendanceUsecase(this._dutyAttendanceRepository);

  Future<Either<Failure, DutyAttendanceEntity>> execute({
    required String attendanceId,
    required String action,
  }) {
    return _dutyAttendanceRepository.manualOverrideAttendance(
      attendanceId: attendanceId,
      action: action,
    );
  }
}
