import 'package:dartz/dartz.dart';
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/lab_schedule/domain/entities/lab_schedule_entity.dart';
import 'package:mobile/features/lab_schedule/domain/repositories/lab_schedule_repository.dart';

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
