part of 'duty_attendance_remote_datasource.dart';

class DutyAttendanceRemoteDatasourceImpl
    implements DutyAttendanceRemoteDatasource {
  final DutyAttendanceApiClient _dutyAttendanceApiClient;
  final Connectivity connectivity;
  final Dio dio;

  DutyAttendanceRemoteDatasourceImpl(
      this._dutyAttendanceApiClient, this.connectivity, this.dio);

  @override
  Future<Either<Failure, BaseResponseModel<OtpValidationResponseModel>>>
      validateOtp({required String otpCode}) async {
    try {
      final request = OtpValidationRequestModel(otpCode: otpCode);
      final response = await _dutyAttendanceApiClient.validateOtp(request);
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(
            e,
            feature: 'dutySchedule',
            action: 'validateOtp',
          ),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseListResponseModel<DutyAttendanceModel>>>
      fetchMyAttendanceRecords({
    DutyAttendanceFilterParamsModel? params,
  }) async {
    try {
      final queryParams = params?.toQueryParameters() ?? {};
      final response =
          await _dutyAttendanceApiClient.fetchMyAttendanceRecords(queryParams);
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(
            e,
            feature: 'dutySchedule',
            action: 'fetchMyAttendanceRecords',
          ),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseResponseModel<DutyAttendanceModel>>>
      manualOverrideAttendance({
    required String attendanceId,
    required String action,
  }) async {
    try {
      final request = ManualOverrideRequestModel(action: action);
      final response = await _dutyAttendanceApiClient.manualOverrideAttendance(
          attendanceId, request);
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(
            e,
            feature: 'dutySchedule',
            action: 'manualOverrideAttendance',
          ),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseListResponseModel<DutyAttendanceModel>>>
      fetchListDutyAttendances(
          {DutyAttendanceFilterParamsModel? params}) async {
    try {
      final queryParams = params?.toQueryParameters() ?? {};
      final response =
          await _dutyAttendanceApiClient.fetchListDutyAttendances(queryParams);
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(
            e,
            feature: 'dutySchedule',
            action: 'fetchListDutyAttendances',
          ),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseResponseModel<DutyAttendanceModel>>>
      fetchDutyAttendanceDetail({required String attendanceId}) async {
    try {
      final response = await _dutyAttendanceApiClient
          .fetchDutyAttendanceDetail(attendanceId);
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(e,
              feature: 'dutySchedule', action: 'fetchDutyAttendanceDetail'),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseResponseModel<DutyAttendanceStatisticsModel>>>
      fetchAttendanceStatistics({
    String? startDate,
    String? endDate,
    String? assistantId,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (startDate != null) queryParams['start_date'] = startDate;
      if (endDate != null) queryParams['end_date'] = endDate;
      if (assistantId != null) queryParams['assistant_id'] = assistantId;

      final response =
          await _dutyAttendanceApiClient.fetchAttendanceStatistics(queryParams);
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(e,
              feature: 'dutySchedule', action: 'fetchAttendanceStatistics'),
        ),
      );
    }
  }
}
