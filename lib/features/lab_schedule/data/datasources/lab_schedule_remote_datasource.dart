import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/lab_schedule/data/datasources/lab_schedule_api_client.dart';
import 'package:mobile/features/lab_schedule/data/models/model.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/models/model.dart';

part 'lab_schedule_remote_datasource_impl.dart';

abstract class LabScheduleRemoteDataSource {
  Future<Either<Failure, BaseListResponseModel<LabScheduleModel>>>
      fetchListLabSchedule({LabScheduleFilterParamsModel? params});
  Future<Either<Failure, BaseResponseModel<LabScheduleModel>>>
      fetchLabScheduleDetail(String labScheduleId);
  Future<Either<Failure, BaseListResponseModel<LabAvailabilityModel>>>
      fetchLabAvailability(String date);
  Future<Either<Failure, BaseListResponseModel<LabScheduleModel>>>
      fetchMyLabSchedule({LabScheduleFilterParamsModel? params});
}
