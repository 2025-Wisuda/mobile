import 'package:dartz/dartz.dart';
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/schedule/data/models/lab_schedule_filter_params_model.dart';
import 'package:mobile/features/schedule/domain/entities/list_lab_schedule_entity.dart';
import 'package:mobile/features/schedule/domain/repositories/lab_schedule_repository.dart';

class FetchListLabScheduleUsecase {
  final LabScheduleRepository labScheduleRepository;

  FetchListLabScheduleUsecase(this.labScheduleRepository);

  Future<Either<Failure, ListLabScheduleEntity>> execute({
    LabScheduleFilterParamsModel? params,
  }) {
    return labScheduleRepository.fetchListLabSchedule(params: params);
  }
}
