// Package imports:
import 'package:dio/dio.dart';
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/lab_schedule/lab_schedule.dart';

class LabScheduleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LabScheduleRemoteDataSource>(
      () => LabScheduleRemoteDataSourceImpl(Get.find<Dio>()),
    );
    Get.lazyPut<LabScheduleRepository>(
      () => LabScheduleRepositoryImpl(Get.find<LabScheduleRemoteDataSource>()),
    );

    Get.lazyPut<FetchListLabScheduleUsecase>(
      () => FetchListLabScheduleUsecase(Get.find<LabScheduleRepository>()),
    );
    Get.lazyPut<FetchLabScheduleDetailUsecase>(
      () => FetchLabScheduleDetailUsecase(Get.find<LabScheduleRepository>()),
    );
    Get.lazyPut<ApproveLabScheduleUsecase>(
      () => ApproveLabScheduleUsecase(Get.find<LabScheduleRepository>()),
    );
    Get.lazyPut<LabScheduleController>(
      () => LabScheduleController(
        fetchListLabScheduleUsecase: Get.find<FetchListLabScheduleUsecase>(),
        fetchLabScheduleDetailUsecase:
            Get.find<FetchLabScheduleDetailUsecase>(),
        approveLabScheduleUsecase: Get.find<ApproveLabScheduleUsecase>(),
      ),
    );
  }
}
