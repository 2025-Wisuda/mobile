import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:mobile/features/duty/data/models/model.dart';
import 'package:mobile/shared/models/model.dart';

part 'duty_schedule_api_client.g.dart';

@RestApi()
abstract class DutyScheduleApiClient {
  factory DutyScheduleApiClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _DutyScheduleApiClient;

  @GET("/duty-schedules")
  Future<BaseListResponseModel<DutyScheduleListModel>> fetchListDutySchedule(
    @Queries() Map<String, dynamic> queries,
  );

  @GET("/duty-schedules/today")
  Future<BaseListResponseModel<DutyScheduleModel>> fetchDutyScheduleForToday(
    @Queries() Map<String, dynamic> queries,
  );
}
