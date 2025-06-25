import 'package:flutter/material.dart';

import 'package:mobile/core/constants/color_constant.dart';

class BottomSheetThemeX {
  static BottomSheetThemeData kBottomSheetThemeLight = BottomSheetThemeData(
    backgroundColor: ColorConstant.kNeutral50,
    elevation: 0,
    modalElevation: 0,
    shadowColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(16),
      ),
    ),
    constraints: const BoxConstraints(
      maxWidth: double.infinity,
    ),
    clipBehavior: Clip.antiAlias,
    modalBarrierColor: Colors.black54,
    showDragHandle: false,
  );

  static BottomSheetThemeData kBottomSheetThemeDark = BottomSheetThemeData(
    backgroundColor: ColorConstant.kNeutral900,
    elevation: 0,
    modalElevation: 0,
    shadowColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(16),
      ),
    ),
    constraints: const BoxConstraints(
      maxWidth: double.infinity,
    ),
    clipBehavior: Clip.antiAlias,
    modalBarrierColor: Colors.black54,
    showDragHandle: false,
  );
}
