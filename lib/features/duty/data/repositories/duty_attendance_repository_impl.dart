import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/duty/data/data.dart';
import 'package:mobile/features/duty/domain/domain.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/models/model.dart';

class DutyAttendanceRepositoryImpl implements DutyAttendanceRepository {
  final DutyAttendanceRemoteDatasource _dutyAttendanceRemoteDatasource;

  DutyAttendanceRepositoryImpl(
    this._dutyAttendanceRemoteDatasource,
  );

  @override
  Future<Either<Failure, OtpValidationResponseEntity>> validateOtp(
      {required String otpCode}) async {
    final response = await _dutyAttendanceRemoteDatasource.validateOtp(
      otpCode: otpCode,
    );
    return response.map((model) => model.data!.toEntity());
  }

  @override
  Future<Either<Failure, BaseListResponseEntity<DutyAttendanceEntity>>>
      fetchMyAttendanceRecords(
          {DutyAttendanceFilterParamsModel? params}) async {
    final response =
        await _dutyAttendanceRemoteDatasource.fetchMyAttendanceRecords(
      params: params,
    );
    return response.map(
      (model) => model.toEntity((attendance) => attendance.toEntity()),
    );
  }

  @override
  Future<Either<Failure, DutyAttendanceEntity>> manualOverrideAttendance({
    required String attendanceId,
    required String action,
  }) async {
    final response =
        await _dutyAttendanceRemoteDatasource.manualOverrideAttendance(
      attendanceId: attendanceId,
      action: action,
    );
    return response.map((model) => model.data!.toEntity());
  }

  @override
  Future<Either<Failure, BaseListResponseEntity<DutyAttendanceEntity>>>
      fetchListDutyAttendances(
          {DutyAttendanceFilterParamsModel? params}) async {
    final response =
        await _dutyAttendanceRemoteDatasource.fetchListDutyAttendances(
      params: params,
    );
    return response.map(
      (model) => model.toEntity((attendance) => attendance.toEntity()),
    );
  }

  @override
  Future<Either<Failure, BaseResponseEntity<DutyAttendanceEntity>>>
      fetchDutyAttendanceDetail({
    required String attendanceId,
  }) async {
    final response =
        await _dutyAttendanceRemoteDatasource.fetchDutyAttendanceDetail(
      attendanceId: attendanceId,
    );
    return response
        .map((model) => model.toEntity((attendance) => attendance.toEntity()));
  }

  @override
  Future<Either<Failure, BaseResponseEntity<DutyAttendanceStatisticsEntity>>>
      fetchAttendanceStatistics({
    String? startDate,
    String? endDate,
    String? assistantId,
  }) async {
    final response =
        await _dutyAttendanceRemoteDatasource.fetchAttendanceStatistics(
      startDate: startDate,
      endDate: endDate,
      assistantId: assistantId,
    );
    return response.map((model) => model.toEntity((stats) => stats.toEntity()));
  }
}
