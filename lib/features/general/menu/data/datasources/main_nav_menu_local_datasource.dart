// Dart imports:
import 'dart:ui';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;

// Project imports:
import 'package:mobile/core/constants/icon_constant.dart';
import 'package:mobile/features/general/menu/data/models/menu_model.dart';

class MainNavMenuLocalDatasource {
  List<MenuModel> fetchMainNavMenuData({Color? color, VoidCallback? onTap}) {
    return [
      MenuModel(
        iconMenu: IconConstant.homeSolidIcon,
        nameMenu: i18n.tr('features.menu.home'),
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
        nameMenu: i18n.tr('features.menu.schedule'),
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
        nameMenu: i18n.tr('features.menu.roomBooking'),
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
        nameMenu: i18n.tr('features.menu.profile'),
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
