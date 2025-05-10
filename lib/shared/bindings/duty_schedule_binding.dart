import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:mobile/features/duty_schedule/duty_schedule.dart';

class DutyScheduleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DutyScheduleRemoteDataSource>(
      () => DutyScheduleRemoteDataSourceImpl(Get.find<Dio>()),
    );

    Get.lazyPut<DutyScheduleRepository>(
      () =>
          DutyScheduleRepositoryImpl(Get.find<DutyScheduleRemoteDataSource>()),
    );

    Get.lazyPut<FetchListDutyScheduleUsecase>(
      () => FetchListDutyScheduleUsecase(Get.find<DutyScheduleRepository>()),
    );
    Get.lazyPut<FetchDutyScheduleDetailUsecase>(
      () => FetchDutyScheduleDetailUsecase(Get.find<DutyScheduleRepository>()),
    );

    Get.lazyPut<DutyScheduleController>(
      () => DutyScheduleController(
        fetchListDutyScheduleUsecase: Get.find<FetchListDutyScheduleUsecase>(),
        fetchDutyScheduleDetailUsecase:
            Get.find<FetchDutyScheduleDetailUsecase>(),
      ),
    );
  }
}
