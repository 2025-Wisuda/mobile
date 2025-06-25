import 'package:flutter/material.dart';

import 'package:mobile/core/constants/color_constant.dart';

class SwitchThemeX {
  static SwitchThemeData kSwitchThemeLight = SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return ColorConstant.kNeutral50;
      }
      if (states.contains(WidgetState.disabled)) {
        return ColorConstant.kNeutral300;
      }
      return ColorConstant.kNeutral50;
    }),
    trackColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return ColorConstant.kPrimary500;
      }
      if (states.contains(WidgetState.disabled)) {
        return ColorConstant.kNeutral200;
      }
      return ColorConstant.kNeutral300;
    }),
    trackOutlineColor: WidgetStateProperty.all(Colors.transparent),
    thumbIcon: WidgetStateProperty.all(null),
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    mouseCursor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return SystemMouseCursors.forbidden;
      }
      return SystemMouseCursors.click;
    }),
    overlayColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return ColorConstant.kPrimary500.withValues(alpha: 0.1);
      }
      return ColorConstant.kNeutral500.withValues(alpha: 0.1);
    }),
  );

  static SwitchThemeData kSwitchThemeDark = SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return ColorConstant.kNeutral900;
      }
      if (states.contains(WidgetState.disabled)) {
        return ColorConstant.kNeutral600;
      }
      return ColorConstant.kNeutral200;
    }),
    trackColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return ColorConstant.kPrimary300;
      }
      if (states.contains(WidgetState.disabled)) {
        return ColorConstant.kNeutral700;
      }
      return ColorConstant.kNeutral600;
    }),
    trackOutlineColor: WidgetStateProperty.all(Colors.transparent),
    thumbIcon: WidgetStateProperty.all(null),
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    mouseCursor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return SystemMouseCursors.forbidden;
      }
      return SystemMouseCursors.click;
    }),
    overlayColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return ColorConstant.kPrimary300.withValues(alpha: 0.1);
      }
      return ColorConstant.kNeutral500.withValues(alpha: 0.1);
    }),
  );
}
