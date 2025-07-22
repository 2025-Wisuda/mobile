import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/duty/domain/entities/entity.dart';
import 'package:mobile/features/duty/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class FetchDetailAttendanceRecordsUsecase {
  final DutyAttendanceRepository _dutyAttendanceRepository;

  FetchDetailAttendanceRecordsUsecase(this._dutyAttendanceRepository);

  Future<Either<Failure, BaseResponseEntity<DutyAttendanceEntity>>> execute({
    required String attendanceId,
  }) {
    return _dutyAttendanceRepository.fetchDutyAttendanceDetail(
      attendanceId: attendanceId,
    );
  }
}
