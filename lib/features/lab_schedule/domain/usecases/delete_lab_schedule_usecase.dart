import 'package:dartz/dartz.dart';
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';
import 'package:mobile/features/lab_schedule/domain/repositories/repository.dart';

class DeleteLabScheduleUsecase {
  final LabScheduleRepository labScheduleRepository;

  DeleteLabScheduleUsecase(this.labScheduleRepository);

  Future<Either<Failure, LabScheduleEntity>> execute({
    required String labScheduleId,
  }) {
    return labScheduleRepository.deleteLabSchedule(
      labScheduleId: labScheduleId,
    );
  }
}
