import 'package:flutter/material.dart';

import 'package:mobile/core/core.dart';

class SearchBarThemeX {
  static SearchBarThemeData kSearchBarThemeDataLight = SearchBarThemeData(
    surfaceTintColor: WidgetStateProperty.all(ColorConstant.kNeutral100),
    hintStyle: WidgetStateProperty.all(
      TextStyleConstant.kInterBodyMediumMedium,
    ),
    textStyle: WidgetStateProperty.all(
      TextStyleConstant.kInterBodyMediumMedium,
    ),
    shadowColor: WidgetStateProperty.all(Colors.transparent),
    backgroundColor: WidgetStateProperty.all(ColorConstant.kNeutral100),
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
        side: const BorderSide(color: ColorConstant.kNeutral800, width: 1),
      ),
    ),
    overlayColor: const WidgetStatePropertyAll(ColorConstant.kNeutral100),
  );

  static SearchBarThemeData kSearchBarThemeDataDark = SearchBarThemeData(
    hintStyle: WidgetStateProperty.all(
      TextStyleConstant.kInterBodyMediumMedium,
    ),
    textStyle: WidgetStateProperty.all(
      TextStyleConstant.kInterBodyMediumMedium,
    ),
    surfaceTintColor: WidgetStateProperty.all(ColorConstant.kNeutral100),
    shadowColor: WidgetStateProperty.all(Colors.transparent),
    backgroundColor: WidgetStateProperty.all(ColorConstant.kNeutral100),
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
        side: const BorderSide(color: ColorConstant.kNeutral400, width: 1),
      ),
    ),
    overlayColor: const WidgetStatePropertyAll(ColorConstant.kNeutral100),
  );
}
