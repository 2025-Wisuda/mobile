import 'package:get/get.dart';

import 'package:mobile/core/bindings/binding.dart';
import 'package:mobile/features/guest_visit/guest_visit.dart';

enum GuestVisitControllerType {
  fetchListGuestVisit,
  fetchGuestVisitDetail,
  deleteGuestVisit,
  guestVisitForm,
  detailGuestVisit,
}

class GuestVisitBinding extends Bindings {
  @override
  void dependencies() {
    _registerGuestVisitCore();
  }

  void _registerGuestVisitCore() {
    CoreBinding.ensureCoreRegistered();

    if (!Get.isRegistered<GuestVisitApiClient>()) {
      Get.lazyPut<GuestVisitApiClient>(() => GuestVisitApiClient(Get.find()));
    }

    if (!Get.isRegistered<GuestVisitRemoteDataSource>()) {
      Get.lazyPut<GuestVisitRemoteDataSource>(
        () => GuestVisitRemoteDataSourceImpl(
            Get.find<GuestVisitApiClient>(), Get.find(), Get.find()),
      );
    }

    if (!Get.isRegistered<GuestVisitRepository>()) {
      Get.lazyPut<GuestVisitRepository>(
        () => GuestVisitRepositoryImpl(Get.find<GuestVisitRemoteDataSource>()),
      );
    }
  }

  void registerFetchListGuestVisit() {
    if (!Get.isRegistered<FetchListGuestVisitUsecase>()) {
      Get.lazyPut<FetchListGuestVisitUsecase>(
        () => FetchListGuestVisitUsecase(Get.find<GuestVisitRepository>()),
      );
    }
    if (!Get.isRegistered<ListGuestVisitController>()) {
      Get.lazyPut<ListGuestVisitController>(
        () => ListGuestVisitController(Get.find<FetchListGuestVisitUsecase>()),
      );
    }
  }

  void registerFetchGuestVisitDetail() {
    if (!Get.isRegistered<FetchGuestVisitDetailUsecase>()) {
      Get.lazyPut<FetchGuestVisitDetailUsecase>(
        () => FetchGuestVisitDetailUsecase(Get.find<GuestVisitRepository>()),
      );
    }
    if (!Get.isRegistered<DetailGuestVisitController>()) {
      Get.lazyPut<DetailGuestVisitController>(
        () => DetailGuestVisitController(
            Get.find<FetchGuestVisitDetailUsecase>()),
      );
    }
  }

  void registerDeleteGuestVisit() {
    if (!Get.isRegistered<DeleteGuestVisitUsecase>()) {
      Get.lazyPut<DeleteGuestVisitUsecase>(
        () => DeleteGuestVisitUsecase(Get.find<GuestVisitRepository>()),
      );
    }
    if (!Get.isRegistered<DeleteGuestVisitController>()) {
      Get.lazyPut<DeleteGuestVisitController>(
        () => DeleteGuestVisitController(Get.find<DeleteGuestVisitUsecase>()),
      );
    }
  }

  void registerGuestVisitForm() {
    if (!Get.isRegistered<CreateGuestVisitUsecase>()) {
      Get.lazyPut<CreateGuestVisitUsecase>(
        () => CreateGuestVisitUsecase(Get.find<GuestVisitRepository>()),
      );
    }
    if (!Get.isRegistered<UpdateGuestVisitUsecase>()) {
      Get.lazyPut<UpdateGuestVisitUsecase>(
        () => UpdateGuestVisitUsecase(Get.find<GuestVisitRepository>()),
      );
    }
    if (!Get.isRegistered<GuestVisitFormController>()) {
      Get.lazyPut<GuestVisitFormController>(
        () => GuestVisitFormController(
          Get.find<CreateGuestVisitUsecase>(),
          Get.find<UpdateGuestVisitUsecase>(),
        ),
      );
    }
  }

  void registerAllGuestVisit() {
    registerFetchListGuestVisit();
    registerFetchGuestVisitDetail();
    registerDeleteGuestVisit();
    registerGuestVisitForm();
  }
}

class FetchListGuestVisitBinding extends GuestVisitBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerFetchListGuestVisit();
  }
}

class FetchGuestVisitDetailBinding extends GuestVisitBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerFetchGuestVisitDetail();
  }
}

class CreateGuestVisitBinding extends GuestVisitBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerGuestVisitForm();

    final userBinding = UserBinding();
    userBinding.dependencies();
    userBinding.registerFetchListUser();
  }
}

class UpdateGuestVisitBinding extends GuestVisitBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerGuestVisitForm();

    final userBinding = UserBinding();
    userBinding.dependencies();
    userBinding.registerFetchListUser();
  }
}

class DeleteGuestVisitBinding extends GuestVisitBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerDeleteGuestVisit();
  }
}

class MultiGuestVisitBinding extends GuestVisitBinding {
  final List<GuestVisitControllerType> controllers;
  final List<UserControllerType>? userControllers;

  MultiGuestVisitBinding({
    required this.controllers,
    this.userControllers,
  });

  @override
  void dependencies() {
    super.dependencies();
    _registerControllers();
    _registerUserControllers();
  }

  void _registerControllers() {
    for (final controllerType in controllers) {
      switch (controllerType) {
        case GuestVisitControllerType.fetchListGuestVisit:
          registerFetchListGuestVisit();
          break;
        case GuestVisitControllerType.fetchGuestVisitDetail:
          registerFetchGuestVisitDetail();
          break;
        case GuestVisitControllerType.deleteGuestVisit:
          registerDeleteGuestVisit();
          break;
        case GuestVisitControllerType.guestVisitForm:
          registerGuestVisitForm();
          break;
        case GuestVisitControllerType.detailGuestVisit:
          registerFetchGuestVisitDetail();
          break;
      }
    }
  }

  void _registerUserControllers() {
    if (userControllers != null && userControllers!.isNotEmpty) {
      final userBinding = UserBinding();
      userBinding.dependencies();

      for (final controllerType in userControllers!) {
        switch (controllerType) {
          case UserControllerType.fetchListUser:
            userBinding.registerFetchListUser();
            break;
          case UserControllerType.fetchUserDetail:
            userBinding.registerFetchUserDetail();
            break;
          case UserControllerType.fetchUserProfile:
            userBinding.registerFetchUserProfile();
            break;
          case UserControllerType.updateUserProfile:
            userBinding.registerUpdateUserProfile();
            break;
        }
      }
    }
  }
}
