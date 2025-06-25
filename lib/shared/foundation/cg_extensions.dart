import 'package:flutter/material.dart';

import 'cg_spacing.dart';

/// Context Extensions for CG Design System
///
/// Adds convenient methods directly to BuildContext for responsive design.
extension CGContextExtensions on BuildContext {
  /// Quick access to responsive spacing
  double get responsiveSpacing {
    final width = MediaQuery.of(this).size.width;
    if (width < 900) return CGSpacing.s12; // Mobile/Tablet
    if (width < 1200) return CGSpacing.s16; // Large Tablet
    return CGSpacing.s24; // Desktop
  }

  /// Quick access to adaptive spacing based on screen width
  double get adaptiveSpacing {
    final width = MediaQuery.of(this).size.width;
    if (width < 600) return CGSpacing.s12;
    if (width < 900) return CGSpacing.s16;
    return CGSpacing.s24;
  }

  /// Quick access to screen type detection
  bool get isMobile => MediaQuery.of(this).size.width < 900;
  bool get isTablet {
    final width = MediaQuery.of(this).size.width;
    return width >= 600 && width < 1200;
  }

  bool get isDesktop => MediaQuery.of(this).size.width >= 1200;

  /// Quick access to screen dimensions
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
}

/// Widget Extensions for CG Design System
///
/// Adds padding and margin methods directly to any Widget.
extension CGWidgetExtensions on Widget {
  /// Adds padding to any widget using design system tokens
  Widget paddingAll(double padding) => Padding(
        padding: EdgeInsets.all(padding),
        child: this,
      );

  Widget paddingHorizontal(double padding) => Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: this,
      );

  Widget paddingVertical(double padding) => Padding(
        padding: EdgeInsets.symmetric(vertical: padding),
        child: this,
      );

  Widget paddingOnly({
    double top = 0,
    double right = 0,
    double bottom = 0,
    double left = 0,
  }) =>
      Padding(
        padding: EdgeInsets.only(
          top: top,
          right: right,
          bottom: bottom,
          left: left,
        ),
        child: this,
      );

  /// Adds margin to any widget using Container
  Widget marginAll(double margin) => Container(
        margin: EdgeInsets.all(margin),
        child: this,
      );

  Widget marginHorizontal(double margin) => Container(
        margin: EdgeInsets.symmetric(horizontal: margin),
        child: this,
      );

  Widget marginVertical(double margin) => Container(
        margin: EdgeInsets.symmetric(vertical: margin),
        child: this,
      );

  Widget marginOnly({
    double top = 0,
    double right = 0,
    double bottom = 0,
    double left = 0,
  }) =>
      Container(
        margin: EdgeInsets.only(
          top: top,
          right: right,
          bottom: bottom,
          left: left,
        ),
        child: this,
      );

  /// Centers the widget
  Widget center() => Center(child: this);

  /// Expands the widget
  Widget expanded({int flex = 1}) => Expanded(flex: flex, child: this);

  /// Makes the widget flexible
  Widget flexible({int flex = 1}) => Flexible(flex: flex, child: this);
}
