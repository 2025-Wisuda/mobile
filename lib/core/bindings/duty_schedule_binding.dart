import 'package:get/get.dart';

import 'package:mobile/core/bindings/core_binding.dart';
import 'package:mobile/features/duty_schedule/duty_schedule.dart';
import 'package:mobile/shared/databases/database.dart';

enum DutyScheduleControllerType {
  fetchListDutySchedule,
  fetchDutyScheduleForToday,
}

class DutyScheduleBinding extends Bindings {
  @override
  void dependencies() {
    _registerDutyScheduleCore();
  }

  void _registerDutyScheduleCore() {
    CoreBinding.ensureCoreRegistered();

    if (!Get.isRegistered<DutyScheduleDatabase>()) {
      Get.put<DutyScheduleDatabase>(
        DutyScheduleDatabase(),
        permanent: true,
      );
    }

    if (!Get.isRegistered<DutyScheduleApiClient>()) {
      Get.lazyPut<DutyScheduleApiClient>(
          () => DutyScheduleApiClient(Get.find()));
    }

    if (!Get.isRegistered<DutyScheduleRemoteDatasource>()) {
      Get.lazyPut<DutyScheduleRemoteDatasource>(
        () => DutyScheduleRemoteDatasourceImpl(
            Get.find<DutyScheduleApiClient>(), Get.find(), Get.find()),
      );
    }

    if (!Get.isRegistered<DutyScheduleLocalDatasource>()) {
      Get.lazyPut<DutyScheduleLocalDatasource>(
        () => DutyScheduleLocalDatasourceImpl(Get.find()),
      );
    }

    if (!Get.isRegistered<DutyScheduleRepository>()) {
      Get.lazyPut<DutyScheduleRepository>(
        () => DutyScheduleRepositoryImpl(
            Get.find<DutyScheduleRemoteDatasource>(),
            Get.find<DutyScheduleLocalDatasource>()),
      );
    }
  }

  void registerFetchListDutySchedule() {
    if (!Get.isRegistered<FetchListDutyScheduleUsecase>()) {
      Get.lazyPut<FetchListDutyScheduleUsecase>(
        () => FetchListDutyScheduleUsecase(Get.find<DutyScheduleRepository>()),
      );
    }
    if (!Get.isRegistered<ListDutyScheduleController>()) {
      Get.lazyPut<ListDutyScheduleController>(
        () => ListDutyScheduleController(
            Get.find<FetchListDutyScheduleUsecase>()),
      );
    }
  }

  void registerFetchDutyScheduleForToday() {
    if (!Get.isRegistered<FetchDutyScheduleForTodayUsecase>()) {
      Get.lazyPut<FetchDutyScheduleForTodayUsecase>(
        () => FetchDutyScheduleForTodayUsecase(
            Get.find<DutyScheduleRepository>()),
      );
    }
    if (!Get.isRegistered<DutyScheduleForTodayController>()) {
      Get.lazyPut<DutyScheduleForTodayController>(
        () => DutyScheduleForTodayController(
            Get.find<FetchDutyScheduleForTodayUsecase>()),
      );
    }
  }

  void registerAllDutySchedule() {
    registerFetchListDutySchedule();
    registerFetchDutyScheduleForToday();
  }
}

class FetchListDutyScheduleBinding extends DutyScheduleBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerFetchListDutySchedule();
  }
}

class FetchDutyScheduleForTodayBinding extends DutyScheduleBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerFetchDutyScheduleForToday();
  }
}

class MultiDutyScheduleBinding extends DutyScheduleBinding {
  final List<DutyScheduleControllerType> controllers;

  MultiDutyScheduleBinding({required this.controllers});

  @override
  void dependencies() {
    super.dependencies();

    for (final controller in controllers) {
      switch (controller) {
        case DutyScheduleControllerType.fetchListDutySchedule:
          registerFetchListDutySchedule();
          break;
        case DutyScheduleControllerType.fetchDutyScheduleForToday:
          registerFetchDutyScheduleForToday();
          break;
      }
    }
  }
}
