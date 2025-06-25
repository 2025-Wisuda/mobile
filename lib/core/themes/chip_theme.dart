import 'package:flutter/material.dart';

import 'package:mobile/core/constants/color_constant.dart';
import 'package:mobile/core/constants/text_style_constant.dart';

class ChipThemeX {
  static ChipThemeData kChipThemeLight = ChipThemeData(
    backgroundColor: ColorConstant.kNeutral100,
    deleteIconColor: ColorConstant.kNeutral600,
    disabledColor: ColorConstant.kNeutral200,
    selectedColor: ColorConstant.kPrimary100,
    secondarySelectedColor: ColorConstant.kPrimary200,
    shadowColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    selectedShadowColor: Colors.transparent,
    checkmarkColor: ColorConstant.kPrimary500,
    labelStyle: TextStyleConstant.labelMedium.copyWith(
      color: ColorConstant.kNeutral800,
      fontWeight: FontWeight.w500,
    ),
    secondaryLabelStyle: TextStyleConstant.labelMedium.copyWith(
      color: ColorConstant.kPrimary500,
      fontWeight: FontWeight.w500,
    ),
    brightness: Brightness.light,
    elevation: 0,
    pressElevation: 0,
    iconTheme: const IconThemeData(
      color: ColorConstant.kNeutral600,
      size: 18,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
      side: BorderSide.none,
    ),
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    labelPadding: const EdgeInsets.symmetric(horizontal: 4),
    side: BorderSide.none,
  );

  static ChipThemeData kChipThemeDark = ChipThemeData(
    backgroundColor: ColorConstant.kNeutral800,
    deleteIconColor: ColorConstant.kNeutral400,
    disabledColor: ColorConstant.kNeutral700,
    selectedColor: ColorConstant.kNeutral700,
    secondarySelectedColor: ColorConstant.kPrimary400,
    shadowColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    selectedShadowColor: Colors.transparent,
    checkmarkColor: ColorConstant.kPrimary300,
    labelStyle: TextStyleConstant.labelMedium.copyWith(
      color: ColorConstant.kNeutral200,
      fontWeight: FontWeight.w500,
    ),
    secondaryLabelStyle: TextStyleConstant.labelMedium.copyWith(
      color: ColorConstant.kPrimary300,
      fontWeight: FontWeight.w500,
    ),
    brightness: Brightness.dark,
    elevation: 0,
    pressElevation: 0,
    iconTheme: const IconThemeData(
      color: ColorConstant.kNeutral400,
      size: 18,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
      side: BorderSide.none,
    ),
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    labelPadding: const EdgeInsets.symmetric(horizontal: 4),
    side: BorderSide.none,
  );
}
