import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/duty_schedule/data/models/model.dart';
import 'package:mobile/features/duty_schedule/domain/entities/entity.dart';
import 'package:mobile/features/duty_schedule/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class FetchDutyScheduleForTodayUsecase {
  final DutyScheduleRepository _dutyScheduleRepository;

  FetchDutyScheduleForTodayUsecase(this._dutyScheduleRepository);

  Future<Either<Failure, BaseListResponseEntity<DutyScheduleEntity>>> execute(
      {required DutyScheduleFilterParamsModel params}) {
    return _dutyScheduleRepository.fetchDutyScheduleForToday(params: params);
  }
}
