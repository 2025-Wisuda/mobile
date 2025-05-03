import 'package:easy_localization/easy_localization.dart';
import 'package:mobile/core/constants/icon_constant.dart';
import 'package:mobile/features/general/menu/data/models/menu_model.dart';
import 'package:mobile/features/general/menu/data/models/menu_section_model.dart';
import 'package:mobile/shared/routes/app_route.dart';

class ProfileMenuLocalDatasource {
  List<MenuSectionModel> getProfileMenuData() {
    return [
      MenuSectionModel(
        title: 'features.menu.personalInfo'.tr(),
        menus: [
          MenuModel(
            iconMenu: IconConstant.userOutlineIcon,
            nameMenu: 'features.menu.accountInfo'.tr(),
            routeName: AppRoute.home,
          ),
          MenuModel(
            iconMenu: IconConstant.keyOutlineIcon,
            nameMenu: 'features.menu.changePassword'.tr(),
            routeName: AppRoute.home,
          ),
        ],
      ),
      MenuSectionModel(
        title: 'features.menu.setting'.tr(),
        menus: [
          MenuModel(
            iconMenu: IconConstant.translateOutlineIcon,
            nameMenu: 'features.menu.language'.tr(),
            routeName: AppRoute.home,
          ),
          MenuModel(
            iconMenu: IconConstant.sunOutlineIcon,
            nameMenu: 'features.menu.darkMode'.tr(),
            routeName: AppRoute.home,
          ),
        ],
      ),
      MenuSectionModel(
        title: 'features.menu.about'.tr(),
        menus: [
          MenuModel(
            iconMenu: IconConstant.codeOutlineIcon,
            nameMenu: 'features.menu.aboutUs'.tr(),
            routeName: AppRoute.aboutUs,
          ),
        ],
      ),
    ];
  }
}
