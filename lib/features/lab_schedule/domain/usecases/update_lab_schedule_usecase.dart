import 'package:dartz/dartz.dart';
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';
import 'package:mobile/features/lab_schedule/domain/repositories/repository.dart';

class UpdateLabScheduleUsecase {
  final LabScheduleRepository labScheduleRepository;

  UpdateLabScheduleUsecase(this.labScheduleRepository);

  Future<Either<Failure, LabScheduleEntity>> execute({
    required UpdateLabScheduleRequestEntity data,
    required String labScheduleId,
  }) {
    return labScheduleRepository.updateLabSchedule(
      data: data,
      labScheduleId: labScheduleId,
    );
  }
}
