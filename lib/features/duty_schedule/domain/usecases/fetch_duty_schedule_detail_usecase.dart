// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/duty_schedule/domain/entities/entity.dart';
import 'package:mobile/features/duty_schedule/domain/repositories/repository.dart';

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
