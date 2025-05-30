// Package imports:
import 'package:dio/dio.dart';
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/auth/auth.dart';

Bindings authBinding() {
  return BindingsBuilder(() {
    Get.lazyPut<AuthController>(() => AuthController(Get.find<LoginUseCase>()));
    Get.lazyPut<LoginUseCase>(() => LoginUseCase(Get.find<AuthRepository>()));
    Get.lazyPut<AuthRepository>(
      () => AuthRepositoryImpl(Get.find<AuthRemoteDataSource>()),
    );
    Get.lazyPut<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(Get.find<Dio>()),
    );
  });
}
