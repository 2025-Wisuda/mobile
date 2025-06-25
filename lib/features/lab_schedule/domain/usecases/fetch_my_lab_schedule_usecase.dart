import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/lab_schedule/data/models/model.dart';
import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';
import 'package:mobile/features/lab_schedule/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class FetchMyLabScheduleUsecase {
  final LabScheduleRepository labScheduleRepository;

  FetchMyLabScheduleUsecase(this.labScheduleRepository);

  Future<Either<Failure, BaseListResponseEntity<LabScheduleEntity>>> execute({
    LabScheduleFilterParamsModel? params,
  }) {
    return labScheduleRepository.fetchMyLabSchedule(params: params);
  }
}
