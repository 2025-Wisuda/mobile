import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:mobile/core/constants/color_constant.dart';
import 'package:mobile/core/constants/text_style_constant.dart';

class AppBarThemeData {
  static AppBarTheme kAppBarThemeLight = AppBarTheme(
    centerTitle: true,
    backgroundColor: ColorConstant.kNeutral50,
    toolbarHeight: 44.0,
    scrolledUnderElevation: 0,
    elevation: 0,
    titleTextStyle: TextStyleConstant.titleLarge.copyWith(
      color: ColorConstant.kNeutral900,
      fontSize: 17,
      fontWeight: FontWeight.w600,
    ),
    iconTheme: const IconThemeData(color: ColorConstant.kNeutral900, size: 18),
    actionsIconTheme:
        const IconThemeData(color: ColorConstant.kNeutral900, size: 18),
    titleSpacing: 16,
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
  );

  static AppBarTheme kAppBarThemeDark = AppBarTheme(
    centerTitle: true,
    backgroundColor: ColorConstant.kNeutral900,
    toolbarHeight: 44.0,
    scrolledUnderElevation: 0,
    elevation: 0,
    titleTextStyle: TextStyleConstant.titleLarge.copyWith(
      color: ColorConstant.kNeutral50,
      fontSize: 17,
      fontWeight: FontWeight.w600,
    ),
    iconTheme: const IconThemeData(color: ColorConstant.kNeutral50, size: 18),
    actionsIconTheme:
        const IconThemeData(color: ColorConstant.kNeutral50, size: 18),
    titleSpacing: 16,
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ),
  );
}
