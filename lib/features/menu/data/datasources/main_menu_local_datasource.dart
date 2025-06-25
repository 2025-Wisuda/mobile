import 'dart:ui';

import 'package:mobile/core/constants/constant.dart';
import 'package:mobile/features/menu/data/models/model.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';

class MainMenuLocalDatasource {
  List<MenuModel> fetchMainMenuData({VoidCallback? onTap}) {
    return [
      MenuModel(
        iconMenu: IconConstant.classOutlineIcon,
        nameMenu: 'course'.menu(),
        routeName: '/courses/me',
        allowedGroup:
            GroupEnum.level3AccessGroups.map((e) => e.toLowerCase).toList(),
        onTap: onTap,
      ),
      MenuModel(
        iconMenu: IconConstant.assistantAttendanceOutlineIcon,
        nameMenu: 'assistantAttendance'.menu(),
        routeName: '/assistant-attendance',
        allowedGroup:
            GroupEnum.level2AccessGroups.map((e) => e.toLowerCase).toList(),
        onTap: onTap,
      ),
      MenuModel(
        iconMenu: IconConstant.practicumAttendanceOutlineIcon,
        nameMenu: 'practicumAttendance'.menu(),
        routeName: '/practicum-attendance',
        allowedGroup:
            GroupEnum.level1AccessGroups.map((e) => e.toLowerCase).toList(),
        onTap: onTap,
      ),
      MenuModel(
        iconMenu: IconConstant.guestVisitOutlineIcon,
        nameMenu: 'guestVisit'.menu(),
        routeName: '/guest-visit',
        allowedGroup:
            GroupEnum.level2AccessGroups.map((e) => e.toLowerCase).toList(),
        onTap: onTap,
      ),
      MenuModel(
        iconMenu: IconConstant.calendarOutlineIcon,
        nameMenu: 'dutySchedule'.menu(),
        routeName: '/duty-schedules',
        allowedGroup:
            GroupEnum.level4AccessGroups.map((e) => e.toLowerCase).toList(),
        onTap: onTap,
      ),
    ];
  }
}
