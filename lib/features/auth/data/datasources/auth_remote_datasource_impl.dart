part of 'auth_remote_datasource.dart';

@Injectable(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final AuthApiClient api;
  final Connectivity connectivity;

  AuthRemoteDataSourceImpl(this.api, this.connectivity);

  Future<bool> _hasConnection() async {
    final results = await connectivity.checkConnectivity();
    return results.any(
      (result) =>
          result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi,
    );
  }

  @override
  Future<Either<Failure, LoginResponseModel>> login({
    required LoginRequestModel data,
  }) async {
    if (!await _hasConnection()) return left(NoConnectionFailure());

    try {
      final response = await api.login(data.toJson());
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
    if (!await _hasConnection()) return left(NoConnectionFailure());

    try {
      final response = await api.refreshToken({'refresh': refreshToken});
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
    if (!await _hasConnection()) return left(NoConnectionFailure());

    try {
      await api.changePassword(data.toJson());
      return right(null);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(e, feature: 'auth', action: 'changePassword'),
        ),
      );
    }
  }
}
