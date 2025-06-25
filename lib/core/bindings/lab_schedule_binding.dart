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
    if (!Get.isRegistered<LabScheduleWrapperController>()) {
      Get.lazyPut<LabScheduleWrapperController>(
        () => LabScheduleWrapperController(),
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
    if (!Get.isRegistered<LabScheduleWrapperController>(tag: tag)) {
      Get.lazyPut<LabScheduleWrapperController>(
        () => LabScheduleWrapperController(tag: tag),
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
      Get.lazyPut<FetchLabAvailabilityUsecase>(
        () => FetchLabAvailabilityUsecase(Get.find<LabScheduleRepository>()),
      );
    }

    if (!Get.isRegistered<LabAvailabilityController>(
        tag: 'course_session_time_availability')) {
      Get.lazyPut<LabAvailabilityController>(
        () =>
            LabAvailabilityController(Get.find<FetchLabAvailabilityUsecase>()),
        tag: 'course_session_time_availability',
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
    if (!Get.isRegistered<LabScheduleWrapperController>()) {
      Get.lazyPut<LabScheduleWrapperController>(
        () => LabScheduleWrapperController(),
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
      Get.lazyPut<MyLabScheduleController>(
        () => MyLabScheduleController(Get.find<FetchMyLabScheduleUsecase>()),
        tag: tag,
      );
    }
    if (!Get.isRegistered<LabScheduleWrapperController>(tag: tag)) {
      Get.lazyPut<LabScheduleWrapperController>(
        () => LabScheduleWrapperController(tag: tag),
        tag: tag,
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
    registerFetchMyLabScheduleWithTag('list');
  }
}

class SearchLabScheduleBinding extends LabScheduleBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerFetchListLabScheduleWithTag('search');
    registerFetchMyLabScheduleWithTag('search');
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
