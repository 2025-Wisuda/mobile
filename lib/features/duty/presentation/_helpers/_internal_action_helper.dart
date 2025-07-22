import 'package:flutter/material.dart';

import 'package:mobile/features/duty/domain/entities/entity.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import '_internal_navigation_helper.dart';

class InternalDutyScheduleActionHelper {
  static void handleAttendanceAction(
    BuildContext context, {
    required DutyAttendanceEntity attendance,
    required String actionType,
  }) {
    final attendanceId = attendance.id;
    if (attendanceId == null) {
      context.showCustomSnackbar(
        message: 'dutySchedule'.message('notFound'),
        type: SnackbarType.error,
      );
      return;
    }

    final canClockIn = attendance.canClockIn;
    final canClockOut = attendance.canClockOut;

    if (actionType == 'clockIn' && canClockIn) {
      InternalDutyScheduleNavigationHelper.navigateToClockIn(
          attendanceId.toString());
    } else if (actionType == 'clockOut' && canClockOut) {
      InternalDutyScheduleNavigationHelper.navigateToClockOut(
          attendanceId.toString());
    }
  }
}
