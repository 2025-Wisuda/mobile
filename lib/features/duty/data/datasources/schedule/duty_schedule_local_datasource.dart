import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/duty/domain/entities/entity.dart';
import 'package:mobile/shared/databases/database.dart';
import 'package:mobile/shared/errors/error.dart';

part 'duty_schedule_local_datasource_impl.dart';

abstract class DutyScheduleLocalDatasource {
  Future<Either<Failure, void>> saveDutyScheduleForToday(
    List<DutyScheduleEntity> dutyScheduleEntity,
  );
  Future<Either<Failure, List<DutyScheduleEntity>?>> getDutyScheduleForToday();
  Future<Either<Failure, void>> clearDutyScheduleData();
}
