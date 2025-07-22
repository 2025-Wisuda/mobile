import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/user/presentation/controllers/user_profile_controller.dart';
import 'package:mobile/shared/enums/enum.dart';

class InternalCourseSessionNavigationHelper {
  static void handleAttendanceNavigation(BuildContext context) {
    final userProfileController = Get.find<UserProfileController>();
    final userGroup = userProfileController.userGroup.toLowerCase();

    final isLabAssistant =
        userGroup == GroupEnum.laboratoryAssistant.displayName.toLowerCase();

    if (isLabAssistant) {
      Get.toNamed(AppRoute.courseSessionAttendanceList);
    } else {
      Get.toNamed(AppRoute.myCourseSessionAttendance);
    }
  }

  static void handleSuccessAttendance(String actionType) {
    Get.offAllNamed(AppRoute.myCourseSessionAttendance, arguments: {
      'shouldRefresh': true,
      'successMessage': '$actionType completed successfully',
    });
  }

  static void navigateToManualOverride(String attendanceId) {
    Get.toNamed(
      AppRoute.manualOverrideCourseSessionAttendance,
      arguments: {
        'attendanceId': attendanceId,
      },
    );
  }
}
