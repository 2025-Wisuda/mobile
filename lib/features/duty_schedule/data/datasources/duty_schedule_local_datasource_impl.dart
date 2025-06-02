part of 'duty_schedule_local_datasource.dart';

@Singleton(as: DutyScheduleLocalDatasource)
class DutyScheduleLocalDatasourceImpl implements DutyScheduleLocalDatasource {
  final DutyScheduleDatabase _dutyScheduleDatabase;

  DutyScheduleLocalDatasourceImpl(this._dutyScheduleDatabase);

  @override
  Future<Either<Failure, void>> saveDutySchedule(
    DutyScheduleEntity dutySchedule,
  ) async {
    try {
      await _dutyScheduleDatabase.saveDutySchedule(dutySchedule);
      return const Right(null);
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, DutyScheduleEntity?>> getDutySchedule() async {
    try {
      final dutySchedule = await _dutyScheduleDatabase.getDutySchedule();
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
