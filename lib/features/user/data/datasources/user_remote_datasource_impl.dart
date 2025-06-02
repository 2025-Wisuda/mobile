part of 'user_remote_datasource.dart';

@Injectable(as: UserRemoteDatasource)
class UserRemoteDatasourceImpl implements UserRemoteDatasource {
  final UserApiClient api;
  final Connectivity connectivity;
  final Dio dio;

  UserRemoteDatasourceImpl(this.api, this.connectivity, this.dio);

  Future<bool> _hasConnection() async {
    final results = await connectivity.checkConnectivity();
    return results.any(
      (result) =>
          result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi,
    );
  }

  @override
  Future<Either<Failure, ListUserResponseModel>> fetchListUser({
    UserFilterParamsModel? params,
  }) async {
    if (!await _hasConnection()) return left(NoConnectionFailure());
    try {
      final queryParams = params?.toQueryParameters() ?? {};
      final response = await api.fetchListUser(queryParams);
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
  Future<Either<Failure, UserResponseModel>> fetchUserDetail(String id) async {
    if (!await _hasConnection()) return left(NoConnectionFailure());

    try {
      final response = await api.fetchUserDetail(id);
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
  Future<Either<Failure, UserResponseModel>> fetchUserProfile() async {
    if (!await _hasConnection()) return left(NoConnectionFailure());

    try {
      final response = await api.fetchUserProfile();
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
  Future<Either<Failure, UserResponseModel>> updateUserProfile({
    required UserModel data,
  }) async {
    if (!await _hasConnection()) return left(NoConnectionFailure());

    try {
      final formData = FormData();

      if (data.email != null) {
        formData.fields.add(MapEntry('email', data.email!));
      }
      if (data.firstName != null) {
        formData.fields.add(MapEntry('first_name', data.firstName!));
      }
      if (data.lastName != null) {
        formData.fields.add(MapEntry('last_name', data.lastName!));
      }

      if (data.avatarUrl != null && data.avatarUrl!.startsWith('/')) {
        final avatarFile = await MultipartFile.fromFile(
          data.avatarUrl!,
          filename: data.avatarUrl!.split('/').last,
        );
        formData.files.add(MapEntry('avatar_url', avatarFile));
      }

      if (data.faceImageUrl != null && data.faceImageUrl!.startsWith('/')) {
        final faceImageFile = await MultipartFile.fromFile(
          data.faceImageUrl!,
          filename: data.faceImageUrl!.split('/').last,
        );
        formData.files.add(MapEntry('face_image_url', faceImageFile));
      }

      final response = await api.updateUserProfile(formData);
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
