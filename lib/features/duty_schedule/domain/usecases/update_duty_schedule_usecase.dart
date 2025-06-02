import 'package:fpdart/fpdart.dart';
import 'package:mobile/core/errors/error.dart';
import 'package:mobile/features/duty_schedule/domain/entities/entity.dart';
import 'package:mobile/features/duty_schedule/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';

import 'package:injectable/injectable.dart';

@injectable
class UpdateDutyScheduleUsecase {
  final DutyScheduleRepository dutyScheduleRepository;

  UpdateDutyScheduleUsecase(this.dutyScheduleRepository);

  Future<Either<Failure, BaseResponseEntity<DutyScheduleEntity>>> execute({
    required String dutyScheduleId,
    required SaveDutyScheduleRequestEntity data,
  }) {
    return dutyScheduleRepository.updateDutySchedule(
      dutyScheduleId: dutyScheduleId,
      data: data,
    );
  }
}
