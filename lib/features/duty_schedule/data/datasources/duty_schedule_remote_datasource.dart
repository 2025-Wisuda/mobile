import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import 'package:mobile/core/core.dart';
import 'package:mobile/core/errors/error.dart';
import 'package:mobile/features/duty_schedule/data/datasources/datasource.dart';
import 'package:mobile/features/duty_schedule/data/models/model.dart';
import 'package:mobile/features/duty_schedule/domain/entities/entity.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/models/model.dart';

part 'duty_schedule_remote_datasource_impl.dart';

abstract class DutyScheduleRemoteDatasource {
  Future<Either<Failure, BaseListResponseModel<DutyScheduleModel>>> fetchListDutySchedule({
    DutyScheduleFilterParamsModel? params,
  });

  Future<Either<Failure, BaseResponseModel<DutyScheduleModel>>> fetchDutyScheduleDetail(String dutyScheduleId);

  Future<Either<Failure, BaseResponseModel<DutyScheduleModel>>> createDutySchedule({
    required SaveDutyScheduleRequestModel data,
  });

  Future<Either<Failure, BaseResponseModel<DutyScheduleModel>>> updateDutySchedule({
    required String dutyScheduleId,
    required SaveDutyScheduleRequestModel data,
  });

  Future<Either<Failure, void>> deleteDutySchedule(String dutyScheduleId);
}
