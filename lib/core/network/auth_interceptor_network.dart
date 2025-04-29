import 'package:dio/dio.dart';
import 'package:mobile/core/constants/api_key_constant.dart';
import 'package:mobile/features/auth/domain/usecases/refresh_token_usecase.dart';
import 'package:mobile/shared/databases/session_database.dart';

class AuthInterceptorNetwork extends Interceptor {
  final RefreshTokenUseCase refreshTokenUseCase;

  AuthInterceptorNetwork(this.refreshTokenUseCase);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final accessToken = await SessionDatabase.getAccessToken();
    if (accessToken != null) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }
    options.headers['x-api-key'] = ApiKeyConstant.apiKeyBackend;

    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      final refreshToken = await SessionDatabase.getRefreshToken();
      if (refreshToken != null) {
        final refreshResult = await refreshTokenUseCase.execute(refreshToken);
        await refreshResult.fold(
          (failure) async {
            await SessionDatabase.clearAllTokens();
            handler.reject(err);
          },
          (refreshResponse) async {
            if (refreshResponse.accessToken != null) {
              await SessionDatabase.saveAccessToken(
                refreshResponse.accessToken!,
              );

              final newRequest = await _retryRequest(
                err.requestOptions,
                refreshResponse.accessToken!,
              );
              return handler.resolve(newRequest);
            } else {
              await SessionDatabase.clearAllTokens();
              handler.reject(err);
            }
          },
        );
      } else {
        handler.reject(err);
      }
    } else {
      handler.reject(err);
    }
  }

  Future<Response<dynamic>> _retryRequest(
    RequestOptions requestOptions,
    String newAccessToken,
  ) async {
    final options = Options(
      method: requestOptions.method,
      headers: Map<String, dynamic>.from(requestOptions.headers)
        ..['Authorization'] = 'Bearer $newAccessToken',
    );

    final dio = Dio();
    return dio.request<dynamic>(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }
}
