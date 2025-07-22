import 'package:get/get.dart';

import 'package:mobile/core/bindings/core_binding.dart';
import 'package:mobile/features/lab_schedule/lab_schedule.dart';
import 'package:mobile/shared/databases/database.dart';

enum LabScheduleControllerType {
  fetchListLabSchedule,
  fetchLabScheduleDetail,
  fetchLabAvailability,
  fetchMyLabSchedule,
}

class LabScheduleBinding extends Bindings {
  @override
  void dependencies() {
    _registerLabScheduleCore();
  }

  void _registerLabScheduleCore() {
    CoreBinding.ensureCoreRegistered();

    if (!Get.isRegistered<LabScheduleDatabase>()) {
      Get.put<LabScheduleDatabase>(
        LabScheduleDatabase(),
        permanent: true,
      );
    }

    if (!Get.isRegistered<LabScheduleApiClient>()) {
      Get.put<LabScheduleApiClient>(
        LabScheduleApiClient(Get.find()),
        permanent: true,
      );
    }

    if (!Get.isRegistered<LabScheduleRemoteDataSource>()) {
      Get.put<LabScheduleRemoteDataSource>(
        LabScheduleRemoteDataSourceImpl(Get.find(), Get.find(), Get.find()),
        permanent: true,
      );
    }

    if (!Get.isRegistered<LabScheduleLocalDatasource>()) {
      Get.put<LabScheduleLocalDatasource>(
        LabScheduleLocalDatasourceImpl(Get.find()),
        permanent: true,
      );
    }

    if (!Get.isRegistered<LabScheduleRepository>()) {
      Get.put<LabScheduleRepository>(
        LabScheduleRepositoryImpl(Get.find(), Get.find()),
        permanent: true,
      );
    }

    if (!Get.isRegistered<FetchListLabScheduleUsecase>()) {
      Get.put<FetchListLabScheduleUsecase>(
        FetchListLabScheduleUsecase(Get.find<LabScheduleRepository>()),
        permanent: true,
      );
    }

    if (!Get.isRegistered<FetchMyLabScheduleUsecase>()) {
      Get.put<FetchMyLabScheduleUsecase>(
        FetchMyLabScheduleUsecase(Get.find<LabScheduleRepository>()),
        permanent: true,
      );
    }
  }

  void registerFetchListLabSchedule() {
    if (!Get.isRegistered<FetchListLabScheduleUsecase>()) {
      Get.put<FetchListLabScheduleUsecase>(
        FetchListLabScheduleUsecase(Get.find<LabScheduleRepository>()),
        permanent: true,
      );
    }
    if (!Get.isRegistered<ListLabScheduleController>()) {
      Get.lazyPut<ListLabScheduleController>(
        () =>
            ListLabScheduleController(Get.find<FetchListLabScheduleUsecase>()),
      );
    }
  }

  void registerFetchListLabScheduleWithTag(String tag) {
    if (!Get.isRegistered<FetchListLabScheduleUsecase>()) {
      Get.put<FetchListLabScheduleUsecase>(
        FetchListLabScheduleUsecase(Get.find<LabScheduleRepository>()),
        permanent: true,
      );
    }
    if (!Get.isRegistered<ListLabScheduleController>(tag: tag)) {
      Get.lazyPut<ListLabScheduleController>(
        () =>
            ListLabScheduleController(Get.find<FetchListLabScheduleUsecase>()),
        tag: tag,
      );
    }
  }

  void registerFetchLabScheduleDetail() {
    if (!Get.isRegistered<FetchLabScheduleDetailUsecase>()) {
      Get.put<FetchLabScheduleDetailUsecase>(
        FetchLabScheduleDetailUsecase(Get.find<LabScheduleRepository>()),
        permanent: true,
      );
    }
    if (!Get.isRegistered<DetailLabScheduleController>()) {
      Get.lazyPut<DetailLabScheduleController>(
        () => DetailLabScheduleController(
            Get.find<FetchLabScheduleDetailUsecase>()),
      );
    }
  }

  void registerLabAvailability() {
    if (!Get.isRegistered<FetchLabAvailabilityUsecase>()) {
      Get.put<FetchLabAvailabilityUsecase>(
        FetchLabAvailabilityUsecase(Get.find<LabScheduleRepository>()),
        permanent: true,
      );
    }
    if (!Get.isRegistered<LabAvailabilityController>()) {
      Get.lazyPut<LabAvailabilityController>(
        () =>
            LabAvailabilityController(Get.find<FetchLabAvailabilityUsecase>()),
      );
    }
  }

  void registerLabAvailabilityWithTag(String tag) {
    if (!Get.isRegistered<FetchLabAvailabilityUsecase>()) {
      Get.put<FetchLabAvailabilityUsecase>(
        FetchLabAvailabilityUsecase(Get.find<LabScheduleRepository>()),
        permanent: true,
      );
    }
    if (!Get.isRegistered<LabAvailabilityController>(tag: tag)) {
      Get.lazyPut<LabAvailabilityController>(
        () =>
            LabAvailabilityController(Get.find<FetchLabAvailabilityUsecase>()),
        tag: tag,
      );
    }
  }

  void registerFetchMyLabSchedule() {
    if (!Get.isRegistered<FetchMyLabScheduleUsecase>()) {
      Get.put<FetchMyLabScheduleUsecase>(
        FetchMyLabScheduleUsecase(Get.find<LabScheduleRepository>()),
        permanent: true,
      );
    }
    if (!Get.isRegistered<MyLabScheduleController>()) {
      Get.lazyPut<MyLabScheduleController>(
        () => MyLabScheduleController(Get.find<FetchMyLabScheduleUsecase>()),
      );
    }
  }

  void registerFetchMyLabScheduleWithTag(String tag) {
    if (!Get.isRegistered<FetchMyLabScheduleUsecase>()) {
      Get.put<FetchMyLabScheduleUsecase>(
        FetchMyLabScheduleUsecase(Get.find<LabScheduleRepository>()),
        permanent: true,
      );
    }
    if (!Get.isRegistered<MyLabScheduleController>(tag: tag)) {
      Get.put<MyLabScheduleController>(
        MyLabScheduleController(Get.find<FetchMyLabScheduleUsecase>()),
        tag: tag,
        permanent: true,
      );
    }
  }

  void registerAllLabSchedule() {
    registerFetchListLabSchedule();
    registerFetchLabScheduleDetail();
    registerLabAvailability();
    registerFetchMyLabSchedule();
  }
}

class FetchListLabScheduleBinding extends LabScheduleBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerFetchListLabScheduleWithTag('list');
  }
}

class FetchLabScheduleDetailBinding extends LabScheduleBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerFetchLabScheduleDetail();
  }
}

class FetchLabAvailabilityBinding extends LabScheduleBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerLabAvailability();
  }
}

class FetchMyLabScheduleBinding extends LabScheduleBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerFetchMyLabScheduleWithTag('home');
    registerFetchLabScheduleDetail();
  }
}

class SearchLabScheduleBinding extends LabScheduleBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerFetchListLabScheduleWithTag('search');
    registerFetchMyLabScheduleWithTag('search');
    if (!Get.isRegistered<LabScheduleWrapperController>(tag: 'search')) {
      Get.put<LabScheduleWrapperController>(
        LabScheduleWrapperController(
          tag: 'search',
        ),
        tag: 'search',
        permanent: true,
      );
    }
    registerFetchLabScheduleDetail();
  }
}

class ListLabScheduleBinding extends LabScheduleBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerFetchListLabScheduleWithTag('list');
    registerFetchMyLabScheduleWithTag('list');
    registerFetchLabScheduleDetail();

    if (!Get.isRegistered<LabScheduleWrapperController>(tag: 'list')) {
      Get.put<LabScheduleWrapperController>(
        LabScheduleWrapperController(
          tag: 'list',
        ),
        tag: 'list',
        permanent: true,
      );
    }
  }
}

class MultiLabScheduleBinding extends LabScheduleBinding {
  final List<LabScheduleControllerType> controllers;

  MultiLabScheduleBinding({required this.controllers});

  @override
  void dependencies() {
    super.dependencies();

    for (final controller in controllers) {
      switch (controller) {
        case LabScheduleControllerType.fetchListLabSchedule:
          registerFetchListLabSchedule();
          break;
        case LabScheduleControllerType.fetchLabScheduleDetail:
          registerFetchLabScheduleDetail();
          break;
        case LabScheduleControllerType.fetchLabAvailability:
          registerLabAvailability();
          break;
        case LabScheduleControllerType.fetchMyLabSchedule:
          registerFetchMyLabSchedule();
          break;
      }
    }
  }
}
