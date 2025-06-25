import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:mobile/features/lab_schedule/data/models/model.dart';
import 'package:mobile/shared/models/model.dart';

part 'lab_schedule_api_client.g.dart';

@RestApi()
abstract class LabScheduleApiClient {
  factory LabScheduleApiClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _LabScheduleApiClient;

  @GET("/lab-schedules")
  Future<BaseListResponseModel<LabScheduleModel>> fetchListLabSchedule(
    @Queries() Map<String, dynamic> queries,
  );

  @GET("/lab-schedules/{id}")
  Future<BaseResponseModel<LabScheduleModel>> fetchLabScheduleDetail(
    @Path("id") String id,
  );

  @GET("/lab-schedules/availability")
  Future<BaseListResponseModel<LabAvailabilityModel>> fetchLabAvailability(
    @Query("date") String date,
  );

  @GET("/lab-schedules/me")
  Future<BaseListResponseModel<LabScheduleModel>> fetchMyLabSchedule(
    @Queries() Map<String, dynamic> queries,
  );
}
