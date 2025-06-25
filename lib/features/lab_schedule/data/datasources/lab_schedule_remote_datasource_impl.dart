part of 'lab_schedule_remote_datasource.dart';

class LabScheduleRemoteDataSourceImpl implements LabScheduleRemoteDataSource {
  final LabScheduleApiClient api;
  final Connectivity connectivity;
  final Dio dio;

  LabScheduleRemoteDataSourceImpl(this.api, this.connectivity, this.dio);

  @override
  Future<Either<Failure, BaseListResponseModel<LabScheduleModel>>>
      fetchListLabSchedule({LabScheduleFilterParamsModel? params}) async {
    try {
      final queryParams = params?.toQueryParameters() ?? {};
      final response = await api.fetchListLabSchedule(queryParams);
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(
            e,
            feature: 'labSchedule',
            action: 'fetchListLabSchedule',
          ),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseResponseModel<LabScheduleModel>>>
      fetchLabScheduleDetail(String labScheduleId) async {
    try {
      final response = await api.fetchLabScheduleDetail(labScheduleId);
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(
            e,
            feature: 'labSchedule',
            action: 'fetchLabScheduleDetail',
          ),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseListResponseModel<LabAvailabilityModel>>>
      fetchLabAvailability(String date) async {
    try {
      final response = await api.fetchLabAvailability(date);
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(
            e,
            feature: 'labSchedule',
            action: 'fetchLabAvailability',
          ),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseListResponseModel<LabScheduleModel>>>
      fetchMyLabSchedule({LabScheduleFilterParamsModel? params}) async {
    try {
      final queryParams = params?.toQueryParameters() ?? {};
      final response = await api.fetchMyLabSchedule(queryParams);
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(
            e,
            feature: 'labSchedule',
            action: 'fetchMyLabSchedule',
          ),
        ),
      );
    }
  }
}
