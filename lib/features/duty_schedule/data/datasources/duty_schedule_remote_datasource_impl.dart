part of 'duty_schedule_remote_datasource.dart';

@Injectable(as: DutyScheduleRemoteDatasource)
class DutyScheduleRemoteDatasourceImpl implements DutyScheduleRemoteDatasource {
  final DutyScheduleApiClient api;
  final Connectivity connectivity;
  final Dio dio;

  DutyScheduleRemoteDatasourceImpl(this.api, this.connectivity, this.dio);

  Future<bool> _hasConnection() async {
    final results = await connectivity.checkConnectivity();
    return results.any(
      (result) =>
          result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi,
    );
  }

  @override
  Future<Either<Failure, BaseListResponseModel<DutyScheduleModel>>>
  fetchListDutySchedule({DutyScheduleFilterParamsModel? params}) async {
    if (!await _hasConnection()) return left(NoConnectionFailure());
    try {
      final queryParams = params?.toQueryParameters() ?? {};
      final response = await api.fetchListDutySchedule(queryParams);
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
  Future<Either<Failure, BaseResponseModel<DutyScheduleModel>>>
  fetchDutyScheduleDetail(String dutyScheduleId) async {
    if (!await _hasConnection()) return left(NoConnectionFailure());

    try {
      final response = await api.fetchDutyScheduleDetail(dutyScheduleId);
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(
            e,
            feature: 'dutySchedule',
            action: 'fetchDutyScheduleDetail',
          ),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseResponseModel<DutyScheduleModel>>>
  createDutySchedule({required SaveDutyScheduleRequestModel data}) async {
    if (!await _hasConnection()) return left(NoConnectionFailure());

    try {
      final response = await api.createDutySchedule(data);
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(
            e,
            feature: 'dutySchedule',
            action: 'createDutySchedule',
          ),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseResponseModel<DutyScheduleModel>>>
  updateDutySchedule({
    required String dutyScheduleId,
    required SaveDutyScheduleRequestModel data,
  }) async {
    if (!await _hasConnection()) return left(NoConnectionFailure());

    try {
      final response = await api.updateDutySchedule(dutyScheduleId, data);
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(
            e,
            feature: 'dutySchedule',
            action: 'updateDutySchedule',
          ),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, void>> deleteDutySchedule(
    String dutyScheduleId,
  ) async {
    if (!await _hasConnection()) return left(NoConnectionFailure());

    try {
      await api.deleteDutySchedule(dutyScheduleId);
      return right(null);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(
            e,
            feature: 'dutySchedule',
            action: 'deleteDutySchedule',
          ),
        ),
      );
    }
  }
}
