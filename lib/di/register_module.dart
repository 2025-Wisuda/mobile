import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:mobile/core/config/config.dart';
import 'package:mobile/core/network/dio_service_network.dart';
import 'package:mobile/core/routes/app_router.dart';
import 'package:mobile/features/auth/auth.dart';
import 'package:mobile/features/user/user.dart';

@module
abstract class RegisterModule {
  @singleton
  Dio provideDio() {
    return Dio(
      BaseOptions(
        baseUrl: BaseUrl.apiVersion,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        contentType: 'application/json',
        headers: {'Accept': 'application/json'},
      ),
    );
  }

  @singleton
  DioServiceNetwork dioServiceNetwork(Dio dio) => DioServiceNetwork(dio);

  @singleton
  AuthApiClient authApiClient(DioServiceNetwork dioServiceNetwork) {
    return AuthApiClient(
      dioServiceNetwork.authenticatedDio,
      baseUrl: BaseUrl.apiVersion,
    );
  }

  @singleton
  UserApiClient userApiClient(DioServiceNetwork dioServiceNetwork) {
    return UserApiClient(
      dioServiceNetwork.authenticatedDio,
      baseUrl: BaseUrl.apiVersion,
    );
  }

  @singleton
  Connectivity get connectivity => Connectivity();

  @singleton
  AppRouter get appRouter => AppRouter();
}
