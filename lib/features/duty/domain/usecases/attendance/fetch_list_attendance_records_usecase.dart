import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/duty/data/models/model.dart';
import 'package:mobile/features/duty/domain/entities/entity.dart';
import 'package:mobile/features/duty/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class FetchListAttendanceRecordsUsecase {
  final DutyAttendanceRepository _dutyAttendanceRepository;

  FetchListAttendanceRecordsUsecase(this._dutyAttendanceRepository);

  Future<Either<Failure, BaseListResponseEntity<DutyAttendanceEntity>>>
      execute({
    DutyAttendanceFilterParamsModel? params,
  }) {
    return _dutyAttendanceRepository.fetchListDutyAttendances(
      params: params,
    );
  }
}
