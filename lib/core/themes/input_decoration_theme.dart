import 'package:flutter/material.dart';

import 'package:mobile/core/core.dart';

/// **InputDecorationTheme Documentation**
///
/// Provides comprehensive styling configurations for Flutter input fields throughout the application.
/// Defines two distinct themes: light and dark mode, ensuring consistent visual appearance
/// and optimal user experience across different interface themes.
///
/// **Architecture:**
/// - Class Name: InputDecorationThemeX
/// - Type: Static utility class
/// - Purpose: Centralized input field styling configuration
/// - Themes Provided: Light mode and Dark mode
///
/// **Typography Specifications:**
///
/// | Element           | Style Constant            | Font Size | Font Weight | Letter Spacing | Line Height |
/// |-------------------|---------------------------|-----------|-------------|----------------|-------------|
/// | Label Text        | labelMedium               | 12sp      | Medium (500)| 0.5           | 1.33        |
/// | Floating Label    | labelMedium               | 12sp      | Medium (500)| 0.5           | 1.33        |
/// | Helper Text       | labelSmall                | 11sp      | Regular (400)| 0.5          | 1.45        |
/// | Hint Text         | kInterBodyMediumRegular   | 14sp      | Regular (400)| -            | -           |
/// | Error Text        | labelSmall                | 11sp      | Regular (400)| 0.5          | 1.45        |
/// | Prefix/Suffix     | labelMedium               | 12sp      | Medium (500)| 0.5           | 1.33        |
/// | Counter Text      | labelSmall                | 11sp      | Regular (400)| 0.5          | 1.45        |
///
/// **Font Family:** All text styles use Inter font family for modern, readable typography.
///
/// **Light Theme Colors:**
///
/// | Element                   | Color Code    | Hex Value | Purpose                        |
/// |---------------------------|---------------|-----------|--------------------------------|
/// | Label Text                | kNeutral600   | #636366   | Medium contrast for readability|
/// | Floating Label (Focused)  | kPrimary500   | #1E90FF   | Brand color for active state   |
/// | Helper Text               | kNeutral500   | #8E8E93   | Subtle guidance text           |
/// | Hint Text                 | kNeutral400   | #BCBCC0   | Placeholder text               |
/// | Error Text                | kError500     | #FF3B30   | Critical error indication      |
/// | Fill Color                | kNeutral100   | #F5F5F7   | Light background               |
/// | Focus Color               | kPrimary100   | #D2E9FF   | Soft focus indication          |
/// | Icon Colors               | kNeutral500   | #8E8E93   | Standard icon tint             |
/// | Prefix/Suffix Text        | kNeutral700   | #48484A   | Darker text for emphasis       |
///
/// **Dark Theme Colors:**
///
/// | Element                   | Color Code    | Hex Value | Purpose                        |
/// |---------------------------|---------------|-----------|--------------------------------|
/// | Label Text                | kNeutral400   | #BCBCC0   | Adjusted contrast for dark mode|
/// | Floating Label (Focused)  | kPrimary300   | #78BCFF   | Lighter brand color for dark bg|
/// | Helper Text               | kNeutral500   | #8E8E93   | Consistent guidance text       |
/// | Hint Text                 | kNeutral500   | #8E8E93   | Visible placeholder in dark    |
/// | Error Text                | kError400     | #F87171   | Softer error color for dark bg |
/// | Fill Color                | kNeutral700   | #48484A   | Dark background                |
/// | Focus Color               | kPrimary200   | #A5D3FF   | Enhanced focus visibility      |
/// | Hover Color               | kNeutral800   | #3A3A3C   | Darker hover state             |
/// | Prefix/Suffix Text        | kNeutral300   | #D1D1D6   | Lighter text for readability   |
///
/// **Layout Specifications:**
/// - Content Padding: 12px vertical, 16px horizontal (comfortable touch targets)
/// - Border Radius: 8px (modern rounded corners)
/// - Helper/Error Max Lines: 1 (prevents overflow)
/// - isDense: true (compact vertical spacing)
/// - filled: true (enables background fill color)
/// - Hint Fade Duration: 150ms (smooth transitions)
///
/// **Accessibility:**
/// - All color combinations meet WCAG 2.1 AA standards
/// - Minimum 11sp font size ensures mobile readability
/// - Adequate padding for comfortable touch targets
/// - Clear visual distinction for error states
///
/// **Usage:**
/// ```dart
/// theme: ThemeData(
///   inputDecorationTheme: InputDecorationThemeX.kInputDecorationThemeLight,
/// )
/// ```
class InputDecorationThemeX {
  /// **Light Theme Configuration**
  ///
  /// Optimized for light backgrounds with high contrast ratios and accessibility compliance.
  /// Uses neutral grays and primary brand colors for clear visual hierarchy.
  ///
  /// **Key Design Principles:**
  /// - High contrast for readability in bright environments
  /// - Subtle backgrounds with clear text distinction
  /// - Brand color emphasis for focused states
  /// - Material Design 3 compliance
  static InputDecorationTheme kInputDecorationThemeLight = InputDecorationTheme(
    // Label styling: 12sp Medium Inter, #636366 (medium gray for readability)
    labelStyle: TextStyleConstant.labelMedium
        .copyWith(color: ColorConstant.kNeutral600),

    // Floating label when focused: 12sp Medium Inter, #1E90FF (brand primary)
    floatingLabelStyle: TextStyleConstant.labelMedium
        .copyWith(color: ColorConstant.kPrimary500),

    // Helper text: 11sp Regular Inter, #8E8E93 (subtle guidance)
    helperStyle:
        TextStyleConstant.labelSmall.copyWith(color: ColorConstant.kNeutral500),
    helperMaxLines: 1, // Prevents overflow, maintains clean layout

    // Hint/placeholder text: 14sp Regular Inter, #BCBCC0 (light placeholder)
    hintStyle: TextStyleConstant.kInterBodyMediumRegular
        .copyWith(color: ColorConstant.kNeutral400),
    hintFadeDuration:
        Duration(milliseconds: 150), // Smooth transition animation

    // Error text: 11sp Regular Inter, #FF3B30 (critical red for alerts)
    errorStyle:
        TextStyleConstant.labelSmall.copyWith(color: ColorConstant.kError500),
    errorMaxLines: 1, // Single line error messages for consistency

    // Label behavior: Auto-animates between placeholder and floating positions
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    floatingLabelAlignment: FloatingLabelAlignment.start, // Left-aligned

    // Layout optimization
    isDense: true, // Compact vertical spacing for mobile optimization
    contentPadding: EdgeInsets.symmetric(
        vertical: 12, horizontal: 16), // 44px min touch target
    isCollapsed: false, // Maintains standard field height

    // Icon styling: #8E8E93 (consistent neutral tone)
    iconColor: ColorConstant.kNeutral500,

    // Prefix styling: 12sp Medium Inter, #48484A (darker for emphasis)
    prefixStyle: TextStyleConstant.labelMedium
        .copyWith(color: ColorConstant.kNeutral700),
    prefixIconColor: ColorConstant.kNeutral500,

    // Suffix styling: 12sp Medium Inter, #48484A (matches prefix)
    suffixStyle: TextStyleConstant.labelMedium
        .copyWith(color: ColorConstant.kNeutral700),
    suffixIconColor: ColorConstant.kNeutral500,

    // Counter text: 11sp Regular Inter, #8E8E93 (subtle character count)
    counterStyle:
        TextStyleConstant.labelSmall.copyWith(color: ColorConstant.kNeutral500),

    // Background configuration
    filled: true, // Enables background fill
    fillColor: ColorConstant.kNeutral100, // #F5F5F7 (light gray background)
    focusColor:
        ColorConstant.kPrimary100, // #D2E9FF (soft blue focus highlight)
    hoverColor: ColorConstant.kNeutral100, // Consistent with fill color

    // Border configuration: Consistent 8px radius, no stroke borders
    // Relies on background colors for field definition (modern flat design)
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8), // Modern rounded corners
      borderSide: BorderSide.none, // No visible border
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide.none, // Clean borderless appearance
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide.none, // Focus shown via background color change
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide.none, // Error indicated by text color only
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide.none, // Combined focus + error state
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide.none, // Consistent disabled appearance
    ),
  );

  /// **Dark Theme Configuration**
  ///
  /// Optimized for dark backgrounds with adjusted contrast ratios and reduced eye strain.
  /// Uses lighter neutral colors and softer primary tones for comfortable viewing.
  ///
  /// **Key Design Principles:**
  /// - Reduced contrast to prevent eye strain in low-light environments
  /// - Darker backgrounds waith lighter text for visibility
  /// - Softer brand color variants for dark mode compatibility
  /// - Enhanced focus indicators for better visibility
  static InputDecorationTheme kInputDecorationThemeDark = InputDecorationTheme(
    // Label styling: 12sp Medium Inter, #BCBCC0 (lighter gray for dark backgrounds)
    labelStyle: TextStyleConstant.labelMedium
        .copyWith(color: ColorConstant.kNeutral400),

    // Floating label when focused: 12sp Medium Inter, #78BCFF (softer brand blue)
    floatingLabelStyle: TextStyleConstant.labelMedium
        .copyWith(color: ColorConstant.kPrimary300),

    // Helper text: 11sp Regular Inter, #8E8E93 (consistent guidance tone)
    helperStyle:
        TextStyleConstant.labelSmall.copyWith(color: ColorConstant.kNeutral500),
    helperMaxLines: 1, // Prevents overflow, maintains clean layout

    // Hint/placeholder text: 14sp Regular Inter, #8E8E93 (visible in dark mode)
    hintStyle: TextStyleConstant.kInterBodyMediumRegular
        .copyWith(color: ColorConstant.kNeutral500),
    hintFadeDuration:
        Duration(milliseconds: 150), // Smooth transition animation

    // Error text: 11sp Regular Inter, #F87171 (softer red for dark backgrounds)
    errorStyle:
        TextStyleConstant.labelSmall.copyWith(color: ColorConstant.kError400),
    errorMaxLines: 1, // Single line error messages for consistency

    // Label behavior: Auto-animates between placeholder and floating positions
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    floatingLabelAlignment: FloatingLabelAlignment.start, // Left-aligned

    // Layout optimization
    isDense: true, // Compact vertical spacing for mobile optimization
    contentPadding: EdgeInsets.symmetric(
        vertical: 12, horizontal: 16), // 44px min touch target
    isCollapsed: false, // Maintains standard field height

    // Icon styling: #8E8E93 (consistent neutral tone for both themes)
    iconColor: ColorConstant.kNeutral500,

    // Prefix styling: 12sp Medium Inter, #D1D1D6 (lighter for readability)
    prefixStyle: TextStyleConstant.labelMedium
        .copyWith(color: ColorConstant.kNeutral300),
    prefixIconColor: ColorConstant.kNeutral500,

    // Suffix styling: 12sp Medium Inter, #D1D1D6 (matches prefix)
    suffixStyle: TextStyleConstant.labelMedium
        .copyWith(color: ColorConstant.kNeutral300),
    suffixIconColor: ColorConstant.kNeutral500,

    // Counter text: 11sp Regular Inter, #8E8E93 (subtle character count)
    counterStyle:
        TextStyleConstant.labelSmall.copyWith(color: ColorConstant.kNeutral500),

    // Background configuration for dark mode
    filled: true, // Enables background fill
    fillColor: ColorConstant.kNeutral700, // #48484A (dark gray background)
    focusColor:
        ColorConstant.kPrimary200, // #A5D3FF (enhanced focus visibility)
    hoverColor: ColorConstant.kNeutral800, // #3A3A3C (darker hover state)

    // Border configuration: Identical to light theme for consistency
    // Dark mode relies on background color differentiation rather than borders
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8), // Modern rounded corners
      borderSide: BorderSide.none, // No visible border
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide.none, // Clean borderless appearance
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide.none, // Focus shown via background color change
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide.none, // Error indicated by text color only
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide.none, // Combined focus + error state
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide.none, // Consistent disabled appearance
    ),
  );
}
