import 'package:flutter/material.dart';

import 'package:mobile/core/core.dart';

class TabBarThemeDataX {
  static TabBarThemeData kTabBarThemeLight = TabBarThemeData(
    tabAlignment: TabAlignment.center,
    indicatorSize: TabBarIndicatorSize.label,
    indicator: UnderlineTabIndicator(
      borderSide: const BorderSide(
        color: ColorConstant.kPrimary500,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(1),
    ),
    unselectedLabelStyle: TextStyleConstant.labelLarge.copyWith(
      fontWeight: FontWeight.w500,
    ),
    labelStyle: TextStyleConstant.labelLarge.copyWith(
      fontWeight: FontWeight.w600,
    ),
    unselectedLabelColor: ColorConstant.kNeutral500,
    labelColor: ColorConstant.kPrimary500,
    overlayColor: WidgetStateProperty.all(
        ColorConstant.kPrimary500.withValues(alpha: 0.1)),
    dividerColor: Colors.transparent,
    splashFactory: NoSplash.splashFactory,
    labelPadding: const EdgeInsets.symmetric(horizontal: 16),
  );

  static TabBarThemeData kTabBarThemeDark = TabBarThemeData(
    tabAlignment: TabAlignment.center,
    indicatorSize: TabBarIndicatorSize.label,
    indicator: UnderlineTabIndicator(
      borderSide: const BorderSide(
        color: ColorConstant.kPrimary300,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(1),
    ),
    unselectedLabelStyle: TextStyleConstant.labelLarge.copyWith(
      fontWeight: FontWeight.w500,
    ),
    labelStyle: TextStyleConstant.labelLarge.copyWith(
      fontWeight: FontWeight.w600,
    ),
    unselectedLabelColor: ColorConstant.kNeutral400,
    labelColor: ColorConstant.kPrimary300,
    overlayColor: WidgetStateProperty.all(
        ColorConstant.kPrimary300.withValues(alpha: 0.1)),
    dividerColor: Colors.transparent,
    splashFactory: NoSplash.splashFactory,
    labelPadding: const EdgeInsets.symmetric(
      horizontal: 16,
    ),
  );
}
