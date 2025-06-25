part of 'user_remote_datasource.dart';

class UserRemoteDatasourceImpl implements UserRemoteDatasource {
  final UserApiClient _userApiClient;
  final Connectivity connectivity;
  final Dio dio;

  UserRemoteDatasourceImpl(this._userApiClient, this.connectivity, this.dio);

  @override
  Future<Either<Failure, BaseListResponseModel<UserModel>>> fetchListUser({
    UserFilterParamsModel? params,
  }) async {
    try {
      final queryParams = params?.toQueryParameters() ?? {};
      final response = await _userApiClient.fetchListUser(queryParams);
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(e, feature: 'user', action: 'fetchListUser'),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseResponseModel<UserModel>>> fetchUserDetail(
    String userId,
  ) async {
    try {
      final response = await _userApiClient.fetchUserDetail(userId);
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(e, feature: 'user', action: 'fetchUserDetail'),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseResponseModel<UserModel>>>
      fetchUserProfile() async {
    try {
      final response = await _userApiClient.fetchUserProfile();
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(e, feature: 'user', action: 'fetchUserProfile'),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseResponseModel<UserModel>>> updateUserProfile({
    required UserModel data,
  }) async {
    try {
      final formData = await FormDataHelper.createFormDataWithFiles(
        data: data.toJson(),
        fileFields: {'avatar': data.avatar, 'face_image': data.faceImage},
      );

      final response = await _userApiClient.updateUserProfile(formData);
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(e, feature: 'user', action: 'updateUserProfile'),
        ),
      );
    }
  }
}
