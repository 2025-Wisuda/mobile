part of 'guest_visit_remote_datasource.dart';

class GuestVisitRemoteDataSourceImpl implements GuestVisitRemoteDataSource {
  final GuestVisitApiClient _guestVisitApiClient;
  final Connectivity connectivity;
  final Dio dio;

  GuestVisitRemoteDataSourceImpl(
      this._guestVisitApiClient, this.connectivity, this.dio);

  @override
  Future<Either<Failure, BaseListResponseModel<GuestVisitModel>>>
      fetchListGuestVisit({
    GuestVisitFilterParamsModel? params,
  }) async {
    try {
      final queryParams = params?.toQueryParameters() ?? {};
      final response =
          await _guestVisitApiClient.fetchListGuestVisit(queryParams);
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(e,
              feature: 'guest_visit', action: 'fetchListGuestVisit'),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseResponseModel<GuestVisitModel>>>
      fetchGuestVisitDetail({
    required String id,
  }) async {
    try {
      final response = await _guestVisitApiClient.fetchGuestVisitDetail(id);
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(e,
              feature: 'guest_visit', action: 'fetchGuestVisitDetail'),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseResponseModel<GuestVisitModel>>> createGuestVisit({
    required SaveGuestVisitRequestModel data,
  }) async {
    try {
      final response = await _guestVisitApiClient.createGuestVisit(data);
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(e,
              feature: 'guest_visit', action: 'createGuestVisit'),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseResponseModel<GuestVisitModel>>> updateGuestVisit({
    required String id,
    required SaveGuestVisitRequestModel data,
  }) async {
    try {
      final response = await _guestVisitApiClient.updateGuestVisit(id, data);
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(e,
              feature: 'guest_visit', action: 'updateGuestVisit'),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, void>> deleteGuestVisit({
    required String id,
  }) async {
    try {
      await _guestVisitApiClient.deleteGuestVisit(id);
      return right(null);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(e,
              feature: 'guest_visit', action: 'deleteGuestVisit'),
        ),
      );
    }
  }
}
