import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:mobile/core/constants/constant.dart';
import 'package:mobile/features/menu/data/models/model.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';

class MainNavMenuLocalDatasource {
  List<MenuModel> fetchMainNavMenuData({Color? color, VoidCallback? onTap}) {
    return [
      MenuModel(
        iconMenu: IconConstant.homeSolidIcon,
        nameMenu: 'home'.menu(),
        routeName: 0,
        allowedGroup:
            GroupEnum.level4AccessGroups.map((e) => e.toLowerCase).toList(),
        onTap: onTap,
      ),
      MenuModel(
        iconMenu: IconConstant.dateRangeSolidIcon,
        nameMenu: 'schedule'.menu(),
        routeName: 1,
        allowedGroup:
            GroupEnum.level4AccessGroups.map((e) => e.toLowerCase).toList(),
        onTap: onTap,
      ),
      MenuModel(
        iconMenu: IconConstant.documentAddSolidIcon,
        nameMenu: 'roomBooking'.menu(),
        routeName: 2,
        allowedGroup:
            GroupEnum.level4AccessGroups.map((e) => e.toLowerCase).toList(),
        onTap: onTap,
      ),
      MenuModel(
        iconMenu: IconConstant.userSolidIcon,
        nameMenu: 'profile'.menu(),
        routeName: 3,
        allowedGroup:
            GroupEnum.level4AccessGroups.map((e) => e.toLowerCase).toList(),
        onTap: onTap,
      ),
    ];
  }
}
