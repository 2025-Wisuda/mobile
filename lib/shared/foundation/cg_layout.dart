import 'package:flutter/material.dart';

import 'cg_spacing.dart';

/// CG Layout System
///
/// Modern Flutter 3.16+ layout utilities leveraging built-in spacing parameters.
/// Provides Column/Row/Wrap helpers and semantic layout patterns.
class CGLayout {
  CGLayout._(); // Private constructor - this is a utility class

  // ===================================================================
  // MODERN LAYOUT SYSTEM (Flutter 3.16+)
  // ===================================================================
  // Leverages built-in spacing parameters for cleaner, more maintainable code

  /// Creates a Column with automatic spacing between children
  ///
  /// Modern approach that eliminates the need for SizedBox spacers.
  /// Automatically distributes spacing between child widgets.
  ///
  /// ```dart
  /// CGLayout.col(16, [
  ///   Text('Title'),        // No spacing above
  ///   Text('Subtitle'),     // 16px spacing above
  ///   ElevatedButton(...),  // 16px spacing above
  /// ])
  /// ```
  static Column col(
    double spacing,
    List<Widget> children, {
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.max,
  }) =>
      Column(
        spacing: spacing,
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        mainAxisSize: mainAxisSize,
        children: children,
      );

  /// Creates a Row with automatic spacing between children
  ///
  /// Modern approach for horizontal layouts with automatic spacing.
  /// Perfect for button groups, icon rows, navigation items.
  ///
  /// ```dart
  /// CGLayout.row(12, [
  ///   Icon(Icons.home),     // No spacing to left
  ///   Text('Home'),         // 12px spacing to left
  ///   Icon(Icons.arrow),    // 12px spacing to left
  /// ])
  /// ```
  static Row row(
    double spacing,
    List<Widget> children, {
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    MainAxisSize mainAxisSize = MainAxisSize.max,
  }) =>
      Row(
        spacing: spacing,
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        mainAxisSize: mainAxisSize,
        children: children,
      );

  /// Creates a Wrap with automatic spacing between children
  ///
  /// Perfect for tag groups, chip collections, responsive button groups.
  /// Automatically handles overflow by wrapping to new lines.
  ///
  /// ```dart
  /// CGLayout.wrap(8, [
  ///   Chip(label: Text('Design')),
  ///   Chip(label: Text('Flutter')),
  ///   Chip(label: Text('Mobile')),
  /// ], runSpacing: 8)
  /// ```
  static Wrap wrap(
    double spacing,
    List<Widget> children, {
    Axis direction = Axis.horizontal,
    WrapAlignment alignment = WrapAlignment.start,
    double runSpacing = 0.0,
    WrapCrossAlignment crossAxisAlignment = WrapCrossAlignment.start,
  }) =>
      Wrap(
        spacing: spacing,
        runSpacing: runSpacing,
        direction: direction,
        alignment: alignment,
        crossAxisAlignment: crossAxisAlignment,
        children: children,
      );

  // ===================================================================
  // COMMON SPACING SHORTCUTS
  // ===================================================================
  // Pre-built helpers for the most frequently used spacing values

  // Column shortcuts - Vertical layouts with common spacing
  static Column col4(
    List<Widget> children, {
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) =>
      col(CGSpacing.s4, children,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment);

  static Column col8(
    List<Widget> children, {
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) =>
      col(CGSpacing.s8, children,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment);

  static Column col12(
    List<Widget> children, {
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) =>
      col(CGSpacing.s12, children,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment);

  /// Most common column spacing - 16px is the base unit
  static Column col16(
    List<Widget> children, {
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) =>
      col(CGSpacing.s16, children,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment);

  static Column col20(
    List<Widget> children, {
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) =>
      col(CGSpacing.s20, children,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment);

  static Column col24(
    List<Widget> children, {
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) =>
      col(CGSpacing.s24, children,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment);

  static Column col32(
    List<Widget> children, {
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) =>
      col(CGSpacing.s32, children,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment);

  // Row shortcuts - Horizontal layouts with common spacing
  static Row row4(
    List<Widget> children, {
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) =>
      row(CGSpacing.s4, children,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment);

  static Row row8(
    List<Widget> children, {
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) =>
      row(CGSpacing.s8, children,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment);

  static Row row12(
    List<Widget> children, {
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) =>
      row(CGSpacing.s12, children,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment);

  static Row row16(
    List<Widget> children, {
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) =>
      row(CGSpacing.s16, children,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment);

  static Row row20(
    List<Widget> children, {
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) =>
      row(CGSpacing.s20, children,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment);

  static Row row24(
    List<Widget> children, {
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) =>
      row(CGSpacing.s24, children,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment);

  // Wrap shortcuts - Responsive layouts with common spacing
  static Wrap wrap4(List<Widget> children, {double? runSpacing}) =>
      wrap(CGSpacing.s4, children, runSpacing: runSpacing ?? CGSpacing.s4);

  static Wrap wrap8(List<Widget> children, {double? runSpacing}) =>
      wrap(CGSpacing.s8, children, runSpacing: runSpacing ?? CGSpacing.s8);

  static Wrap wrap12(List<Widget> children, {double? runSpacing}) =>
      wrap(CGSpacing.s12, children, runSpacing: runSpacing ?? CGSpacing.s12);

  static Wrap wrap16(List<Widget> children, {double? runSpacing}) =>
      wrap(CGSpacing.s16, children, runSpacing: runSpacing ?? CGSpacing.s16);

  // ===================================================================
  // SEMANTIC LAYOUT HELPERS
  // ===================================================================
  // Domain-specific layout patterns with optimal spacing and alignment

  /// Card content layout - Optimal for card interiors
  /// 12px spacing with start alignment for readable content flow
  static Column cardContent(List<Widget> children) => col12(
        children,
        crossAxisAlignment: CrossAxisAlignment.start,
      );

  /// Form fields layout - Optimal for form elements
  /// 16px spacing with stretch alignment for consistent field widths
  static Column formFields(List<Widget> children) => col16(
        children,
        crossAxisAlignment: CrossAxisAlignment.stretch,
      );

  /// Page content layout - Optimal for main content areas
  /// 24px spacing with start alignment for comfortable reading
  static Column pageContent(List<Widget> children) => col24(
        children,
        crossAxisAlignment: CrossAxisAlignment.start,
      );

  /// Section layout - Optimal for major page sections
  /// 32px spacing with start alignment for clear content hierarchy
  static Column section(List<Widget> children) => col32(
        children,
        crossAxisAlignment: CrossAxisAlignment.start,
      );

  /// Button group layout - Optimal for multiple buttons
  /// 12px spacing with end alignment (typical for action buttons)
  static Row buttonGroup(List<Widget> children) => row12(
        children,
        mainAxisAlignment: MainAxisAlignment.end,
      );

  /// Icon with text layout - Optimal for labeled icons
  /// 8px spacing with center alignment for visual balance
  static Row iconWithText(List<Widget> children) => row8(
        children,
        crossAxisAlignment: CrossAxisAlignment.center,
      );

  /// Navigation items layout - Optimal for navigation bars
  /// 16px spacing with even distribution across available space
  static Row navigationItems(List<Widget> children) => row16(
        children,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      );

  /// Chip/tag group layout - Optimal for tag collections
  /// 8px spacing with automatic wrapping for responsive behavior
  static Wrap chipGroup(List<Widget> children) => wrap8(children);
}
