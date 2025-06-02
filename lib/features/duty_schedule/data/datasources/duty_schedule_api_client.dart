import 'package:dio/dio.dart';
import 'package:mobile/features/duty_schedule/data/models/model.dart';
import 'package:mobile/shared/models/model.dart';
import 'package:retrofit/retrofit.dart';

import 'package:mobile/features/user/data/models/model.dart';

part 'duty_schedule_api_client.g.dart';

@RestApi()
abstract class DutyScheduleApiClient {
  factory DutyScheduleApiClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _DutyScheduleApiClient;

  @GET("/duty-schedules")
  Future<BaseListResponseModel<DutyScheduleModel>> fetchListDutySchedule(
    @Queries() Map<String, dynamic> queries,
  );

  @GET("/duty-schedules/{id}")
  Future<BaseResponseModel<DutyScheduleModel>> fetchDutyScheduleDetail(
    @Path("id") String dutyScheduleId,
  );

  @POST("/duty-schedules")
  Future<BaseResponseModel<DutyScheduleModel>> createDutySchedule(
    @Body() SaveDutyScheduleRequestModel data,
  );

  @PATCH("/duty-schedules/{id}")
  Future<BaseResponseModel<DutyScheduleModel>> updateDutySchedule(
    @Path("id") String dutyScheduleId,
    @Body() SaveDutyScheduleRequestModel data,
  );

  @DELETE("/duty-schedules/{id}")
  Future<void> deleteDutySchedule(@Path("id") String dutyScheduleId);
}
