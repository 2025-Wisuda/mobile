import 'package:flutter/material.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import '_internal_navigation_helper.dart';

class InternalCourseSessionActionHelper {
  static void handleAttendanceAction(
    BuildContext context, {
    required CourseSessionAttendanceEntity attendance,
    required String actionType,
  }) {
    final attendanceId = attendance.id;
    if (attendanceId == null) {
      context.showCustomSnackbar(
        message: 'courseSession'.message('notFound'),
        type: SnackbarType.error,
      );
      return;
    }

    if (actionType == 'manualOverride') {
      InternalCourseSessionNavigationHelper.navigateToManualOverride(
          attendanceId);
    } else {
      context.showCustomSnackbar(
        message: 'courseSession'.message('invalidAction'),
        type: SnackbarType.error,
      );
    }
  }
}
