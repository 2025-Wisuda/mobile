import 'package:get/get.dart';

import 'package:mobile/core/bindings/core_binding.dart';
import 'package:mobile/features/duty/duty.dart';
import 'package:mobile/shared/databases/database.dart';

enum DutyScheduleControllerType {
  fetchListDutySchedule,
  fetchDutyScheduleForToday,
  validateOtp,
  myAttendanceRecords,
  manualOverrideAttendance,
  listAttendanceRecords,
  detailAttendanceRecords,
  dutyAttendanceStatistics,
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
      Get.put<DutyScheduleApiClient>(
        DutyScheduleApiClient(Get.find()),
        permanent: true,
      );
    }

    if (!Get.isRegistered<DutyScheduleRemoteDatasource>()) {
      Get.put<DutyScheduleRemoteDatasource>(
        DutyScheduleRemoteDatasourceImpl(
            Get.find<DutyScheduleApiClient>(), Get.find(), Get.find()),
        permanent: true,
      );
    }

    if (!Get.isRegistered<DutyScheduleLocalDatasource>()) {
      Get.put<DutyScheduleLocalDatasource>(
        DutyScheduleLocalDatasourceImpl(Get.find()),
        permanent: true,
      );
    }

    if (!Get.isRegistered<DutyScheduleRepository>()) {
      Get.put<DutyScheduleRepository>(
        DutyScheduleRepositoryImpl(Get.find<DutyScheduleRemoteDatasource>(),
            Get.find<DutyScheduleLocalDatasource>()),
        permanent: true,
      );
    }

    if (!Get.isRegistered<DutyAttendanceApiClient>()) {
      Get.put<DutyAttendanceApiClient>(
        DutyAttendanceApiClient(Get.find()),
        permanent: true,
      );
    }

    if (!Get.isRegistered<DutyAttendanceRemoteDatasource>()) {
      Get.put<DutyAttendanceRemoteDatasource>(
        DutyAttendanceRemoteDatasourceImpl(
            Get.find<DutyAttendanceApiClient>(), Get.find(), Get.find()),
        permanent: true,
      );
    }

    if (!Get.isRegistered<DutyAttendanceRepository>()) {
      Get.put<DutyAttendanceRepository>(
        DutyAttendanceRepositoryImpl(
            Get.find<DutyAttendanceRemoteDatasource>()),
        permanent: true,
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

  void registerFetchListDutyScheduleWithTag(String tag) {
    if (!Get.isRegistered<FetchListDutyScheduleUsecase>()) {
      Get.lazyPut<FetchListDutyScheduleUsecase>(
        () => FetchListDutyScheduleUsecase(Get.find<DutyScheduleRepository>()),
      );
    }
    if (!Get.isRegistered<ListDutyScheduleController>(tag: tag)) {
      Get.lazyPut<ListDutyScheduleController>(
        () => ListDutyScheduleController(
            Get.find<FetchListDutyScheduleUsecase>()),
        tag: tag,
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
      Get.put<DutyScheduleForTodayController>(
        DutyScheduleForTodayController(
            Get.find<FetchDutyScheduleForTodayUsecase>()),
        permanent: true,
      );
    }
  }

  void registerValidateOtp() {
    if (!Get.isRegistered<ValidateOtpUsecase>()) {
      Get.lazyPut<ValidateOtpUsecase>(
        () => ValidateOtpUsecase(Get.find<DutyAttendanceRepository>()),
      );
    }
    if (!Get.isRegistered<ValidateOtpController>()) {
      Get.lazyPut<ValidateOtpController>(
        () => ValidateOtpController(Get.find<ValidateOtpUsecase>()),
      );
    }
  }

  void registerMyAttendanceRecords() {
    if (!Get.isRegistered<FetchMyAttendanceRecordsUsecase>()) {
      Get.lazyPut<FetchMyAttendanceRecordsUsecase>(
        () => FetchMyAttendanceRecordsUsecase(
            Get.find<DutyAttendanceRepository>()),
      );
    }
    if (!Get.isRegistered<MyAttendanceRecordsController>()) {
      Get.lazyPut<MyAttendanceRecordsController>(
        () => MyAttendanceRecordsController(
            Get.find<FetchMyAttendanceRecordsUsecase>()),
      );
    }
  }

  void registerManualOverrideAttendance() {
    if (!Get.isRegistered<ManualOverrideAttendanceUsecase>()) {
      Get.lazyPut<ManualOverrideAttendanceUsecase>(
        () => ManualOverrideAttendanceUsecase(
            Get.find<DutyAttendanceRepository>()),
      );
    }
    if (!Get.isRegistered<ManualOverrideAttendanceController>()) {
      Get.lazyPut<ManualOverrideAttendanceController>(
        () => ManualOverrideAttendanceController(
            Get.find<ManualOverrideAttendanceUsecase>()),
      );
    }
  }

  void registerListAttendanceRecords() {
    if (!Get.isRegistered<FetchListAttendanceRecordsUsecase>()) {
      Get.lazyPut<FetchListAttendanceRecordsUsecase>(
        () => FetchListAttendanceRecordsUsecase(
            Get.find<DutyAttendanceRepository>()),
      );
    }
    if (!Get.isRegistered<ListAttendanceRecordsController>()) {
      Get.lazyPut<ListAttendanceRecordsController>(
        () => ListAttendanceRecordsController(
            Get.find<FetchListAttendanceRecordsUsecase>()),
      );
    }
  }

  void registerDetailAttendanceRecords() {
    if (!Get.isRegistered<FetchDetailAttendanceRecordsUsecase>()) {
      Get.lazyPut<FetchDetailAttendanceRecordsUsecase>(
        () => FetchDetailAttendanceRecordsUsecase(
            Get.find<DutyAttendanceRepository>()),
      );
    }
    if (!Get.isRegistered<DetailDutyAttendanceController>()) {
      Get.lazyPut<DetailDutyAttendanceController>(
        () => DetailDutyAttendanceController(
            Get.find<FetchDetailAttendanceRecordsUsecase>()),
      );
    }
  }

  void registerDutyAttendanceStatistics() {
    if (!Get.isRegistered<FetchAttendanceStatisticsUseCase>()) {
      Get.lazyPut<FetchAttendanceStatisticsUseCase>(
        () => FetchAttendanceStatisticsUseCase(
            Get.find<DutyAttendanceRepository>()),
      );
    }
    if (!Get.isRegistered<DutyAttendanceStatisticsController>()) {
      Get.lazyPut<DutyAttendanceStatisticsController>(
        () => DutyAttendanceStatisticsController(
            Get.find<FetchAttendanceStatisticsUseCase>()),
      );
    }
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

class ValidateOtpBinding extends DutyScheduleBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerValidateOtp();
  }
}

class MyAttendanceRecordsBinding extends DutyScheduleBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerMyAttendanceRecords();
  }
}

class ManualOverrideAttendanceBinding extends DutyScheduleBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerManualOverrideAttendance();
  }
}

class ListAttendanceRecordsBinding extends DutyScheduleBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerListAttendanceRecords();
    registerDetailAttendanceRecords();
  }
}

class DetailDutyAttendanceBinding extends DutyScheduleBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerDetailAttendanceRecords();
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
        case DutyScheduleControllerType.validateOtp:
          registerValidateOtp();
          break;
        case DutyScheduleControllerType.myAttendanceRecords:
          registerMyAttendanceRecords();
          break;
        case DutyScheduleControllerType.manualOverrideAttendance:
          registerManualOverrideAttendance();
          break;
        case DutyScheduleControllerType.listAttendanceRecords:
          registerListAttendanceRecords();
          break;
        case DutyScheduleControllerType.detailAttendanceRecords:
          registerDetailAttendanceRecords();
          break;
        case DutyScheduleControllerType.dutyAttendanceStatistics:
          registerDutyAttendanceStatistics();
          break;
      }
    }
  }
}
