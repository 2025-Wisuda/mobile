import 'package:flutter/material.dart';

import 'package:mobile/core/constants/color_constant.dart';
import 'package:mobile/core/constants/text_style_constant.dart';

/// **SearchBarTheme Documentation**
///
/// Simple SearchBar theme that matches InputDecoration styling for consistency.
/// Focus on typography and icon sizing rather than complex state management.
class SearchBarThemeX {
  /// **Light Theme Configuration**
  ///
  /// Simple configuration that matches InputDecoration patterns
  static SearchBarThemeData kSearchBarThemeDataLight = SearchBarThemeData(
    // Material properties - keep simple
    elevation: WidgetStateProperty.all(0),
    shadowColor: WidgetStateProperty.all(Colors.transparent),
    surfaceTintColor: WidgetStateProperty.all(Colors.transparent),

    // Simple background - no complex state handling
    backgroundColor: WidgetStateProperty.all(ColorConstant.kNeutral100),

    // Simple overlay
    overlayColor: WidgetStateProperty.all(Colors.transparent),

    // No borders - simple design
    side: WidgetStateProperty.all(BorderSide.none),

    // Simple shape with 20px radius
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
    ),

    // Padding to match InputDecoration
    padding: WidgetStateProperty.all(
      const EdgeInsets.symmetric(horizontal: 8),
    ),

    // Hint style - matches InputDecoration hintStyle exactly
    hintStyle: WidgetStateProperty.all(
      TextStyleConstant.kInterBodyMediumRegular.copyWith(
        color: ColorConstant.kNeutral400, // Same as InputDecoration
        fontSize: 14, // Same size as InputDecoration
      ),
    ),

    // Text style - matches InputDecoration input text
    textStyle: WidgetStateProperty.all(
      TextStyleConstant.kInterBodyMediumRegular.copyWith(
        color: ColorConstant.kNeutral900,
        fontSize: 14, // Consistent size
      ),
    ),

    // Height constraints
    constraints: const BoxConstraints(
      minHeight: 52,
      maxHeight: 52,
    ),
  );

  /// **Dark Theme Configuration**
  ///
  /// Simple dark mode version
  static SearchBarThemeData kSearchBarThemeDataDark = SearchBarThemeData(
    // Material properties - keep simple
    elevation: WidgetStateProperty.all(0),
    shadowColor: WidgetStateProperty.all(Colors.transparent),
    surfaceTintColor: WidgetStateProperty.all(Colors.transparent),

    // Simple background - no complex state handling
    backgroundColor: WidgetStateProperty.all(ColorConstant.kNeutral700),

    // Simple overlay
    overlayColor: WidgetStateProperty.all(Colors.transparent),

    // No borders - simple design
    side: WidgetStateProperty.all(BorderSide.none),

    // Simple shape with 20px radius
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
    ),

    // Padding to match InputDecoration
    padding: WidgetStateProperty.all(
      const EdgeInsets.symmetric(horizontal: 8),
    ),

    // Hint style - matches InputDecoration dark hintStyle
    hintStyle: WidgetStateProperty.all(
      TextStyleConstant.kInterBodyMediumRegular.copyWith(
        color: ColorConstant.kNeutral500, // Same as InputDecoration dark
        fontSize: 14, // Same size as InputDecoration
      ),
    ),

    // Text style - matches InputDecoration dark input text
    textStyle: WidgetStateProperty.all(
      TextStyleConstant.kInterBodyMediumRegular.copyWith(
        color: ColorConstant.kNeutral100,
        fontSize: 14, // Consistent size
      ),
    ),

    // Height constraints
    constraints: const BoxConstraints(
      minHeight: 52,
      maxHeight: 52,
    ),
  );
}
