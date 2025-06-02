import 'package:flutter/material.dart';

import 'package:mobile/core/core.dart';

class ButtonThemeX {
  static ButtonThemeData kButtonThemeDataLight = ButtonThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
    ),
    colorScheme: ColorSchemeX.kColorSchemeLight,
    buttonColor: Colors.transparent,
    textTheme: ButtonTextTheme.primary,
    height: 44,
    minWidth: double.infinity,
  );

  static ButtonThemeData kButtonDataThemeDataDark = ButtonThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
    ),
    colorScheme: ColorSchemeX.kColorSchemeDark,
    buttonColor: Colors.transparent,
    textTheme: ButtonTextTheme.primary,
    height: 44,
    minWidth: double.infinity,
  );
}
