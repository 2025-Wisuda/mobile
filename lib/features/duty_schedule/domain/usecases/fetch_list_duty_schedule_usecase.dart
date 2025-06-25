import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/duty_schedule/data/models/model.dart';
import 'package:mobile/features/duty_schedule/domain/entities/entity.dart';
import 'package:mobile/features/duty_schedule/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class FetchListDutyScheduleUsecase {
  final DutyScheduleRepository _dutyScheduleRepository;

  FetchListDutyScheduleUsecase(this._dutyScheduleRepository);

  Future<Either<Failure, BaseListResponseEntity<DutyScheduleListEntity>>>
      execute({DutyScheduleFilterParamsModel? params}) {
    return _dutyScheduleRepository.fetchListDutySchedule(params: params);
  }
}
