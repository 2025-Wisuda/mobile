import 'package:flutter/material.dart';

import 'package:mobile/features/duty/domain/entities/entity.dart';
import '_internal_action_helper.dart';
import '_internal_day_mapping_helper.dart';
import '_internal_navigation_helper.dart';

class DutyScheduleHelpers {
  static void handleAttendanceNavigation(BuildContext context) {
    InternalDutyScheduleNavigationHelper.handleAttendanceNavigation(context);
  }

  static void handleSuccessAttendance(String actionType) {
    InternalDutyScheduleNavigationHelper.handleSuccessAttendance(actionType);
  }

  static void handleAttendanceAction(
    BuildContext context, {
    required DutyAttendanceEntity attendance,
    required String actionType,
  }) {
    InternalDutyScheduleActionHelper.handleAttendanceAction(
      context,
      attendance: attendance,
      actionType: actionType,
    );
  }

  static List<String> getOrderedDays() =>
      InternalDutyScheduleDayMappingHelper.getOrderedDays();

  static Map<String, String> createDayKeyMap() =>
      InternalDutyScheduleDayMappingHelper.createDayKeyMap();

  static void fetchByTabIndex(
    int index,
    List<String> days,
    Map<String, String> dayKeyMap,
    Function(dynamic) fetchCallback,
  ) =>
      InternalDutyScheduleDayMappingHelper.fetchByTabIndex(
        index,
        days,
        dayKeyMap,
        fetchCallback,
      );
}
