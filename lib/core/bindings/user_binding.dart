import 'package:get/get.dart';

import 'package:mobile/core/bindings/auth_binding.dart';
import 'package:mobile/core/bindings/core_binding.dart';
import 'package:mobile/features/user/user.dart';
import 'package:mobile/shared/databases/database.dart';

enum UserControllerType {
  fetchListUser,
  fetchUserDetail,
  fetchUserProfile,
  updateUserProfile,
}

class UserBinding extends Bindings {
  @override
  void dependencies() {
    _registerUserCore();
  }

  void _registerUserCore() {
    CoreBinding.ensureCoreRegistered();

    if (!Get.isRegistered<UserDatabase>()) {
      Get.put<UserDatabase>(
        UserDatabase(),
        permanent: true,
      );
    }

    if (!Get.isRegistered<UserApiClient>()) {
      Get.put<UserApiClient>(
        UserApiClient(Get.find()),
        permanent: true,
      );
    }

    if (!Get.isRegistered<UserRemoteDatasource>()) {
      Get.put<UserRemoteDatasource>(
        UserRemoteDatasourceImpl(
            Get.find<UserApiClient>(), Get.find(), Get.find()),
        permanent: true,
      );
    }

    if (!Get.isRegistered<UserLocalDatasource>()) {
      Get.put<UserLocalDatasource>(
        UserLocalDatasourceImpl(Get.find()),
        permanent: true,
      );
    }

    if (!Get.isRegistered<UserRepository>()) {
      Get.put<UserRepository>(
        UserRepositoryImpl(
            Get.find<UserRemoteDatasource>(), Get.find<UserLocalDatasource>()),
        permanent: true,
      );
    }
  }

  void registerFetchListUser() {
    if (!Get.isRegistered<FetchListUserUsecase>()) {
      Get.lazyPut<FetchListUserUsecase>(
          () => FetchListUserUsecase(Get.find<UserRepository>()));
    }
    if (!Get.isRegistered<FetchListUserController>()) {
      Get.lazyPut<FetchListUserController>(
          () => FetchListUserController(Get.find<FetchListUserUsecase>()));
    }
  }

  void registerFetchUserDetail() {
    if (!Get.isRegistered<FetchUserDetailUsecase>()) {
      Get.lazyPut<FetchUserDetailUsecase>(
          () => FetchUserDetailUsecase(Get.find<UserRepository>()));
    }
    if (!Get.isRegistered<FetchUserDetailController>()) {
      Get.lazyPut<FetchUserDetailController>(
          () => FetchUserDetailController(Get.find<FetchUserDetailUsecase>()));
    }
  }

  void registerFetchUserProfile() {
    if (!Get.isRegistered<FetchUserProfileUsecase>()) {
      Get.put<FetchUserProfileUsecase>(
        FetchUserProfileUsecase(Get.find<UserRepository>()),
        permanent: true,
      );
    }
    if (!Get.isRegistered<UserProfileController>()) {
      Get.put<UserProfileController>(
        UserProfileController(
          Get.find<FetchUserProfileUsecase>(),
        ),
        permanent: true,
      );
    }
  }

  void registerUpdateUserProfile() {
    if (!Get.isRegistered<UpdateUserProfileUsecase>()) {
      Get.lazyPut<UpdateUserProfileUsecase>(
          () => UpdateUserProfileUsecase(Get.find<UserRepository>()));
    }
    if (!Get.isRegistered<UserProfileFormController>()) {
      Get.lazyPut<UserProfileFormController>(() =>
          UserProfileFormController(Get.find<UpdateUserProfileUsecase>()));
    }
  }

  void registerAllUser() {
    registerFetchListUser();
    registerFetchUserDetail();
    registerFetchUserProfile();
    registerUpdateUserProfile();
  }
}

class FetchListUserBinding extends UserBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerFetchListUser();
  }
}

class FetchUserDetailBinding extends UserBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerFetchUserDetail();
  }
}

class FetchUserProfileBinding extends UserBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerFetchUserProfile();
  }
}

class UpdateUserProfileBinding extends UserBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerFetchUserProfile();
    registerUpdateUserProfile();
  }
}

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    final userBinding = UserBinding();
    userBinding.dependencies();
    userBinding.registerFetchUserProfile();

    final authBinding = AuthBinding();
    authBinding.dependencies();
    authBinding.registerLogout();
  }
}

class MultiUserBinding extends UserBinding {
  final List<UserControllerType> controllers;

  MultiUserBinding({required this.controllers});

  @override
  void dependencies() {
    super.dependencies();

    for (final controller in controllers) {
      switch (controller) {
        case UserControllerType.fetchListUser:
          registerFetchListUser();
          break;
        case UserControllerType.fetchUserDetail:
          registerFetchUserDetail();
          break;
        case UserControllerType.fetchUserProfile:
          registerFetchUserProfile();
          break;
        case UserControllerType.updateUserProfile:
          registerUpdateUserProfile();
          break;
      }
    }
  }
}
