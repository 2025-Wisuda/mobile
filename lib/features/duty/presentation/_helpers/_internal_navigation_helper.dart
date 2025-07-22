import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/user/presentation/controllers/user_profile_controller.dart';
import 'package:mobile/shared/enums/enum.dart';

class InternalDutyScheduleNavigationHelper {
  static void handleAttendanceNavigation(BuildContext context) {
    final userProfileController = Get.find<UserProfileController>();
    final userGroup = userProfileController.userGroup.toLowerCase();

    final isLabAssistant =
        userGroup == GroupEnum.laboratoryAssistant.displayName.toLowerCase();

    if (isLabAssistant) {
      Get.toNamed(AppRoute.myAttendanceRecords);
    } else {
      Get.toNamed(AppRoute.dutyAttendanceStatistics);
    }
  }

  static void handleSuccessAttendance(String actionType) {
    Get.offAllNamed(AppRoute.myAttendanceRecords, arguments: {
      'shouldRefresh': true,
      'successMessage': '$actionType completed successfully',
    });
  }

  static void navigateToClockIn(String attendanceId) {
    Get.toNamed(
      AppRoute.validateOtp,
      arguments: {
        'attendanceId': attendanceId,
        'actionType': 'clockIn',
        'nextRoute': AppRoute.realTimeFaceRecognition,
      },
    );
  }

  static void navigateToClockOut(String attendanceId) {
    Get.toNamed(
      AppRoute.validateOtp,
      arguments: {
        'attendanceId': attendanceId,
        'actionType': 'clockOut',
        'nextRoute': AppRoute.realTimeFaceRecognition,
      },
    );
  }
}
