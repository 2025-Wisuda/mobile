import 'package:dio/dio.dart';

import 'package:mobile/core/config/config.dart';
import 'package:mobile/features/auth/domain/usecases/refresh_token_usecase.dart';
import 'package:mobile/shared/services/session_service.dart';
import 'package:mobile/shared/utils/logger_util.dart';

class AppInterceptor extends Interceptor {
  final RefreshTokenUsecase refreshTokenUsecase;
  final bool showFullApiKeys;
  final bool enableDetailedLogging;

  AppInterceptor({
    required this.refreshTokenUsecase,
    this.showFullApiKeys = false,
    this.enableDetailedLogging = true,
  });

  static const _sensitiveKeys = [
    'authorization',
    'api-key',
    'x-api-key',
    'bearer',
    'token',
  ];

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final accessToken = await SessionService.getAccessToken();
    if (accessToken != null && accessToken.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }
    options.headers['x-api-key'] = EnvConfig.apiKeyBackend;

    if (enableDetailedLogging) {
      LoggerUtil.logHttpRequest(
        method: options.method,
        url: options.uri.toString(),
        headers: options.headers,
        body: options.data,
      );
      _logHeaders(options.headers, '[REQUEST]');
    }

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    LoggerUtil.logHttpResponse(
      statusCode: response.statusCode ?? 0,
      url: response.requestOptions.uri.toString(),
      headers: response.headers.map.map((k, v) => MapEntry(k, v.join(','))),
      body: response.data,
    );

    if (enableDetailedLogging) {
      _logHeaders(
        response.headers.map.map((k, v) => MapEntry(k, v.join(','))),
        '[RESPONSE]',
      );
    }

    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    final res = err.response;
    final isUnauthorized = res?.statusCode == 401;

    LoggerUtil.logHttpError(
      url: err.requestOptions.uri.toString(),
      error: err.message ?? 'Unknown error',
      statusCode: res?.statusCode ?? 0,
      headers: err.requestOptions.headers,
      method: err.requestOptions.method,
    );

    if (enableDetailedLogging) {
      _logHeaders(err.requestOptions.headers, '[ERROR REQUEST]');
      if (res != null) {
        _logHeaders(
          res.headers.map.map((k, v) => MapEntry(k, v.join(','))),
          '[ERROR RESPONSE]',
        );
      }
    }

    if (isUnauthorized) {
      final existingAccessToken = await SessionService.getAccessToken();
      if (existingAccessToken == null || existingAccessToken.isEmpty) {
        LoggerUtil.logWarning(
          '⚠️ Unauthorized but no access token — skipping refresh.',
        );
        handler.reject(err);
        return;
      }

      LoggerUtil.logWarning('🔐 Token expired. Attempting refresh...');
      final refreshToken = await SessionService.getRefreshToken();

      if (refreshToken != null) {
        final result = await refreshTokenUsecase.execute(refreshToken);
        await result.fold(
          (fail) async {
            LoggerUtil.logError('❌ Refresh token failed: $fail');
            await SessionService.clearAllTokens();
            handler.reject(err);
          },
          (resToken) async {
            if (resToken.accessToken != null) {
              await SessionService.saveAccessToken(resToken.accessToken!);
              LoggerUtil.logInfo('✅ Token refreshed. Retrying request...');

              final retryResponse = await _retryRequest(
                err.requestOptions,
                resToken.accessToken!,
              );

              handler.resolve(retryResponse);
            } else {
              LoggerUtil.logError('⚠️ Refreshed token is null.');
              await SessionService.clearAllTokens();
              handler.reject(err);
            }
          },
        );
      } else {
        LoggerUtil.logWarning('⚠️ No refresh token found.');
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

  void _logHeaders(Map<String, dynamic> headers, String label) {
    headers.forEach((key, value) {
      final lower = key.toLowerCase();
      if (_sensitiveKeys.any((s) => lower.contains(s))) {
        final masked = showFullApiKeys ? value : _mask(value.toString());
        LoggerUtil.logWarning('$label 🔐 $key: $masked');
      } else {
        LoggerUtil.logDebug('$label 📄 $key: $value');
      }
    });
  }

  String _mask(String val) {
    if (val.length <= 8) return val;
    return '${val.substring(0, 4)}****${val.substring(val.length - 4)}';
  }
}
