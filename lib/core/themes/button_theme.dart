import 'package:flutter/material.dart';

import 'package:mobile/core/core.dart';

class ButtonThemeX {
  static ElevatedButtonThemeData kElevatedButtonThemeLight =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: ColorConstant.kPrimary500,
      foregroundColor: ColorConstant.kNeutral50,
      disabledBackgroundColor: ColorConstant.kNeutral300,
      disabledForegroundColor: ColorConstant.kNeutral500,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
      ),
      minimumSize: const Size(64, 48),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      elevation: 0,
      shadowColor: Colors.transparent,
      animationDuration: const Duration(milliseconds: 150),
      splashFactory: NoSplash.splashFactory,
      overlayColor: ColorConstant.kNeutral50.withValues(alpha: 0.15),
    ),
  );

  static ElevatedButtonThemeData kElevatedButtonThemeDark =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: ColorConstant.kPrimary300,
      foregroundColor: ColorConstant.kNeutral900,
      disabledBackgroundColor: ColorConstant.kNeutral600,
      disabledForegroundColor: ColorConstant.kNeutral400,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
      ),
      minimumSize: const Size(64, 48),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      elevation: 0,
      shadowColor: Colors.transparent,
      animationDuration: const Duration(milliseconds: 150),
      splashFactory: NoSplash.splashFactory,
      overlayColor: ColorConstant.kNeutral900.withValues(alpha: 0.15),
    ),
  );

  static TextButtonThemeData kTextButtonThemeLight = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: ColorConstant.kPrimary500,
      disabledForegroundColor: ColorConstant.kNeutral400,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
      ),
      minimumSize: const Size(64, 48),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      animationDuration: const Duration(milliseconds: 150),
      splashFactory: NoSplash.splashFactory,
      overlayColor: ColorConstant.kPrimary500.withValues(alpha: 0.1),
    ),
  );

  static TextButtonThemeData kTextButtonThemeDark = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: ColorConstant.kPrimary300,
      disabledForegroundColor: ColorConstant.kNeutral500,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
      ),
      minimumSize: const Size(64, 48),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      animationDuration: const Duration(milliseconds: 150),
      splashFactory: NoSplash.splashFactory,
      overlayColor: ColorConstant.kPrimary300.withValues(alpha: 0.1),
    ),
  );

  static OutlinedButtonThemeData kOutlinedButtonThemeLight =
      OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: ColorConstant.kPrimary500,
      disabledForegroundColor: ColorConstant.kNeutral400,
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
      ),
      minimumSize: const Size(64, 48),
      side: const BorderSide(color: ColorConstant.kPrimary500, width: 1),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      animationDuration: const Duration(milliseconds: 150),
      splashFactory: NoSplash.splashFactory,
      overlayColor: ColorConstant.kPrimary500.withValues(alpha: 0.1),
    ).copyWith(
      side: WidgetStateProperty.resolveWith<BorderSide>((states) {
        if (states.contains(WidgetState.disabled)) {
          return const BorderSide(color: ColorConstant.kNeutral300, width: 1);
        }
        return const BorderSide(color: ColorConstant.kPrimary500, width: 1);
      }),
    ),
  );

  static OutlinedButtonThemeData kOutlinedButtonThemeDark =
      OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: ColorConstant.kPrimary300,
      disabledForegroundColor: ColorConstant.kNeutral500,
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
      ),
      minimumSize: const Size(64, 48),
      side: const BorderSide(color: ColorConstant.kPrimary300, width: 1),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      animationDuration: const Duration(milliseconds: 150),
      splashFactory: NoSplash.splashFactory,
      overlayColor: ColorConstant.kPrimary300.withValues(alpha: 0.1),
    ).copyWith(
      side: WidgetStateProperty.resolveWith<BorderSide>((states) {
        if (states.contains(WidgetState.disabled)) {
          return const BorderSide(color: ColorConstant.kNeutral600, width: 1);
        }
        return const BorderSide(color: ColorConstant.kPrimary300, width: 1);
      }),
    ),
  );

  static IconButtonThemeData kIconButtonThemeLight = IconButtonThemeData(
    style: IconButton.styleFrom(
      foregroundColor: ColorConstant.kNeutral700,
      disabledForegroundColor: ColorConstant.kNeutral400,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      minimumSize: const Size(44, 44),
      maximumSize: const Size(44, 44),
      padding: const EdgeInsets.all(10),
      animationDuration: const Duration(milliseconds: 150),
      splashFactory: NoSplash.splashFactory,
      overlayColor: ColorConstant.kNeutral700.withValues(alpha: 0.1),
    ),
  );

  static IconButtonThemeData kIconButtonThemeDark = IconButtonThemeData(
    style: IconButton.styleFrom(
      foregroundColor: ColorConstant.kNeutral200,
      disabledForegroundColor: ColorConstant.kNeutral500,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      minimumSize: const Size(44, 44),
      maximumSize: const Size(44, 44),
      padding: const EdgeInsets.all(10),
      animationDuration: const Duration(milliseconds: 150),
      splashFactory: NoSplash.splashFactory,
      overlayColor: ColorConstant.kNeutral200.withValues(alpha: 0.1),
    ),
  );

  static FloatingActionButtonThemeData kFloatingActionButtonThemeLight =
      FloatingActionButtonThemeData(
    backgroundColor: ColorConstant.kPrimary500,
    foregroundColor: ColorConstant.kNeutral50,
    disabledElevation: 0,
    elevation: 1,
    focusElevation: 1,
    hoverElevation: 1,
    highlightElevation: 1,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    splashColor: ColorConstant.kNeutral50.withValues(alpha: 0.15),
  );

  static FloatingActionButtonThemeData kFloatingActionButtonThemeDark =
      FloatingActionButtonThemeData(
    backgroundColor: ColorConstant.kPrimary300,
    foregroundColor: ColorConstant.kNeutral900,
    disabledElevation: 0,
    elevation: 1,
    focusElevation: 1,
    hoverElevation: 1,
    highlightElevation: 1,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    splashColor: ColorConstant.kNeutral900.withValues(alpha: 0.15),
  );

  static ButtonThemeData kButtonThemeDataLight = ButtonThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(22),
    ),
    colorScheme: ColorSchemeX.kColorSchemeLight,
    buttonColor: ColorConstant.kPrimary500,
    textTheme: ButtonTextTheme.primary,
    height: 44,
    minWidth: 64,
  );

  static ButtonThemeData kButtonDataThemeDataDark = ButtonThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(22),
    ),
    colorScheme: ColorSchemeX.kColorSchemeDark,
    buttonColor: ColorConstant.kPrimary300,
    textTheme: ButtonTextTheme.primary,
    height: 44,
    minWidth: 64,
  );
}
