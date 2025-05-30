// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/duty_schedule/data/models/model.dart';
import 'package:mobile/features/duty_schedule/domain/entities/entity.dart';
import 'package:mobile/features/duty_schedule/domain/repositories/repository.dart';

class FetchListDutyScheduleUsecase {
  final DutyScheduleRepository dutyScheduleRepository;

  FetchListDutyScheduleUsecase(this.dutyScheduleRepository);

  Future<Either<Failure, ListDutyScheduleEntity>> execute({
    DutyScheduleFilterParamsModel? params,
  }) {
    return dutyScheduleRepository.fetchListDutySchedule(params: params);
  }
}
