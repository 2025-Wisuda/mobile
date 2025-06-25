import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';
import 'package:mobile/features/lab_schedule/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class FetchLabScheduleDetailUsecase {
  final LabScheduleRepository labScheduleRepository;

  FetchLabScheduleDetailUsecase(this.labScheduleRepository);

  Future<Either<Failure, BaseResponseEntity<LabScheduleEntity>>> execute({
    required String labScheduleId,
  }) {
    return labScheduleRepository.fetchLabScheduleDetail(labScheduleId);
  }
}
