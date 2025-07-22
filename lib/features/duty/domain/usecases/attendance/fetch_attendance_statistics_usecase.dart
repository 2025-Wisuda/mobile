import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/duty/domain/entities/entity.dart';
import 'package:mobile/features/duty/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class FetchAttendanceStatisticsUseCase {
  final DutyAttendanceRepository _dutyAttendanceRepository;

  FetchAttendanceStatisticsUseCase(this._dutyAttendanceRepository);

  Future<Either<Failure, BaseResponseEntity<DutyAttendanceStatisticsEntity>>>
      execute(FetchAttendanceStatisticsParams params) async {
    return await _dutyAttendanceRepository.fetchAttendanceStatistics(
      startDate: params.startDate,
      endDate: params.endDate,
      assistantId: params.assistantId,
    );
  }
}

class FetchAttendanceStatisticsParams {
  final String? startDate;
  final String? endDate;
  final String? assistantId;

  FetchAttendanceStatisticsParams({
    this.startDate,
    this.endDate,
    this.assistantId,
  });
}
