import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/duty_schedule/data/datasources/datasource.dart';
import 'package:mobile/features/duty_schedule/data/models/model.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/models/model.dart';

part 'duty_schedule_remote_datasource_impl.dart';

abstract class DutyScheduleRemoteDatasource {
  Future<Either<Failure, BaseListResponseModel<DutyScheduleListModel>>>
      fetchListDutySchedule({DutyScheduleFilterParamsModel? params});

  Future<Either<Failure, BaseListResponseModel<DutyScheduleModel>>>
      fetchDutyScheduleForToday(
          {required DutyScheduleFilterParamsModel params});
}
