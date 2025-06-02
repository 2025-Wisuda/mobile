import 'package:fpdart/fpdart.dart';
import 'package:mobile/core/errors/error.dart';
import 'package:mobile/features/duty_schedule/data/models/model.dart';
import 'package:mobile/features/duty_schedule/domain/entities/entity.dart';
import 'package:mobile/features/duty_schedule/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';

import 'package:injectable/injectable.dart';

@injectable


class FetchListDutyScheduleUsecase {
  final DutyScheduleRepository dutyScheduleRepository;

  FetchListDutyScheduleUsecase(this.dutyScheduleRepository);

  Future<Either<Failure,BaseListResponseEntity<DutyScheduleEntity>>> execute({
    DutyScheduleFilterParamsModel? params,
  }) {
    return dutyScheduleRepository.fetchListDutySchedule(params: params);
  }
}
