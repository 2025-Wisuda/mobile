part of 'duty_schedule_remote_datasource.dart';

class DutyScheduleRemoteDatasourceImpl implements DutyScheduleRemoteDatasource {
  final DutyScheduleApiClient _dutyScheduleApiClient;
  final Connectivity connectivity;
  final Dio dio;

  DutyScheduleRemoteDatasourceImpl(
      this._dutyScheduleApiClient, this.connectivity, this.dio);

  @override
  Future<Either<Failure, BaseListResponseModel<DutyScheduleListModel>>>
      fetchListDutySchedule({DutyScheduleFilterParamsModel? params}) async {
    try {
      final queryParams = params?.toQueryParameters() ?? {};
      final response =
          await _dutyScheduleApiClient.fetchListDutySchedule(queryParams);
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(
            e,
            feature: 'dutySchedule',
            action: 'fetchListDutySchedule',
          ),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseListResponseModel<DutyScheduleModel>>>
      fetchDutyScheduleForToday(
          {required DutyScheduleFilterParamsModel params}) async {
    try {
      final queryParams = params.toQueryParameters();
      final response =
          await _dutyScheduleApiClient.fetchDutyScheduleForToday(queryParams);
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(
            e,
            feature: 'dutySchedule',
            action: 'fetchDutyScheduleForToday',
          ),
        ),
      );
    }
  }
}
