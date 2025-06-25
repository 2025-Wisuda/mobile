part of 'auth_remote_datasource.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final AuthApiClient _authApiClient;

  AuthRemoteDataSourceImpl(this._authApiClient);

  @override
  Future<Either<Failure, LoginResponseModel>> login({
    required LoginRequestModel data,
  }) async {
    try {
      final response = await _authApiClient.login(data.toJson());
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(TextHelper.error(e, feature: 'auth', action: 'login')),
      );
    }
  }

  @override
  Future<Either<Failure, RefreshTokenResponseModel>> refreshToken(
    String refreshToken,
  ) async {
    try {
      final response =
          await _authApiClient.refreshToken({'refresh': refreshToken});
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(e, feature: 'auth', action: 'refreshToken'),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, void>> changePassword({
    required ChangePasswordRequestModel data,
  }) async {
    try {
      await _authApiClient.changePassword(data.toJson());
      return right(null);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(e, feature: 'auth', action: 'changePassword'),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, void>> logout({
    required LogoutRequestModel data,
  }) async {
    try {
      await _authApiClient.logout(data.toJson());
      return right(null);
    } on DioException catch (e) {
      return left(
        ServerFailure(TextHelper.error(e, feature: 'auth', action: 'logout')),
      );
    }
  }
}
