import 'package:flutter/material.dart';

import 'package:mobile/core/constants/color_constant.dart';
import 'package:mobile/core/core.dart';

class ScrollbarThemeX {
  static final kScrollbarThemeLight = ScrollbarThemeData(
    thumbColor: WidgetStateProperty.all(
        ColorConstant.kNeutral400.withValues(alpha: 0.6)),
    trackColor: WidgetStateProperty.all(Colors.transparent),
    minThumbLength: 40,
    radius: const Radius.circular(4),
    thickness: WidgetStateProperty.all(4),
    trackVisibility: WidgetStateProperty.all(false),
    thumbVisibility: WidgetStateProperty.all(false),
    interactive: true,
    crossAxisMargin: 2,
    mainAxisMargin: 4,
  );

  static final kScrollbarThemeDark = ScrollbarThemeData(
    thumbColor: WidgetStateProperty.all(
        ColorConstant.kNeutral500.withValues(alpha: 0.6)),
    trackColor: WidgetStateProperty.all(Colors.transparent),
    minThumbLength: 40,
    radius: const Radius.circular(4),
    thickness: WidgetStateProperty.all(4),
    trackVisibility: WidgetStateProperty.all(false),
    thumbVisibility: WidgetStateProperty.all(false),
    interactive: true,
    crossAxisMargin: 2,
    mainAxisMargin: 4,
  );
}
