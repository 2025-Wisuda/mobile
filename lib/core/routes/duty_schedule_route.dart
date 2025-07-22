import 'package:get/get.dart';

import 'package:mobile/core/bindings/binding.dart';
import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/duty/presentation/screens/screen.dart';
import 'package:mobile/features/face_recognition/presentation/screens/real_time_face_recognition_screen.dart';

final dutyScheduleRoutes = [
  GetPage(
    name: AppRoute.dutySchedule,
    page: () => const DutyScheduleScreen(),
    binding: MultiDutyScheduleBinding(controllers: [
      DutyScheduleControllerType.fetchListDutySchedule,
    ]),
  ),
  GetPage(
    name: AppRoute.validateOtp,
    page: () => const ValidateOtpScreen(),
    binding: MultiDutyScheduleBinding(controllers: [
      DutyScheduleControllerType.validateOtp,
    ]),
  ),
  GetPage(
    name: AppRoute.myAttendanceRecords,
    page: () => const MyAttendanceRecordsScreen(),
    binding: MyAttendanceRecordsBinding(),
  ),
  GetPage(
    name: AppRoute.listAttendanceRecords,
    page: () => const ListAttendanceRecordsScreen(),
    binding: ListAttendanceRecordsBinding(),
  ),
  GetPage(
    name: AppRoute.dutyAttendanceStatistics,
    page: () => const DutyAttendanceStatisticsScreen(),
    binding: MultiDutyScheduleBinding(controllers: [
      DutyScheduleControllerType.dutyAttendanceStatistics,
    ]),
  ),
  GetPage(
    name: AppRoute.manualOverrideAttendance,
    page: () => const ManualOverrideAttendanceScreen(),
    binding: MultiDutyScheduleBinding(controllers: [
      DutyScheduleControllerType.manualOverrideAttendance,
    ]),
  ),
  GetPage(
    name: AppRoute.realTimeFaceRecognition,
    page: () => RealTimeFaceRecognitionScreen(
      config: Get.arguments['config'],
    ),
    binding: FaceRecognitionBinding(),
  ),
];
