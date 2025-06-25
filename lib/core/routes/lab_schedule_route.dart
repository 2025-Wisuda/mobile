import 'package:get/get.dart';

import 'package:mobile/core/bindings/binding.dart';
import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/lab_schedule/presentation/screens/screen.dart';

final labScheduleRoutes = [
  GetPage(
    name: AppRoute.labSchedule,
    page: () => const LabScheduleScreen(),
    binding: ListLabScheduleBinding(),
  ),
  GetPage(
    name: AppRoute.searchLabSchedule,
    page: () => const SearchLabScheduleScreen(),
    binding: SearchLabScheduleBinding(),
  ),
];
