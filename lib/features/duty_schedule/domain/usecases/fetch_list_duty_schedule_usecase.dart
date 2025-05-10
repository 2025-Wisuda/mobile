import 'package:dartz/dartz.dart';
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/duty_schedule/data/models/duty_schedule_filter_params_model.dart';
import 'package:mobile/features/duty_schedule/domain/entities/list_duty_schedule_entity.dart';
import 'package:mobile/features/duty_schedule/domain/repositories/duty_schedule_repository.dart';

class FetchListDutyScheduleUsecase {
  final DutyScheduleRepository dutyScheduleRepository;

  FetchListDutyScheduleUsecase(this.dutyScheduleRepository);

  Future<Either<Failure, ListDutyScheduleEntity>> execute({
    DutyScheduleFilterParamsModel? params,
  }) {
    return dutyScheduleRepository.fetchListDutySchedule(params: params);
  }
}
