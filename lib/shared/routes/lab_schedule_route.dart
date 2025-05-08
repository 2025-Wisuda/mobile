import 'package:get/get.dart';
import 'package:mobile/features/schedule/presentation/presentation.dart';
import 'package:mobile/shared/bindings/binding.dart';
import 'app_route.dart';

final labScheduleRoute = [
  GetPage(
    name: AppRoute.labSchedule,
    page: () => ListLabScheduleScreen(),
    binding: HomeBinding(),
  ),
  GetPage(
    name: AppRoute.searchLabSchedule,
    page: () => SearchLabScheduleScreen(),
    binding: LabScheduleBinding(),
  ),
  GetPage(
    name: AppRoute.detailLabSchedule,
    page: () {
      final labScheduleId = (Get.parameters['id'] ?? '0');
      return DetailLabScheduleScreen(labScheduleId: labScheduleId);
    },
    binding: LabScheduleBinding(),
  ),
];
