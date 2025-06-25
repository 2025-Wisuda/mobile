import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import 'package:mobile/core/bindings/binding.dart';
import 'package:mobile/features/menu/data/data.dart';
import 'package:mobile/features/menu/domain/domain.dart';
import 'package:mobile/features/menu/presentation/controllers/controller.dart';
import 'package:mobile/features/user/presentation/controllers/user_profile_controller.dart';

enum MenuControllerType {
  mainMenu,
  profileMenu,
  navigation,
}

class MenuBinding extends Bindings {
  @override
  void dependencies() {
    _registerMenuCore();
  }

  void _registerMenuCore() {
    CoreBinding.ensureCoreRegistered();

    if (!Get.isRegistered<MainMenuLocalDatasource>()) {
      Get.put<MainMenuLocalDatasource>(
        MainMenuLocalDatasource(),
        permanent: true,
      );
    }

    if (!Get.isRegistered<ProfileMenuLocalDatasource>()) {
      Get.put<ProfileMenuLocalDatasource>(
        ProfileMenuLocalDatasource(),
        permanent: true,
      );
    }

    if (!Get.isRegistered<MainNavMenuLocalDatasource>()) {
      Get.put<MainNavMenuLocalDatasource>(
        MainNavMenuLocalDatasource(),
        permanent: true,
      );
    }

    if (!Get.isRegistered<MenuRepository>()) {
      Get.put<MenuRepository>(
        MenuRepositoryImpl(
          mainMenuLocalDatasource: Get.find<MainMenuLocalDatasource>(),
          profileMenuLocalDatasource: Get.find<ProfileMenuLocalDatasource>(),
        ),
        permanent: true,
      );
    }

    if (!Get.isRegistered<NavRepository>()) {
      Get.put<NavRepository>(
        NavRepositoryImpl(
          mainNavMenuLocalDatasource: Get.find<MainNavMenuLocalDatasource>(),
        ),
        permanent: true,
      );
    }

    if (!Get.isRegistered<FetchMainMenuUsecase>()) {
      Get.put<FetchMainMenuUsecase>(
        FetchMainMenuUsecase(Get.find<MenuRepository>()),
        permanent: true,
      );
    }

    if (!Get.isRegistered<FetchProfileMenuUsecase>()) {
      Get.put<FetchProfileMenuUsecase>(
        FetchProfileMenuUsecase(Get.find<MenuRepository>()),
        permanent: true,
      );
    }

    if (!Get.isRegistered<FetchMainNavMenuUsecase>()) {
      Get.put<FetchMainNavMenuUsecase>(
        FetchMainNavMenuUsecase(Get.find<NavRepository>()),
        permanent: true,
      );
    }
  }

  void registerMainMenu() {
    if (!Get.isRegistered<MainMenuController>()) {
      Get.put<MainMenuController>(
        MainMenuController(
          fetchMainMenuUsecase: Get.find<FetchMainMenuUsecase>(),
          userProfileController: Get.find<UserProfileController>(),
        ),
        permanent: true,
      );
    }
  }

  void registerProfileMenu() {
    if (!Get.isRegistered<ProfileMenuController>()) {
      Get.put<ProfileMenuController>(
        ProfileMenuController(
          fetchProfileMenuUsecase: Get.find<FetchProfileMenuUsecase>(),
          userProfileController: Get.find<UserProfileController>(),
        ),
        permanent: true,
      );
    }
  }

  void registerNavigation() {
    if (!Get.isRegistered<NavigationController>()) {
      Get.put<NavigationController>(
        NavigationController(
          fetchMainNavMenuUsecase: Get.find<FetchMainNavMenuUsecase>(),
        ),
        permanent: true,
      );
    }
  }

  void registerAllMenu() {
    registerMainMenu();
    registerProfileMenu();
    registerNavigation();
  }
}

class MainMenuBinding extends MenuBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerMainMenu();
  }
}

class ProfileMenuBinding extends MenuBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerProfileMenu();
  }
}

class NavigationBinding extends MenuBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerNavigation();
  }
}

class MainWrapperBinding extends Bindings {
  @override
  void dependencies() {
    final userBinding = MultiUserBinding(controllers: [
      UserControllerType.fetchUserProfile,
    ]);
    userBinding.dependencies();
    final menuBinding = MultiMenuBinding(controllers: [
      MenuControllerType.mainMenu,
      MenuControllerType.profileMenu,
      MenuControllerType.navigation,
    ]);
    menuBinding.dependencies();

    final labScheduleBinding = MultiLabScheduleBinding(controllers: [
      LabScheduleControllerType.fetchMyLabSchedule,
      LabScheduleControllerType.fetchLabScheduleDetail,
    ]);
    labScheduleBinding.dependencies();

    final dutyScheduleBinding = MultiDutyScheduleBinding(controllers: [
      DutyScheduleControllerType.fetchDutyScheduleForToday,
    ]);
    dutyScheduleBinding.dependencies();
  }
}

class DelayedMainWrapperBinding extends Bindings {
  @override
  void dependencies() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 100));
      final mainWrapperBinding = MainWrapperBinding();
      mainWrapperBinding.dependencies();
    });
  }
}

class MultiMenuBinding extends MenuBinding {
  final List<MenuControllerType> controllers;

  MultiMenuBinding({required this.controllers});

  @override
  void dependencies() {
    super.dependencies();

    for (final controller in controllers) {
      switch (controller) {
        case MenuControllerType.mainMenu:
          registerMainMenu();
          break;
        case MenuControllerType.profileMenu:
          registerProfileMenu();
          break;
        case MenuControllerType.navigation:
          registerNavigation();
          break;
      }
    }
  }
}
