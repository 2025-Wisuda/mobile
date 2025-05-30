// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile/core/constants/border_radius_constant.dart';
import 'package:mobile/core/constants/color_constant.dart';
import 'package:mobile/core/constants/text_style_constant.dart';

class DropdownMenuThemeX {
  static DropdownMenuThemeData kDropdownMenuThemeDataLight =
      DropdownMenuThemeData(
        textStyle: TextStyleConstant.kInterBodySmallMedium,
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyleConstant.kInterBodyMediumSemiBold.copyWith(
            color: ColorConstant.kNeutral900,
            overflow: TextOverflow.ellipsis,
          ),
          floatingLabelStyle: TextStyleConstant.kInterBodyMediumSemiBold
              .copyWith(color: ColorConstant.kNeutral900),
          helperStyle: TextStyleConstant.kInterBodyMediumSemiBold.copyWith(
            color: ColorConstant.kNeutral600,
          ),
          helperMaxLines: 1,
          hintStyle: TextStyleConstant.kInterBodyMediumRegular.copyWith(
            color: ColorConstant.kNeutral500,
            overflow: TextOverflow.ellipsis,
          ),
          hintFadeDuration: const Duration(milliseconds: 200),
          errorStyle: TextStyleConstant.kInterBodyMediumMedium.copyWith(
            color: ColorConstant.kError500,
            overflow: TextOverflow.ellipsis,
          ),
          errorMaxLines: 1,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          floatingLabelAlignment: FloatingLabelAlignment.start,
          isDense: false,
          contentPadding: const EdgeInsets.all(8),
          isCollapsed: false,
          iconColor: ColorConstant.kNeutral500,
          prefixStyle: TextStyleConstant.kInterBodyMediumSemiBold.copyWith(
            color: ColorConstant.kNeutral900,
          ),
          prefixIconColor: ColorConstant.kNeutral900,
          suffixStyle: TextStyleConstant.kInterBodyMediumSemiBold.copyWith(
            color: ColorConstant.kNeutral900,
          ),
          suffixIconColor: ColorConstant.kNeutral900,
          counterStyle: TextStyleConstant.kInterBodyMediumSemiBold.copyWith(
            color: ColorConstant.kNeutral600,
          ),
          filled: true,
          fillColor: ColorConstant.kNeutral100,
          activeIndicatorBorder: const BorderSide(
            color: ColorConstant.kNeutral900,
            width: 2.0,
          ),
          outlineBorder: const BorderSide(
            color: ColorConstant.kNeutral300,
            width: 1.0,
          ),
          focusColor: ColorConstant.kNeutral900,
          hoverColor: ColorConstant.kNeutral100,
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ColorConstant.kError500,
              width: 1.0,
            ),
            borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ColorConstant.kNeutral900,
              width: 1.4,
            ),
            borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ColorConstant.kError500,
              width: 1.4,
            ),
            borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ColorConstant.kNeutral500,
              width: 1.0,
            ),
            borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ColorConstant.kNeutral300,
              width: 1.0,
            ),
            borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ColorConstant.kNeutral300,
              width: 1.0,
            ),
            borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
          ),
          alignLabelWithHint: false,
        ),
        menuStyle: const MenuStyle(),
      );

  static DropdownMenuThemeData kDropdownMenuThemeDataDark =
      DropdownMenuThemeData(
        textStyle: TextStyleConstant.kInterBodySmallMedium,
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyleConstant.kInterBodyMediumSemiBold.copyWith(
            color: ColorConstant.kNeutral50,
            overflow: TextOverflow.ellipsis,
          ),
          floatingLabelStyle: TextStyleConstant.kInterBodyMediumSemiBold
              .copyWith(color: ColorConstant.kNeutral50),
          helperStyle: TextStyleConstant.kInterBodyMediumSemiBold.copyWith(
            color: ColorConstant.kNeutral400,
          ),
          helperMaxLines: 1,
          hintStyle: TextStyleConstant.kInterBodyMediumRegular.copyWith(
            color: ColorConstant.kNeutral400,
            overflow: TextOverflow.ellipsis,
          ),
          hintFadeDuration: const Duration(milliseconds: 200),
          errorStyle: TextStyleConstant.kInterBodyMediumMedium.copyWith(
            color: ColorConstant.kError400,
            overflow: TextOverflow.ellipsis,
          ),
          errorMaxLines: 1,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          floatingLabelAlignment: FloatingLabelAlignment.start,
          isDense: false,
          contentPadding: const EdgeInsets.all(8),
          isCollapsed: false,
          iconColor: ColorConstant.kNeutral400,
          prefixStyle: TextStyleConstant.kInterBodyMediumSemiBold.copyWith(
            color: ColorConstant.kNeutral50,
          ),
          prefixIconColor: ColorConstant.kNeutral50,
          suffixStyle: TextStyleConstant.kInterBodyMediumSemiBold.copyWith(
            color: ColorConstant.kNeutral50,
          ),
          suffixIconColor: ColorConstant.kNeutral50,
          counterStyle: TextStyleConstant.kInterBodyMediumSemiBold.copyWith(
            color: ColorConstant.kNeutral300,
          ),
          filled: true,
          fillColor: ColorConstant.kNeutral700,
          activeIndicatorBorder: const BorderSide(
            color: ColorConstant.kNeutral50,
            width: 2.0,
          ),
          outlineBorder: const BorderSide(
            color: ColorConstant.kNeutral700,
            width: 1.0,
          ),
          focusColor: ColorConstant.kNeutral50,
          hoverColor: ColorConstant.kNeutral600,
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ColorConstant.kError400,
              width: 1.0,
            ),
            borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ColorConstant.kNeutral50,
              width: 1.4,
            ),
            borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ColorConstant.kError400,
              width: 1.4,
            ),
            borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ColorConstant.kNeutral600,
              width: 1.0,
            ),
            borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ColorConstant.kNeutral600,
              width: 1.0,
            ),
            borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ColorConstant.kNeutral700,
              width: 1.0,
            ),
            borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
          ),
          alignLabelWithHint: false,
        ),
        menuStyle: const MenuStyle(),
      );
}
