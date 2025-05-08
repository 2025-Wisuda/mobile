import 'package:flutter/material.dart';
import 'package:mobile/core/core.dart';
import 'package:mobile/shared/shared.dart';

class AppTheme {
  static const _kLightThemeFont = 'Inter',
      _kDarkThemeFont = 'Inter'; // Change to app desired font family
  static final kLightTheme = ThemeData(
    primaryColor: ColorConstant.kPrimary500,
    brightness: Brightness.light,
    scaffoldBackgroundColor: ColorConstant.kNeutral50,
    useMaterial3: true,
    fontFamily: _kLightThemeFont,
    colorScheme: ColorSchemeX.kColorSchemeLight,
    textTheme: TextThemeX.kTextThemeLight,
    inputDecorationTheme: InputDecorationThemeX.kInputDecorationThemeLight,
    buttonTheme: ButtonThemeX.kButtonThemeDataLight,
    dividerTheme: DividerThemeX.kDividerThemeDataLight,
    bottomAppBarTheme: BottomAppBarThemeX.kButtonAppBarThemeDataLight,
    appBarTheme: AppBarThemeData.kAppBarThemeLight,
    searchBarTheme: SearchBarThemeX.kSearchBarThemeDataLight,
  );

  // Change this theme if want to use a different theme for dark theme
  static final kDarkTheme = ThemeData(
    primaryColor: ColorConstant.kPrimary500,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: ColorConstant.kNeutral900,
    useMaterial3: true,
    fontFamily: _kDarkThemeFont,
    colorScheme: ColorSchemeX.kColorSchemeDark,
    textTheme: TextThemeX.kTextThemeDark,
    inputDecorationTheme: InputDecorationThemeX.kInputDecorationThemeDark,
    buttonTheme: ButtonThemeX.kButtonDataThemeDataDark,
    dividerTheme: DividerThemeX.kDividerDataThemeDataDark,
    bottomAppBarTheme: BottomAppBarThemeX.kButtonAppBarThemeDataDark,
    appBarTheme: AppBarThemeData.kAppBarThemeDark,
    searchBarTheme: SearchBarThemeX.kSearchBarThemeDataDark,
  );
}
