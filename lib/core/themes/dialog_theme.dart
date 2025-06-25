import 'package:flutter/material.dart';

import 'package:mobile/core/constants/color_constant.dart';
import 'package:mobile/core/constants/text_style_constant.dart';

class DialogThemeX {
  static DialogThemeData kDialogThemeLight = DialogThemeData(
    backgroundColor: ColorConstant.kNeutral50,
    elevation: 0,
    shadowColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    insetPadding: const EdgeInsets.symmetric(horizontal: 40, vertical: 24),
    contentTextStyle: TextStyleConstant.labelMedium.copyWith(
      color: ColorConstant.kNeutral700,
      height: 1.4,
    ),
    titleTextStyle: TextStyleConstant.titleMedium.copyWith(
      color: ColorConstant.kNeutral900,
      fontWeight: FontWeight.w600,
    ),
    actionsPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    iconColor: ColorConstant.kNeutral600,
    barrierColor: Colors.black54,
    alignment: Alignment.center,
  );

  static DialogThemeData kDialogThemeDark = DialogThemeData(
    backgroundColor: ColorConstant.kNeutral800,
    elevation: 0,
    shadowColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    insetPadding: const EdgeInsets.symmetric(horizontal: 40, vertical: 24),
    contentTextStyle: TextStyleConstant.labelMedium.copyWith(
      color: ColorConstant.kNeutral300,
      height: 1.4,
    ),
    titleTextStyle: TextStyleConstant.titleMedium.copyWith(
      color: ColorConstant.kNeutral100,
      fontWeight: FontWeight.w600,
    ),
    actionsPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    iconColor: ColorConstant.kNeutral400,
    barrierColor: Colors.black54,
    alignment: Alignment.center,
  );
}
