import 'package:flutter/material.dart';

import 'package:mobile/core/constants/color_constant.dart';
import 'package:mobile/core/constants/text_style_constant.dart';

class TextThemeX {
  static TextTheme kTextThemeLight = TextTheme(
    displayLarge: TextStyleConstant.kInterHeading1Regular.copyWith(
      color: ColorConstant.kNeutral900,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.25,
      height: 1.12,
    ),
    displayMedium: TextStyleConstant.kInterHeading2Regular.copyWith(
      color: ColorConstant.kNeutral900,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.16,
    ),
    displaySmall: TextStyleConstant.kInterHeading3Regular.copyWith(
      color: ColorConstant.kNeutral900,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.22,
    ),
    headlineLarge: TextStyleConstant.kInterHeading4Regular.copyWith(
      color: ColorConstant.kNeutral900,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.25,
    ),
    headlineMedium: TextStyleConstant.kInterHeading5Regular.copyWith(
      color: ColorConstant.kNeutral900,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.29,
    ),
    headlineSmall: TextStyleConstant.kInterHeading6Regular.copyWith(
      color: ColorConstant.kNeutral900,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.33,
    ),
    titleLarge: TextStyleConstant.titleLarge.copyWith(
      color: ColorConstant.kNeutral900,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.27,
    ),
    titleMedium: TextStyleConstant.titleMedium.copyWith(
      color: ColorConstant.kNeutral900,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
      height: 1.5,
    ),
    titleSmall: TextStyleConstant.titleSmall.copyWith(
      color: ColorConstant.kNeutral900,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      height: 1.43,
    ),
    bodyLarge: TextStyleConstant.kInterBodyLargeRegular.copyWith(
      color: ColorConstant.kNeutral900,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.5,
    ),
    bodyMedium: const TextStyle(
      fontFamily: 'Inter',
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.2,
      height: 1.43,
      color: ColorConstant.kNeutral900,
    ),
    bodySmall: TextStyleConstant.kInterBodySmallRegular.copyWith(
      color: ColorConstant.kNeutral900,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      height: 1.33,
    ),
    labelLarge: TextStyleConstant.labelLarge.copyWith(
      color: ColorConstant.kNeutral900,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      height: 1.43,
    ),
    labelMedium: TextStyleConstant.labelMedium.copyWith(
      color: ColorConstant.kNeutral900,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      height: 1.33,
    ),
    labelSmall: TextStyleConstant.labelSmall.copyWith(
      color: ColorConstant.kNeutral900,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      height: 1.45,
    ),
  );

  static TextTheme kTextThemeDark = TextTheme(
    displayLarge: TextStyleConstant.kInterHeading1Regular.copyWith(
      color: ColorConstant.kNeutral100,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.25,
      height: 1.12,
    ),
    displayMedium: TextStyleConstant.kInterHeading2Regular.copyWith(
      color: ColorConstant.kNeutral100,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.16,
    ),
    displaySmall: TextStyleConstant.kInterHeading3Regular.copyWith(
      color: ColorConstant.kNeutral100,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.22,
    ),
    headlineLarge: TextStyleConstant.kInterHeading4Regular.copyWith(
      color: ColorConstant.kNeutral100,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.25,
    ),
    headlineMedium: TextStyleConstant.kInterHeading5Regular.copyWith(
      color: ColorConstant.kNeutral100,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.29,
    ),
    headlineSmall: TextStyleConstant.kInterHeading6Regular.copyWith(
      color: ColorConstant.kNeutral100,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.33,
    ),
    titleLarge: TextStyleConstant.titleLarge.copyWith(
      color: ColorConstant.kNeutral100,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.27,
    ),
    titleMedium: TextStyleConstant.titleMedium.copyWith(
      color: ColorConstant.kNeutral100,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
      height: 1.5,
    ),
    titleSmall: TextStyleConstant.titleSmall.copyWith(
      color: ColorConstant.kNeutral100,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      height: 1.43,
    ),
    bodyLarge: TextStyleConstant.kInterBodyLargeRegular.copyWith(
      color: ColorConstant.kNeutral100,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.5,
    ),
    bodyMedium: const TextStyle(
      fontFamily: 'Inter',
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.2,
      height: 1.43,
      color: ColorConstant.kNeutral100,
    ),
    bodySmall: TextStyleConstant.kInterBodySmallRegular.copyWith(
      color: ColorConstant.kNeutral100,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      height: 1.33,
    ),
    labelLarge: TextStyleConstant.labelLarge.copyWith(
      color: ColorConstant.kNeutral100,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      height: 1.43,
    ),
    labelMedium: TextStyleConstant.labelMedium.copyWith(
      color: ColorConstant.kNeutral100,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      height: 1.33,
    ),
    labelSmall: TextStyleConstant.labelSmall.copyWith(
      color: ColorConstant.kNeutral100,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      height: 1.45,
    ),
  );
}
