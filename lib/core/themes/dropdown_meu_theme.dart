import 'package:flutter/material.dart';

import 'package:mobile/core/constants/color_constant.dart';
import 'package:mobile/core/constants/text_style_constant.dart';

class DropdownMenuThemeX {
  static DropdownMenuThemeData kDropdownMenuThemeDataLight =
      DropdownMenuThemeData(
    textStyle: TextStyleConstant.labelMedium,
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyleConstant.labelMedium.copyWith(
        color: ColorConstant.kNeutral600,
      ),
      floatingLabelStyle: TextStyleConstant.labelMedium.copyWith(
        color: ColorConstant.kPrimary500,
      ),
      helperStyle: TextStyleConstant.labelSmall.copyWith(
        color: ColorConstant.kNeutral500,
      ),
      helperMaxLines: 1,
      hintStyle: TextStyleConstant.labelMedium.copyWith(
        color: ColorConstant.kNeutral400,
      ),
      hintFadeDuration: const Duration(milliseconds: 150),
      errorStyle: TextStyleConstant.labelSmall.copyWith(
        color: ColorConstant.kError500,
      ),
      errorMaxLines: 1,
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      floatingLabelAlignment: FloatingLabelAlignment.start,
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      isCollapsed: false,
      iconColor: ColorConstant.kNeutral500,
      prefixStyle: TextStyleConstant.labelMedium.copyWith(
        color: ColorConstant.kNeutral700,
      ),
      prefixIconColor: ColorConstant.kNeutral500,
      suffixStyle: TextStyleConstant.labelMedium.copyWith(
        color: ColorConstant.kNeutral700,
      ),
      suffixIconColor: ColorConstant.kNeutral500,
      counterStyle: TextStyleConstant.labelSmall.copyWith(
        color: ColorConstant.kNeutral500,
      ),
      filled: true,
      fillColor: ColorConstant.kNeutral100,
      focusColor: ColorConstant.kPrimary100,
      hoverColor: ColorConstant.kNeutral100,
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(10),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: ColorConstant.kPrimary500,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    menuStyle: MenuStyle(
      backgroundColor: WidgetStateProperty.all(ColorConstant.kNeutral50),
      shadowColor: WidgetStateProperty.all(
          ColorConstant.kNeutral900.withValues(alpha: 0.1)),
      elevation: WidgetStateProperty.all(8),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8)),
    ),
  );

  static DropdownMenuThemeData kDropdownMenuThemeDataDark =
      DropdownMenuThemeData(
    textStyle: TextStyleConstant.labelMedium.copyWith(
      color: ColorConstant.kNeutral100,
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyleConstant.labelMedium.copyWith(
        color: ColorConstant.kNeutral400,
      ),
      floatingLabelStyle: TextStyleConstant.labelMedium.copyWith(
        color: ColorConstant.kPrimary300,
      ),
      helperStyle: TextStyleConstant.labelSmall.copyWith(
        color: ColorConstant.kNeutral500,
      ),
      helperMaxLines: 1,
      hintStyle: TextStyleConstant.labelMedium.copyWith(
        color: ColorConstant.kNeutral500,
      ),
      hintFadeDuration: const Duration(milliseconds: 150),
      errorStyle: TextStyleConstant.labelSmall.copyWith(
        color: ColorConstant.kError400,
      ),
      errorMaxLines: 1,
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      floatingLabelAlignment: FloatingLabelAlignment.start,
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      isCollapsed: false,
      iconColor: ColorConstant.kNeutral500,
      prefixStyle: TextStyleConstant.labelMedium.copyWith(
        color: ColorConstant.kNeutral300,
      ),
      prefixIconColor: ColorConstant.kNeutral500,
      suffixStyle: TextStyleConstant.labelMedium.copyWith(
        color: ColorConstant.kNeutral300,
      ),
      suffixIconColor: ColorConstant.kNeutral500,
      counterStyle: TextStyleConstant.labelSmall.copyWith(
        color: ColorConstant.kNeutral500,
      ),
      filled: true,
      fillColor: ColorConstant.kNeutral800,
      focusColor: ColorConstant.kPrimary200,
      hoverColor: ColorConstant.kNeutral800,
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(10),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: ColorConstant.kPrimary300,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    menuStyle: MenuStyle(
      backgroundColor: WidgetStateProperty.all(ColorConstant.kNeutral800),
      shadowColor: WidgetStateProperty.all(
          ColorConstant.kNeutral900.withValues(alpha: 0.2)),
      elevation: WidgetStateProperty.all(8),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8)),
    ),
  );
}
