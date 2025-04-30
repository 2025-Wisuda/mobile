import 'package:easy_localization/easy_localization.dart';
import 'package:mobile/core/constants/icon_constant.dart';
import 'package:mobile/features/general/menu/data/models/menu_model.dart';
import 'package:mobile/shared/routes/app_route.dart';

class MainMenuLocalDatasource {
  List<MenuModel> getMenuData() {
    return [
      MenuModel(
        iconMenu: IconConstant.classOutlineIcon,
        nameMenu: 'features.menu.class'.tr(),
        routeName: AppRoute.home,
      ),
      MenuModel(
        iconMenu: IconConstant.assistantAttendanceOutlineIcon,
        nameMenu: 'features.menu.assistantAttendance'.tr(),
        routeName: AppRoute.home,
      ),
      MenuModel(
        iconMenu: IconConstant.practicumAttendanceOutlineIcon,
        nameMenu: 'features.menu.practicumAttendance'.tr(),
        routeName: AppRoute.home,
      ),
      MenuModel(
        iconMenu: IconConstant.guestVisitOutlineIcon,
        nameMenu: 'features.menu.guestVisit'.tr(),
        routeName: AppRoute.home,
      ),
    ];
  }
}
