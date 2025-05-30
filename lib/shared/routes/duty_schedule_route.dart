// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/duty_schedule/presentation/screens/list_duty_schedule_screen.dart';
import 'package:mobile/shared/bindings/binding.dart';
import 'app_route.dart';

final dutyScheduleRoute = [
  GetPage(
    name: AppRoute.dutySchedule,
    page: () => ListDutyScheduleScreen(),
    binding: DutyScheduleBinding(),
  ),
];
