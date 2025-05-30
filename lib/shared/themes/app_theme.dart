// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile/core/core.dart';
import 'theme.dart';

// Project imports:

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
    tabBarTheme: TabBarThemeDataX.kTabBarThemeLight,
    dropdownMenuTheme: DropdownMenuThemeX.kDropdownMenuThemeDataLight,
    iconTheme: IconThemeData(color: ColorConstant.kNeutral900),
    scrollbarTheme: ScrollbarThemeX.kScrollbarThemeLight,
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
    tabBarTheme: TabBarThemeDataX.kTabBarThemeDark,
    dropdownMenuTheme: DropdownMenuThemeX.kDropdownMenuThemeDataDark,
    iconTheme: IconThemeData(color: ColorConstant.kNeutral50),
    scrollbarTheme: ScrollbarThemeX.kScrollbarThemeDark,
  );
}
