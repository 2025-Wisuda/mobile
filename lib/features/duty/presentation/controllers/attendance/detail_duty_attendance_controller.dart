import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/duty/domain/entities/entity.dart';
import 'package:mobile/features/duty/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/get_base_detail_controller.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class DetailDutyAttendanceController
    extends GetBaseDetailController<DutyAttendanceEntity, String> {
  final FetchDetailAttendanceRecordsUsecase
      _fetchDetailAttendanceRecordsUsecase;

  DetailDutyAttendanceController(
    this._fetchDetailAttendanceRecordsUsecase,
  );

  @override
  String get baseStateKey => 'dutyAttendanceDetail';

  @override
  Future<Either<Failure, BaseResponseEntity<DutyAttendanceEntity>>>
      executeUsecase(
    String dutyAttendanceId,
  ) async {
    return await _fetchDetailAttendanceRecordsUsecase.execute(
        attendanceId: dutyAttendanceId);
  }
}
