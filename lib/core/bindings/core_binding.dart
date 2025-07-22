import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import 'package:mobile/core/config/config.dart';
import 'package:mobile/core/network/network.dart';
import 'package:mobile/features/auth/auth.dart';

class CoreBinding extends Bindings {
  @override
  void dependencies() {
    _registerCoreServices();
  }

  void _registerCoreServices() {
    if (!Get.isRegistered<Connectivity>()) {
      Get.put<Connectivity>(
        Connectivity(),
        permanent: true,
      );
    }

    if (!Get.isRegistered<Dio>()) {
      Get.put<Dio>(
        Dio(
          BaseOptions(
            baseUrl: BaseUrl.apiVersion,
            connectTimeout: const Duration(seconds: 60),
            receiveTimeout: const Duration(seconds: 60),
            sendTimeout: const Duration(seconds: 60),
            contentType: 'application/json',
            headers: {'Accept': 'application/json'},
          ),
        ),
        permanent: true,
      );
    }

    if (!Get.isRegistered<DioServiceNetwork>()) {
      Get.put<DioServiceNetwork>(
        DioServiceNetwork(Get.find<Dio>()),
        permanent: true,
      );
    }

    if (!Get.isRegistered<AuthApiClient>()) {
      Get.put<AuthApiClient>(
        AuthApiClient(Get.find<Dio>()),
        permanent: true,
      );
    }

    if (!Get.isRegistered<AuthRemoteDataSource>()) {
      Get.put<AuthRemoteDataSource>(
        AuthRemoteDataSourceImpl(Get.find<AuthApiClient>()),
        permanent: true,
      );
    }

    if (!Get.isRegistered<AuthRepository>()) {
      Get.put<AuthRepository>(
        AuthRepositoryImpl(Get.find<AuthRemoteDataSource>()),
        permanent: true,
      );
    }

    if (!Get.isRegistered<RefreshTokenUsecase>()) {
      Get.put<RefreshTokenUsecase>(
        RefreshTokenUsecase(Get.find<AuthRepository>()),
        permanent: true,
      );
    }

    DependencyPostProcessor.initialize();
  }

  static void ensureCoreRegistered() {
    if (!Get.isRegistered<Dio>() || !Get.isRegistered<DioServiceNetwork>()) {
      final coreBinding = CoreBinding();
      coreBinding.dependencies();
    }
  }
}
