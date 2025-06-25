import 'package:get/get.dart';

import 'package:mobile/core/bindings/binding.dart';
import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/duty_schedule/presentation/screens/screen.dart';

final dutyScheduleRoutes = [
  GetPage(
    name: AppRoute.dutySchedule,
    page: () => const DutyScheduleScreen(),
    binding: MultiDutyScheduleBinding(controllers: [
      DutyScheduleControllerType.fetchListDutySchedule,
    ]),
  ),
];
