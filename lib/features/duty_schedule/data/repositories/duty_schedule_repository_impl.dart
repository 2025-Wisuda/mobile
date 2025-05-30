// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/duty_schedule/data/data.dart';
import 'package:mobile/features/duty_schedule/domain/domain.dart';

class DutyScheduleRepositoryImpl implements DutyScheduleRepository {
  final DutyScheduleRemoteDataSource dutyScheduleRemoteDataSource;

  DutyScheduleRepositoryImpl(this.dutyScheduleRemoteDataSource);

  @override
  Future<Either<Failure, ListDutyScheduleEntity>> fetchListDutySchedule({
    DutyScheduleFilterParamsModel? params,
  }) async {
    final response = await dutyScheduleRemoteDataSource.fetchListDutySchedule(
      params: params,
    );
    return response.fold(
      (failure) => left(failure),
      (model) => right(model.toEntity()),
    );
  }

  @override
  Future<Either<Failure, DutyScheduleEntity>> fetchDutyScheduleDetail({
    required String dutyScheduleId,
  }) async {
    final response = await dutyScheduleRemoteDataSource.fetchDutyScheduleDetail(
      dutyScheduleId: dutyScheduleId,
    );
    return response.fold(
      (failure) => left(failure),
      (model) => right(model.toEntity()),
    );
  }
}
