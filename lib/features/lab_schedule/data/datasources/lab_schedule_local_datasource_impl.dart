part of 'lab_schedule_local_datasource.dart';

class LabScheduleLocalDatasourceImpl implements LabScheduleLocalDatasource {
  final LabScheduleDatabase _labScheduleDatabase;

  LabScheduleLocalDatasourceImpl(this._labScheduleDatabase);

  @override
  Future<Either<Failure, void>> saveLabScheduleList(
    List<LabScheduleEntity> schedules,
  ) async {
    try {
      await _labScheduleDatabase.saveLabScheduleList(schedules);
      return const Right(null);
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<LabScheduleEntity>>> getLabScheduleList() async {
    try {
      final schedules = await _labScheduleDatabase.getLabScheduleList();
      return Right(schedules);
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> clearLabScheduleData() async {
    try {
      await _labScheduleDatabase.clearLabScheduleData();
      return const Right(null);
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }
}
