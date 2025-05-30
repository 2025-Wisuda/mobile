// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/lab_schedule/presentation/screens/screen.dart';
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
];
