// Dart imports:
import 'dart:ui';

// Project imports:
import 'package:mobile/core/core.dart';
import 'package:mobile/features/general/menu/data/models/menu_model.dart';
import 'package:mobile/shared/routes/route.dart';

class MainMenuLocalDatasource {
  List<MenuModel> fetchMainMenuData({VoidCallback? onTap}) {
    return [
      MenuModel(
        iconMenu: IconConstant.classOutlineIcon,
        nameMenu: 'features.menu.course',
        routeName: AppRoute.course,
        allowedGroup: [
          'mahasiswa',
          'asisten laboratorium',
          'dosen',
          'teknisi laboratorium',
          'kepala laboratorium',
        ],
        onTap: onTap,
      ),
      MenuModel(
        iconMenu: IconConstant.assistantAttendanceOutlineIcon,
        nameMenu: 'features.menu.assistantAttendance',
        routeName: AppRoute.home,
        allowedGroup: [
          'asisten laboratorium',
          'teknisi laboratorium',
          'kepala laboratorium',
        ],
        onTap: onTap,
      ),
      MenuModel(
        iconMenu: IconConstant.practicumAttendanceOutlineIcon,
        nameMenu: 'features.menu.practicumAttendance',
        routeName: AppRoute.home,
        allowedGroup: ['asisten laboratorium'],
        onTap: onTap,
      ),
      MenuModel(
        iconMenu: IconConstant.guestVisitOutlineIcon,
        nameMenu: 'features.menu.guestVisit',
        routeName: AppRoute.home,
        allowedGroup: [
          'asisten laboratorium',
          'teknisi laboratorium',
          'kepala laboratorium',
        ],
        onTap: onTap,
      ),
      MenuModel(
        iconMenu: IconConstant.calendarOutlineIcon,
        nameMenu: 'features.menu.dutySchedule',
        routeName: AppRoute.dutySchedule,
        allowedGroup: [
          'mahasiswa',
          'asisten laboratorium',
          'dosen',
          'teknisi laboratorium',
          'kepala laboratorium',
        ],
        onTap: onTap,
      ),
    ];
  }
}
