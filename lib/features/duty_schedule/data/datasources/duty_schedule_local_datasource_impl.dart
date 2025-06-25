part of 'duty_schedule_local_datasource.dart';

class DutyScheduleLocalDatasourceImpl implements DutyScheduleLocalDatasource {
  final DutyScheduleDatabase _dutyScheduleDatabase;

  DutyScheduleLocalDatasourceImpl(this._dutyScheduleDatabase);

  @override
  Future<Either<Failure, void>> saveDutyScheduleForToday(
    List<DutyScheduleEntity> dutySchedule,
  ) async {
    try {
      await _dutyScheduleDatabase.saveDutyScheduleList(dutySchedule);
      return const Right(null);
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<DutyScheduleEntity>?>>
      getDutyScheduleForToday() async {
    try {
      final dutySchedule =
          await _dutyScheduleDatabase.getDutyScheduleForToday();
      return Right(dutySchedule);
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> clearDutyScheduleData() async {
    try {
      await _dutyScheduleDatabase.clearDutyScheduleData();
      return const Right(null);
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }
}
