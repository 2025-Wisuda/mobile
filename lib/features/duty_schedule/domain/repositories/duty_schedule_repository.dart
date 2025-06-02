import 'package:fpdart/fpdart.dart';
import 'package:mobile/core/errors/error.dart';
import 'package:mobile/features/duty_schedule/data/models/model.dart';
import 'package:mobile/features/duty_schedule/domain/entities/entity.dart';
import 'package:mobile/shared/entities/entity.dart';

abstract class DutyScheduleRepository {
  Future<Either<Failure, BaseListResponseEntity<DutyScheduleEntity>>>
  fetchListDutySchedule({DutyScheduleFilterParamsModel? params});
  Future<Either<Failure, BaseResponseEntity<DutyScheduleEntity>>>
  fetchDutyScheduleDetail({required String dutyScheduleId});
  Future<Either<Failure, BaseResponseEntity<DutyScheduleEntity>>>
  createDutySchedule({required SaveDutyScheduleRequestEntity data});
  Future<Either<Failure, BaseResponseEntity<DutyScheduleEntity>>>
  updateDutySchedule({
    required String dutyScheduleId,
    required SaveDutyScheduleRequestEntity data,
  });
  Future<Either<Failure, void>> deleteDutySchedule({
    required String dutyScheduleId,
  });
  Future<Either<Failure, void>> saveDutySchedule(
    DutyScheduleEntity user,
  );
  Future<Either<Failure, DutyScheduleEntity?>> getDutySchedule();
  Future<Either<Failure, void>> clearDutyScheduleData();
}
