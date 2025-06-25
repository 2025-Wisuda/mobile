import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/lab_schedule/data/models/model.dart';
import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

abstract class LabScheduleRepository {
  Future<Either<Failure, BaseListResponseEntity<LabScheduleEntity>>>
      fetchListLabSchedule({LabScheduleFilterParamsModel? params});
  Future<Either<Failure, BaseResponseEntity<LabScheduleEntity>>>
      fetchLabScheduleDetail(String labScheduleId);
  Future<Either<Failure, BaseListResponseEntity<LabAvailabilityEntity>>>
      fetchLabAvailability(String date);
  Future<Either<Failure, BaseListResponseEntity<LabScheduleEntity>>>
      fetchMyLabSchedule({LabScheduleFilterParamsModel? params});
}
