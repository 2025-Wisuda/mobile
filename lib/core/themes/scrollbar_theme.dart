import 'package:flutter/material.dart';

import 'package:mobile/core/core.dart';

class ScrollbarThemeX {
  static final kScrollbarThemeLight = ScrollbarThemeData(
    thumbColor: WidgetStateProperty.all(ColorConstant.kNeutral500),
    trackColor: WidgetStateProperty.all(ColorConstant.kNeutral100),
    minThumbLength: 77,
    radius: const Radius.circular(8),
    thickness: WidgetStateProperty.all(4),
    trackVisibility: WidgetStateProperty.all(true),
  );

  static final kScrollbarThemeDark = ScrollbarThemeData(
    thumbColor: WidgetStateProperty.all(ColorConstant.kNeutral300),
    trackColor: WidgetStateProperty.all(ColorConstant.kNeutral500),
    minThumbLength: 77,
    radius: const Radius.circular(8),
    thickness: WidgetStateProperty.all(4),
    trackVisibility: WidgetStateProperty.all(true),
  );
}
