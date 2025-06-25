import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';
import 'package:mobile/features/lab_schedule/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class FetchLabAvailabilityUsecase {
  final LabScheduleRepository _labScheduleRepository;

  FetchLabAvailabilityUsecase(this._labScheduleRepository);

  Future<Either<Failure, BaseListResponseEntity<LabAvailabilityEntity>>>
      execute({
    required String date,
  }) async {
    return await _labScheduleRepository.fetchLabAvailability(date);
  }
}
