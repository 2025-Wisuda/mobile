// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';
import 'package:mobile/features/lab_schedule/domain/repositories/repository.dart';

class ApproveLabScheduleUsecase {
  final LabScheduleRepository labScheduleRepository;

  ApproveLabScheduleUsecase(this.labScheduleRepository);

  Future<Either<Failure, LabScheduleEntity>> execute({
    required ApprovalLabScheduleRequestEntity data,
    required String labScheduleId,
  }) {
    return labScheduleRepository.approveLabSchedule(
      data: data,
      labScheduleId: labScheduleId,
    );
  }
}
