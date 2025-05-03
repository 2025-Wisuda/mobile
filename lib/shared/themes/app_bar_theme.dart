import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile/core/constants/color_constant.dart';
import 'package:mobile/core/constants/text_style_constant.dart';

class AppBarThemeData {
  static AppBarTheme kAppBarThemeLight = AppBarTheme(
    centerTitle: false,
    backgroundColor: ColorConstant.kNeutral50,
    scrolledUnderElevation: 0,
    titleTextStyle: TextStyleConstant.kInterBodyMediumSemiBold.copyWith(
      color: ColorConstant.kNeutral900,
    ),
    iconTheme: const IconThemeData(color: ColorConstant.kNeutral900, size: 24),
    elevation: 0,
    actionsIconTheme: const IconThemeData(color: ColorConstant.kNeutral900),
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
  );

  static AppBarTheme kAppBarThemeDark = AppBarTheme(
    centerTitle: false,
    backgroundColor: ColorConstant.kNeutral900,
    scrolledUnderElevation: 0,
    titleTextStyle: TextStyleConstant.kInterBodyMediumSemiBold.copyWith(
      color: ColorConstant.kNeutral50,
    ),
    iconTheme: const IconThemeData(color: ColorConstant.kNeutral50, size: 24),
    elevation: 0,
    actionsIconTheme: const IconThemeData(color: ColorConstant.kNeutral50),
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ),
  );
}
