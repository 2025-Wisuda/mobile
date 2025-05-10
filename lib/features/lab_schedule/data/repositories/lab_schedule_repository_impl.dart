import 'package:dartz/dartz.dart';
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/lab_schedule/lab_schedule.dart';

class LabScheduleRepositoryImpl implements LabScheduleRepository {
  final LabScheduleRemoteDataSource labScheduleRemoteDataSource;

  LabScheduleRepositoryImpl(this.labScheduleRemoteDataSource);

  @override
  Future<Either<Failure, ListLabScheduleEntity>> fetchListLabSchedule({
    LabScheduleFilterParamsModel? params,
  }) async {
    final response = await labScheduleRemoteDataSource.fetchListLabSchedule(
      params: params,
    );
    return response.fold(
      (failure) => left(failure),
      (model) => right(model.toEntity()),
    );
  }

  @override
  Future<Either<Failure, LabScheduleEntity>> fetchLabScheduleDetail({
    required String labScheduleId,
  }) async {
    final response = await labScheduleRemoteDataSource.fetchLabScheduleDetail(
      labScheduleId: labScheduleId,
    );
    return response.fold(
      (failure) => left(failure),
      (model) => right(model.toEntity()),
    );
  }

  @override
  Future<Either<Failure, LabScheduleEntity>> updateLabSchedule({
    required UpdateLabScheduleRequestEntity data,
    required String labScheduleId,
  }) async {
    final response = await labScheduleRemoteDataSource.updateLabSchedule(
      data: data,
      labScheduleId: labScheduleId,
    );
    return response.fold(
      (failure) => left(failure),
      (model) => right(model.toEntity()),
    );
  }

  @override
  Future<Either<Failure, LabScheduleEntity>> approveLabSchedule({
    required ApprovalLabScheduleRequestEntity data,
    required String labScheduleId,
  }) async {
    final response = await labScheduleRemoteDataSource.approveLabSchedule(
      data: data,
      labScheduleId: labScheduleId,
    );
    return response.fold(
      (failure) => left(failure),
      (model) => right(model.toEntity()),
    );
  }

  @override
  Future<Either<Failure, LabScheduleEntity>> deleteLabSchedule({
    required String labScheduleId,
  }) async {
    final response = await labScheduleRemoteDataSource.deleteLabSchedule(
      labScheduleId: labScheduleId,
    );
    return response.fold(
      (failure) => left(failure),
      (model) => right(model.toEntity()),
    );
  }
}
