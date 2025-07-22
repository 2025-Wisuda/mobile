import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/duty/data/datasources/datasource.dart';
import 'package:mobile/features/duty/data/models/model.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/models/model.dart';

part 'duty_attendance_remote_datasource_impl.dart';

abstract class DutyAttendanceRemoteDatasource {
  Future<Either<Failure, BaseResponseModel<OtpValidationResponseModel>>>
      validateOtp({required String otpCode});

  Future<Either<Failure, BaseListResponseModel<DutyAttendanceModel>>>
      fetchMyAttendanceRecords({
    DutyAttendanceFilterParamsModel? params,
  });

  Future<Either<Failure, BaseResponseModel<DutyAttendanceModel>>>
      manualOverrideAttendance({
    required String attendanceId,
    required String action,
  });

  Future<Either<Failure, BaseListResponseModel<DutyAttendanceModel>>>
      fetchListDutyAttendances({DutyAttendanceFilterParamsModel? params});

  Future<Either<Failure, BaseResponseModel<DutyAttendanceModel>>>
      fetchDutyAttendanceDetail({required String attendanceId});

  Future<Either<Failure, BaseResponseModel<DutyAttendanceStatisticsModel>>>
      fetchAttendanceStatistics({
    String? startDate,
    String? endDate,
    String? assistantId,
  });
}
