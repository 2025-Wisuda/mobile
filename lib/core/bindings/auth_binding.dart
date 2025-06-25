import 'package:get/get.dart';

import 'package:mobile/core/bindings/core_binding.dart';
import 'package:mobile/features/auth/auth.dart';

enum AuthControllerType {
  login,
  changePassword,
  logout,
  refreshToken,
}

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    _registerAuthCore();
  }

  void _registerAuthCore() {
    CoreBinding.ensureCoreRegistered();

    if (!Get.isRegistered<AuthApiClient>()) {
      Get.lazyPut<AuthApiClient>(() => AuthApiClient(Get.find()));
    }

    if (!Get.isRegistered<AuthRemoteDataSource>()) {
      Get.lazyPut<AuthRemoteDataSource>(
        () => AuthRemoteDataSourceImpl(Get.find<AuthApiClient>()),
      );
    }

    if (!Get.isRegistered<AuthRepository>()) {
      Get.lazyPut<AuthRepository>(
        () => AuthRepositoryImpl(Get.find<AuthRemoteDataSource>()),
      );
    }
  }

  void registerLogin() {
    if (!Get.isRegistered<LoginUsecase>()) {
      Get.lazyPut<LoginUsecase>(() => LoginUsecase(Get.find<AuthRepository>()));
    }
    if (!Get.isRegistered<LoginController>()) {
      Get.lazyPut<LoginController>(
          () => LoginController(Get.find<LoginUsecase>()));
    }
  }

  void registerChangePassword() {
    if (!Get.isRegistered<ChangePasswordUsecase>()) {
      Get.lazyPut<ChangePasswordUsecase>(
          () => ChangePasswordUsecase(Get.find<AuthRepository>()));
    }
    if (!Get.isRegistered<ChangePasswordController>()) {
      Get.lazyPut<ChangePasswordController>(
          () => ChangePasswordController(Get.find<ChangePasswordUsecase>()));
    }
  }

  void registerLogout() {
    if (!Get.isRegistered<LogoutUsecase>()) {
      Get.lazyPut<LogoutUsecase>(
          () => LogoutUsecase(Get.find<AuthRepository>()));
    }
    if (!Get.isRegistered<LogoutController>()) {
      Get.lazyPut<LogoutController>(
          () => LogoutController(Get.find<LogoutUsecase>()));
    }
  }

  void registerRefreshToken() {
    if (!Get.isRegistered<RefreshTokenUsecase>()) {
      Get.lazyPut<RefreshTokenUsecase>(
          () => RefreshTokenUsecase(Get.find<AuthRepository>()));
    }
  }

  void registerAllAuth() {
    registerLogin();
    registerChangePassword();
    registerLogout();
    registerRefreshToken();
  }
}

class LoginBinding extends AuthBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerLogin();
  }
}

class ChangePasswordBinding extends AuthBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerChangePassword();
  }
}

class LogoutBinding extends AuthBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerLogout();
  }
}

class MultiAuthBinding extends AuthBinding {
  final List<AuthControllerType> controllers;

  MultiAuthBinding({required this.controllers});

  @override
  void dependencies() {
    super.dependencies();

    for (final controller in controllers) {
      switch (controller) {
        case AuthControllerType.login:
          registerLogin();
          break;
        case AuthControllerType.changePassword:
          registerChangePassword();
          break;
        case AuthControllerType.logout:
          registerLogout();
          break;
        case AuthControllerType.refreshToken:
          registerRefreshToken();
          break;
      }
    }
  }
}
