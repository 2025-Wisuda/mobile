import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:mobile/features/duty/data/models/model.dart';
import 'package:mobile/shared/models/model.dart';

part 'duty_attendance_api_client.g.dart';

@RestApi()
abstract class DutyAttendanceApiClient {
  factory DutyAttendanceApiClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _DutyAttendanceApiClient;

  @POST("/duty-attendances/validate-otp")
  Future<BaseResponseModel<OtpValidationResponseModel>> validateOtp(
    @Body() OtpValidationRequestModel request,
  );

  @GET("/duty-attendances/me")
  Future<BaseListResponseModel<DutyAttendanceModel>> fetchMyAttendanceRecords(
    @Queries() Map<String, dynamic> queries,
  );

  @PATCH("/duty-attendances/{id}/manual-override")
  Future<BaseResponseModel<DutyAttendanceModel>> manualOverrideAttendance(
    @Path("id") String attendanceId,
    @Body() ManualOverrideRequestModel request,
  );

  @GET("/duty-attendances")
  Future<BaseListResponseModel<DutyAttendanceModel>> fetchListDutyAttendances(
    @Queries() Map<String, dynamic> queries,
  );

  @GET("/duty-attendances/{id}")
  Future<BaseResponseModel<DutyAttendanceModel>> fetchDutyAttendanceDetail(
    @Path("id") String attendanceId,
  );

  @GET("/duty-attendances/statistics")
  Future<BaseResponseModel<DutyAttendanceStatisticsModel>>
      fetchAttendanceStatistics(
    @Queries() Map<String, dynamic> queries,
  );
}
