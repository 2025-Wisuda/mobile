import 'package:flutter/material.dart';

import 'package:mobile/core/constants/color_constant.dart';
import 'theme.dart';

class AppTheme {
  static const _kLightThemeFont = 'Inter', _kDarkThemeFont = 'Inter';
  static final kLightTheme = ThemeData(
    primaryColor: ColorConstant.kPrimary500,
    brightness: Brightness.light,
    scaffoldBackgroundColor: ColorConstant.kNeutral50,
    useMaterial3: true,
    fontFamily: _kLightThemeFont,
    textTheme: TextThemeX.kTextThemeLight,
    colorScheme: ColorSchemeX.kColorSchemeLight,
    inputDecorationTheme: InputDecorationThemeX.kInputDecorationThemeLight,
    elevatedButtonTheme: ButtonThemeX.kElevatedButtonThemeLight,
    textButtonTheme: ButtonThemeX.kTextButtonThemeLight,
    outlinedButtonTheme: ButtonThemeX.kOutlinedButtonThemeLight,
    iconButtonTheme: ButtonThemeX.kIconButtonThemeLight,
    floatingActionButtonTheme: ButtonThemeX.kFloatingActionButtonThemeLight,
    buttonTheme: ButtonThemeX.kButtonThemeDataLight,
    dividerTheme: DividerThemeX.kDividerThemeDataLight,
    bottomAppBarTheme: BottomAppBarThemeX.kButtonAppBarThemeDataLight,
    appBarTheme: AppBarThemeData.kAppBarThemeLight,
    searchBarTheme: SearchBarThemeX.kSearchBarThemeDataLight,
    tabBarTheme: TabBarThemeDataX.kTabBarThemeLight,
    dropdownMenuTheme: DropdownMenuThemeX.kDropdownMenuThemeDataLight,
    iconTheme: IconThemeData(color: ColorConstant.kNeutral900),
    scrollbarTheme: ScrollbarThemeX.kScrollbarThemeLight,
    bottomSheetTheme: BottomSheetThemeX.kBottomSheetThemeLight,
    dialogTheme: DialogThemeX.kDialogThemeLight,
    navigationBarTheme: NavigationBarThemeX.kNavigationBarThemeLight,
    switchTheme: SwitchThemeX.kSwitchThemeLight,
    chipTheme: ChipThemeX.kChipThemeLight,
    cardTheme: CardThemeX.light(ColorSchemeX.kColorSchemeLight),
  );

  static final kDarkTheme = ThemeData(
    primaryColor: ColorConstant.kPrimary500,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: ColorConstant.kNeutral900,
    useMaterial3: true,
    fontFamily: _kDarkThemeFont,
    textTheme: TextThemeX.kTextThemeDark,
    colorScheme: ColorSchemeX.kColorSchemeDark,
    inputDecorationTheme: InputDecorationThemeX.kInputDecorationThemeDark,
    elevatedButtonTheme: ButtonThemeX.kElevatedButtonThemeDark,
    textButtonTheme: ButtonThemeX.kTextButtonThemeDark,
    outlinedButtonTheme: ButtonThemeX.kOutlinedButtonThemeDark,
    iconButtonTheme: ButtonThemeX.kIconButtonThemeDark,
    floatingActionButtonTheme: ButtonThemeX.kFloatingActionButtonThemeDark,
    buttonTheme: ButtonThemeX.kButtonDataThemeDataDark,
    dividerTheme: DividerThemeX.kDividerDataThemeDataDark,
    bottomAppBarTheme: BottomAppBarThemeX.kButtonAppBarThemeDataDark,
    appBarTheme: AppBarThemeData.kAppBarThemeDark,
    searchBarTheme: SearchBarThemeX.kSearchBarThemeDataDark,
    tabBarTheme: TabBarThemeDataX.kTabBarThemeDark,
    dropdownMenuTheme: DropdownMenuThemeX.kDropdownMenuThemeDataDark,
    iconTheme: IconThemeData(color: ColorConstant.kNeutral50),
    scrollbarTheme: ScrollbarThemeX.kScrollbarThemeDark,
    bottomSheetTheme: BottomSheetThemeX.kBottomSheetThemeDark,
    dialogTheme: DialogThemeX.kDialogThemeDark,
    navigationBarTheme: NavigationBarThemeX.kNavigationBarThemeDark,
    switchTheme: SwitchThemeX.kSwitchThemeDark,
    chipTheme: ChipThemeX.kChipThemeDark,
    cardTheme: CardThemeX.dark(ColorSchemeX.kColorSchemeDark),
  );
}
