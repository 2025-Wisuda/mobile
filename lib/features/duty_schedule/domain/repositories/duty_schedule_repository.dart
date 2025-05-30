// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/duty_schedule/data/models/model.dart';
import 'package:mobile/features/duty_schedule/domain/entities/entity.dart';

abstract class DutyScheduleRepository {
  Future<Either<Failure, ListDutyScheduleEntity>> fetchListDutySchedule({
    DutyScheduleFilterParamsModel? params,
  });
  Future<Either<Failure, DutyScheduleEntity>> fetchDutyScheduleDetail({
    required String dutyScheduleId,
  });
}
