import 'package:dartz/dartz.dart';
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/duty_schedule/data/models/duty_schedule_filter_params_model.dart';
import 'package:mobile/features/duty_schedule/domain/entities/entity.dart';

abstract class DutyScheduleRepository {
  Future<Either<Failure, ListDutyScheduleEntity>> fetchListDutySchedule({
    DutyScheduleFilterParamsModel? params,
  });
  Future<Either<Failure, DutyScheduleEntity>> fetchDutyScheduleDetail({
    required String dutyScheduleId,
  });
}
