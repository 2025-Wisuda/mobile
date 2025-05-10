import 'package:dartz/dartz.dart';
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/duty_schedule/domain/entities/duty_schedule_entity.dart';
import 'package:mobile/features/duty_schedule/domain/repositories/duty_schedule_repository.dart';

class FetchDutyScheduleDetailUsecase {
  final DutyScheduleRepository dutyScheduleRepository;

  FetchDutyScheduleDetailUsecase(this.dutyScheduleRepository);

  Future<Either<Failure, DutyScheduleEntity>> execute({
    required String dutyScheduleId,
  }) {
    return dutyScheduleRepository.fetchDutyScheduleDetail(
      dutyScheduleId: dutyScheduleId,
    );
  }
}
