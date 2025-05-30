// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';
import 'package:mobile/features/lab_schedule/domain/repositories/repository.dart';

class FetchLabScheduleDetailUsecase {
  final LabScheduleRepository labScheduleRepository;

  FetchLabScheduleDetailUsecase(this.labScheduleRepository);

  Future<Either<Failure, LabScheduleEntity>> execute({
    required String labScheduleId,
  }) {
    return labScheduleRepository.fetchLabScheduleDetail(
      labScheduleId: labScheduleId,
    );
  }
}
