import 'package:dio/dio.dart';
import 'package:get/get.dart' as g;

import 'package:mobile/core/config/config.dart';
import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/auth/domain/usecases/usecase.dart';
import 'package:mobile/shared/utils/simple_logger.dart';

class AppInterceptorNetwork extends Interceptor {
  final RefreshTokenUsecase refreshTokenUsecase;
  final bool showFullApiKeys;
  final bool enableDetailedLogging;

  AppInterceptorNetwork({
    required this.refreshTokenUsecase,
    this.showFullApiKeys = true,
    this.enableDetailedLogging = false,
  });

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final accessToken = await Session.getAccessToken();
    if (accessToken != null && accessToken.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }
    options.headers['x-api-key'] = EnvConfig.apiKeyBackend;

    if (enableDetailedLogging) {
      SimpleLogger.httpRequest(
        options.method,
        options.uri.toString(),
        headers: options.headers,
        body: options.data,
      );
    }

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    SimpleLogger.httpResponse(
      response.statusCode ?? 0,
      response.requestOptions.uri.toString(),
      body: response.data,
    );

    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    final res = err.response;
    final isUnauthorized = res?.statusCode == 401;
    final isLogoutRequest = err.requestOptions.path.contains('/auth/logout');

    SimpleLogger.httpError(
      err.requestOptions.method,
      err.requestOptions.uri.toString(),
      res?.statusCode,
      err.message ?? 'Unknown error',
      serverResponse: res?.data,
    );

    // For logout requests, don't try to refresh token - just let it fail
    if (isUnauthorized && isLogoutRequest) {
      SimpleLogger.info(
          '🔓 Logout request with expired token - allowing to proceed');
      handler.reject(err);
      return;
    }

    if (isUnauthorized) {
      final existingAccessToken = await Session.getAccessToken();
      if (existingAccessToken == null || existingAccessToken.isEmpty) {
        SimpleLogger.warning(
          '⚠️ Unauthorized but no access token — skipping refresh.',
        );
        handler.reject(err);
        return;
      }

      SimpleLogger.warning('🔐 Token expired. Attempting refresh...');
      final refreshToken = await Session.getRefreshToken();

      if (refreshToken != null) {
        final result = await refreshTokenUsecase.execute(refreshToken);
        await result.fold(
          (fail) async {
            SimpleLogger.error('❌ Refresh token failed: $fail');
            await Session.clearAllTokens();
            g.Get.offAllNamed(AppRoute.splash);
            handler.reject(err);
          },
          (resToken) async {
            if (resToken.accessToken != null) {
              await Session.saveAccessToken(resToken.accessToken!);
              SimpleLogger.info('✅ Token refreshed. Retrying request...');

              final retryResponse = await _retryRequest(
                err.requestOptions,
                resToken.accessToken!,
              );

              handler.resolve(retryResponse);
            } else {
              SimpleLogger.error('⚠️ Refreshed token is null.');
              await Session.clearAllTokens();
              handler.reject(err);
            }
          },
        );
      } else {
        SimpleLogger.warning('⚠️ No refresh token found.');
        handler.reject(err);
      }
    } else {
      handler.reject(err);
    }
  }

  Future<Response> _retryRequest(
    RequestOptions oldRequest,
    String newToken,
  ) async {
    final dio = Dio(BaseOptions(baseUrl: oldRequest.baseUrl));

    final options = Options(
      method: oldRequest.method,
      headers: {...oldRequest.headers, 'Authorization': 'Bearer $newToken'},
    );

    return dio.request(
      oldRequest.path,
      data: oldRequest.data,
      queryParameters: oldRequest.queryParameters,
      options: options,
    );
  }
}
