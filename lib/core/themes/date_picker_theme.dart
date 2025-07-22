import 'package:flutter/material.dart';

import 'package:mobile/core/constants/color_constant.dart';
import 'package:mobile/core/constants/text_style_constant.dart';

class DatePickerThemeX {
  static DatePickerThemeData kDatePickerThemeLight = DatePickerThemeData(
    backgroundColor: ColorConstant.kNeutral50,
    surfaceTintColor: Colors.transparent,
    shadowColor: ColorConstant.kNeutral900.withValues(alpha: 0.1),
    elevation: 8,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),

    // Header styling
    headerBackgroundColor: ColorConstant.kPrimary500,
    headerForegroundColor: ColorConstant.kNeutral50,
    headerHeadlineStyle: TextStyleConstant.titleLarge.copyWith(
      color: ColorConstant.kNeutral50,
      fontWeight: FontWeight.w600,
    ),
    headerHelpStyle: TextStyleConstant.kInterBodyMediumRegular.copyWith(
      color: ColorConstant.kNeutral50.withValues(alpha: 0.8),
    ),

    // Day styling
    dayStyle: TextStyleConstant.kInterBodyMediumRegular.copyWith(
      color: ColorConstant.kNeutral900,
      fontWeight: FontWeight.w500,
    ),
    dayBackgroundColor: WidgetStateProperty.all(Colors.transparent),
    dayForegroundColor: WidgetStateProperty.all(ColorConstant.kNeutral900),

    // Today styling
    todayBackgroundColor: WidgetStateProperty.all(ColorConstant.kPrimary100),
    todayForegroundColor: WidgetStateProperty.all(ColorConstant.kPrimary500),

    // Year styling
    yearStyle: TextStyleConstant.kInterBodyMediumRegular.copyWith(
      color: ColorConstant.kNeutral900,
      fontWeight: FontWeight.w500,
    ),
    yearBackgroundColor: WidgetStateProperty.all(Colors.transparent),
    yearForegroundColor: WidgetStateProperty.all(ColorConstant.kNeutral900),
  );

  static DatePickerThemeData kDatePickerThemeDark = DatePickerThemeData(
    backgroundColor: ColorConstant.kNeutral800,
    surfaceTintColor: Colors.transparent,
    shadowColor: ColorConstant.kNeutral900.withValues(alpha: 0.3),
    elevation: 8,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),

    // Header styling
    headerBackgroundColor: ColorConstant.kPrimary500,
    headerForegroundColor: ColorConstant.kNeutral50,
    headerHeadlineStyle: TextStyleConstant.titleLarge.copyWith(
      color: ColorConstant.kNeutral50,
      fontWeight: FontWeight.w600,
    ),
    headerHelpStyle: TextStyleConstant.kInterBodyMediumRegular.copyWith(
      color: ColorConstant.kNeutral50.withValues(alpha: 0.8),
    ),

    // Day styling
    dayStyle: TextStyleConstant.kInterBodyMediumRegular.copyWith(
      color: ColorConstant.kNeutral100,
      fontWeight: FontWeight.w500,
    ),
    dayBackgroundColor: WidgetStateProperty.all(Colors.transparent),
    dayForegroundColor: WidgetStateProperty.all(ColorConstant.kNeutral100),

    // Today styling
    todayBackgroundColor: WidgetStateProperty.all(ColorConstant.kPrimary200),
    todayForegroundColor: WidgetStateProperty.all(ColorConstant.kPrimary300),

    // Year styling
    yearStyle: TextStyleConstant.kInterBodyMediumRegular.copyWith(
      color: ColorConstant.kNeutral100,
      fontWeight: FontWeight.w500,
    ),
    yearBackgroundColor: WidgetStateProperty.all(Colors.transparent),
    yearForegroundColor: WidgetStateProperty.all(ColorConstant.kNeutral100),
  );
}
