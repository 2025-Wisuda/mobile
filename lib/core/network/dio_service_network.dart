import 'package:dio/dio.dart';

import 'package:mobile/core/network/network.dart';

class DioServiceNetwork {
  final Dio dio;

  DioServiceNetwork(this.dio);

  void setupInterceptor(AppInterceptorNetwork interceptor) {
    dio.interceptors.clear();
    dio.interceptors.add(interceptor);
  }

  Dio get authenticatedDio => dio;
}
