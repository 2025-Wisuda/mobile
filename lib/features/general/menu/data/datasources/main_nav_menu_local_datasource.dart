import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mobile/features/general/menu/data/models/menu_model.dart';
import 'package:mobile/core/constants/icon_constant.dart';

class MainNavMenuLocalDatasource {
  List<MenuModel> fetchMainNavMenuData({Color? color, VoidCallback? onTap}) {
    return [
      MenuModel(
        iconMenu: IconConstant.homeSolidIcon,
        nameMenu: 'features.menu.home'.tr(),
        routeName: 0,
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
        iconMenu: IconConstant.dateRangeSolidIcon,
        nameMenu: 'features.menu.schedule'.tr(),
        routeName: 1,
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
        iconMenu: IconConstant.documentAddSolidIcon,
        nameMenu: 'features.menu.roomBooking'.tr(),
        routeName: 2,
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
        iconMenu: IconConstant.userSolidIcon,
        nameMenu: 'features.menu.profile'.tr(),
        routeName: 3,
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
