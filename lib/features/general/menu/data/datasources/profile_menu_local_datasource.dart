// Dart imports:
import 'dart:ui';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;

// Project imports:
import 'package:mobile/core/constants/icon_constant.dart';
import 'package:mobile/features/general/menu/data/models/model.dart';
import 'package:mobile/shared/routes/route.dart';

class ProfileMenuLocalDatasource {
  List<MenuSectionModel> fetchProfileMenuData({VoidCallback? onTap}) {
    return [
      MenuSectionModel(
        title: i18n.tr('features.menu.personalInfo'),
        menus: [
          MenuModel(
            iconMenu: IconConstant.userOutlineIcon,
            nameMenu: i18n.tr('features.menu.accountInfo'),
            routeName: AppRoute.home,
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
            iconMenu: IconConstant.keyOutlineIcon,
            nameMenu: i18n.tr('features.menu.changePassword'),
            routeName: AppRoute.home,
            allowedGroup: [
              'mahasiswa',
              'asisten laboratorium',
              'dosen',
              'teknisi laboratorium',
              'kepala laboratorium',
            ],
            onTap: onTap,
          ),
        ],
      ),
      MenuSectionModel(
        title: i18n.tr('features.menu.setting'),
        menus: [
          MenuModel(
            iconMenu: IconConstant.translateOutlineIcon,
            nameMenu: i18n.tr('features.menu.language'),
            routeName: AppRoute.home,
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
            iconMenu: IconConstant.sunOutlineIcon,
            nameMenu: i18n.tr('features.menu.darkMode'),
            routeName: AppRoute.home,
            allowedGroup: [
              'mahasiswa',
              'asisten laboratorium',
              'dosen',
              'teknisi laboratorium',
              'kepala laboratorium',
            ],
            onTap: onTap,
          ),
        ],
      ),
      MenuSectionModel(
        title: i18n.tr('features.menu.about'),
        menus: [
          MenuModel(
            iconMenu: IconConstant.codeOutlineIcon,
            nameMenu: i18n.tr('features.menu.aboutUs'),
            routeName: AppRoute.aboutUs,
            allowedGroup: [
              'mahasiswa',
              'asisten laboratorium',
              'dosen',
              'teknisi laboratorium',
              'kepala laboratorium',
            ],
            onTap: onTap,
          ),
        ],
      ),
    ];
  }
}
