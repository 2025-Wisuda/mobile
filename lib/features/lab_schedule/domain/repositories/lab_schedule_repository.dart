// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/lab_schedule/data/models/model.dart';
import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';

abstract class LabScheduleRepository {
  Future<Either<Failure, ListLabScheduleEntity>> fetchListLabSchedule({
    LabScheduleFilterParamsModel? params,
  });
  Future<Either<Failure, LabScheduleEntity>> fetchLabScheduleDetail({
    required String labScheduleId,
  });
  Future<Either<Failure, LabScheduleEntity>> approveLabSchedule({
    required ApprovalLabScheduleRequestEntity data,
    required String labScheduleId,
  });
}
