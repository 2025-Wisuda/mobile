import 'package:dio/dio.dart';
import 'package:mobile/core/network/auth_interceptor_network.dart';
import 'package:mobile/features/auth/domain/usecases/refresh_token_usecase.dart';
import 'package:mobile/shared/utils/base_url_util.dart';

class DioClientNetwork {
  static Dio createDio(RefreshTokenUseCase refreshTokenUseCase) {
    final dio = Dio(
      BaseOptions(
        baseUrl: BaseUrlUtil.apiVersion,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        contentType: 'application/json',
      ),
    );

    dio.interceptors.add(AuthInterceptorNetwork(refreshTokenUseCase));
    return dio;
  }
}
