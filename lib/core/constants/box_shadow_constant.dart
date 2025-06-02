import 'package:flutter/material.dart';

import 'package:mobile/core/constants/color_constant.dart';

class BoxShadowConstant {
  static const BoxShadow kDefaultBoxShadow = BoxShadow(
    color: ColorConstant.kNeutral500,
    offset: Offset(0, 1),
    blurRadius: 2,
    spreadRadius: 0,
  );
  static const BoxShadow kDefaultBoxShadowLight = BoxShadow(
    color: ColorConstant.kNeutral100,
    offset: Offset(0, 1),
    blurRadius: 2,
    spreadRadius: 0,
  );
  static const BoxShadow kDefaultBoxShadowDark = BoxShadow(
    color: ColorConstant.kNeutral900,
    offset: Offset(0, 1),
    blurRadius: 2,
    spreadRadius: 0,
  );
  static const BoxShadow kDefaultBoxShadowError = BoxShadow(
    color: ColorConstant.kError500,
    offset: Offset(0, 1),
    blurRadius: 2,
    spreadRadius: 0,
  );
  static const BoxShadow kDefaultBoxShadowSuccess = BoxShadow(
    color: ColorConstant.kSuccess500,
    offset: Offset(0, 1),
    blurRadius: 2,
    spreadRadius: 0,
  );
}
