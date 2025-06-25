import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';
import 'package:mobile/shared/databases/database.dart';
import 'package:mobile/shared/errors/error.dart';

part 'lab_schedule_local_datasource_impl.dart';

abstract class LabScheduleLocalDatasource {
  Future<Either<Failure, void>> saveLabScheduleList(
    List<LabScheduleEntity> schedules,
  );
  Future<Either<Failure, List<LabScheduleEntity>>> getLabScheduleList();
  Future<Either<Failure, void>> clearLabScheduleData();
}
