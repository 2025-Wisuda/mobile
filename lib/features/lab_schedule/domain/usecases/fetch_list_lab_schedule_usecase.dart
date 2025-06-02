// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/lab_schedule/data/models/model.dart';
import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';
import 'package:mobile/features/lab_schedule/domain/repositories/repository.dart';

class FetchListLabScheduleUsecase {
  final LabScheduleRepository labScheduleRepository;

  FetchListLabScheduleUsecase(this.labScheduleRepository);

  Future<Either<Failure, ListLabScheduleEntity>> execute({
    LabScheduleFilterParamsModel? params,
  }) {
    return labScheduleRepository.fetchListLabSchedule(params: params);
  }
}
