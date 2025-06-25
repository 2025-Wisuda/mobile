import 'package:flutter/material.dart';

import 'package:mobile/core/constants/color_constant.dart';

class BottomAppBarThemeX {
  static const BottomAppBarTheme kButtonAppBarThemeDataLight =
      BottomAppBarTheme(
    color: ColorConstant.kNeutral50,
    height: 80,
    elevation: 0,
    shadowColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    shape: null,
  );

  static const BottomAppBarTheme kButtonAppBarThemeDataDark = BottomAppBarTheme(
    color: ColorConstant.kNeutral900,
    height: 80,
    elevation: 0,
    shadowColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    shape: null,
  );
}
