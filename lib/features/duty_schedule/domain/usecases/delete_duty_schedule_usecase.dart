import 'package:fpdart/fpdart.dart';
import 'package:mobile/core/errors/error.dart';
import 'package:mobile/features/duty_schedule/domain/repositories/repository.dart';
import 'package:injectable/injectable.dart';

@injectable

class DeleteDutyScheduleUsecase {
  final DutyScheduleRepository dutyScheduleRepository;

  DeleteDutyScheduleUsecase(this.dutyScheduleRepository);

  Future<Either<Failure, void>> execute({
    required String dutyScheduleId,
  }) {
    return dutyScheduleRepository.deleteDutySchedule(
      dutyScheduleId: dutyScheduleId,
    );
  }
}