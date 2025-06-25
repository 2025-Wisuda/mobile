import 'package:flutter/material.dart';

import 'package:mobile/core/constants/color_constant.dart';
import 'package:mobile/core/constants/text_style_constant.dart';

class NavigationBarThemeX {
  static NavigationBarThemeData kNavigationBarThemeLight =
      NavigationBarThemeData(
    backgroundColor: ColorConstant.kNeutral50,
    elevation: 0,
    shadowColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    indicatorColor: ColorConstant.kPrimary100,
    height: 80,
    labelTextStyle: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return TextStyleConstant.labelSmall.copyWith(
          color: ColorConstant.kPrimary500,
          fontWeight: FontWeight.w600,
        );
      }
      return TextStyleConstant.labelSmall.copyWith(
        color: ColorConstant.kNeutral500,
        fontWeight: FontWeight.w400,
      );
    }),
    iconTheme: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return const IconThemeData(
          color: ColorConstant.kPrimary500,
          size: 24,
        );
      }
      return const IconThemeData(
        color: ColorConstant.kNeutral500,
        size: 24,
      );
    }),
    indicatorShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
  );

  static NavigationBarThemeData kNavigationBarThemeDark =
      NavigationBarThemeData(
    backgroundColor: ColorConstant.kNeutral900,
    elevation: 0,
    shadowColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    indicatorColor: ColorConstant.kNeutral700,
    height: 80,
    labelTextStyle: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return TextStyleConstant.labelSmall.copyWith(
          color: ColorConstant.kPrimary300,
          fontWeight: FontWeight.w600,
        );
      }
      return TextStyleConstant.labelSmall.copyWith(
        color: ColorConstant.kNeutral500,
        fontWeight: FontWeight.w400,
      );
    }),
    iconTheme: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return const IconThemeData(
          color: ColorConstant.kPrimary300,
          size: 24,
        );
      }
      return const IconThemeData(
        color: ColorConstant.kNeutral500,
        size: 24,
      );
    }),
    indicatorShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
  );
}
