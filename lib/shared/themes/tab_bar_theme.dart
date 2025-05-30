// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile/core/core.dart';

class TabBarThemeDataX {
  static TabBarTheme kTabBarThemeLight = TabBarTheme(
    tabAlignment: TabAlignment.center,
    indicatorSize: TabBarIndicatorSize.label,
    indicatorColor: ColorConstant.kPrimary500,
    unselectedLabelStyle: TextStyleConstant.kInterBodyMediumMedium,
    labelStyle: TextStyleConstant.kInterBodyMediumSemiBold,
    unselectedLabelColor: ColorConstant.kNeutral500,
    labelColor: ColorConstant.kPrimary500,
    overlayColor: WidgetStateProperty.all(ColorConstant.kNeutral200),
    dividerColor: Colors.transparent,
  );

  static TabBarTheme kTabBarThemeDark = TabBarTheme(
    tabAlignment: TabAlignment.center,
    indicatorSize: TabBarIndicatorSize.label,
    indicatorColor: ColorConstant.kPrimary500,
    unselectedLabelStyle: TextStyleConstant.kInterBodyMediumMedium,
    labelStyle: TextStyleConstant.kInterBodyMediumSemiBold,
    unselectedLabelColor: ColorConstant.kNeutral100,
    labelColor: ColorConstant.kNeutral50,
    overlayColor: WidgetStateProperty.all(ColorConstant.kNeutral100),
    dividerColor: Colors.transparent,
  );
}
