import 'package:flutter/material.dart';

import 'package:mobile/core/constants/color_constant.dart';

class CardThemeX {
  static CardThemeData light(ColorScheme colorScheme) => CardThemeData(
        color: ColorConstant.kNeutral50,
        shadowColor: ColorConstant.kNeutral900.withValues(alpha: 0.05),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: ColorConstant.kNeutral200,
            width: 0.5,
          ),
        ),
        margin: EdgeInsets.zero,
      );

  static CardThemeData dark(ColorScheme colorScheme) => CardThemeData(
        color: ColorConstant.kNeutral800,
        shadowColor: ColorConstant.kNeutral900.withValues(alpha: 0.1),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: ColorConstant.kNeutral700,
            width: 0.5,
          ),
        ),
        margin: EdgeInsets.zero,
      );
}
