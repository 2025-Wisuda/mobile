import 'package:flutter/material.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import '_internal_action_helper.dart';
import '_internal_navigation_helper.dart';

class CourseSessionHelpers {
  static void handleAttendanceNavigation(BuildContext context) {
    InternalCourseSessionNavigationHelper.handleAttendanceNavigation(context);
  }

  static void handleSuccessAttendance(String actionType) {
    InternalCourseSessionNavigationHelper.handleSuccessAttendance(actionType);
  }

  static void handleAttendanceAction(
    BuildContext context, {
    required CourseSessionAttendanceEntity attendance,
    required String actionType,
  }) {
    InternalCourseSessionActionHelper.handleAttendanceAction(
      context,
      attendance: attendance,
      actionType: actionType,
    );
  }
}
