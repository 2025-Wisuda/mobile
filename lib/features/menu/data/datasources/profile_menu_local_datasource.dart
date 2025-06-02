import 'dart:ui';

import 'package:injectable/injectable.dart';

import 'package:mobile/core/constants/constant.dart';
import 'package:mobile/core/enums/enum.dart';
import 'package:mobile/features/menu/data/models/model.dart';
import 'package:mobile/shared/extensions/extension.dart';

@injectable
class ProfileMenuLocalDatasource {
  List<MenuSectionModel> fetchProfileMenuData({VoidCallback? onTap}) {
    final data = [
      MenuSectionModel(
        title: 'personalInfo'.menu(),
        menus: [
          MenuModel(
            iconMenu: IconConstant.userOutlineIcon,
            nameMenu: 'accountInfo'.menu(),
            routeName: '/profile',
            allowedGroup:
                GroupEnum.level4AccessGroups.map((e) => e.toLowerCase).toList(),
            onTap: onTap,
          ),
          MenuModel(
            iconMenu: IconConstant.keyOutlineIcon,
            nameMenu: 'changePassword'.menu(),
            routeName: '/change-password',
            allowedGroup:
                GroupEnum.level4AccessGroups.map((e) => e.toLowerCase).toList(),
            onTap: onTap,
          ),
        ],
      ),
      MenuSectionModel(
        title: 'setting'.menu(),
        menus: [
          MenuModel(
            iconMenu: IconConstant.translateOutlineIcon,
            nameMenu: 'language'.menu(),
            routeName: '/settings/language',
            allowedGroup:
                GroupEnum.level4AccessGroups.map((e) => e.toLowerCase).toList(),
            onTap: onTap,
          ),
          MenuModel(
            iconMenu: IconConstant.sunOutlineIcon,
            nameMenu: 'darkMode'.menu(),
            routeName: '/settings/theme',
            allowedGroup:
                GroupEnum.level4AccessGroups.map((e) => e.toLowerCase).toList(),
            onTap: onTap,
          ),
        ],
      ),
      MenuSectionModel(
        title: 'about'.menu(),
        menus: [
          MenuModel(
            iconMenu: IconConstant.codeOutlineIcon,
            nameMenu: 'aboutUs'.menu(),
            routeName: '/about-us',
            allowedGroup:
                GroupEnum.level4AccessGroups.map((e) => e.toLowerCase).toList(),
            onTap: onTap,
          ),
        ],
      ),
    ];
    return data;
  }
}
