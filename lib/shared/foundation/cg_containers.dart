import 'package:flutter/material.dart';

import 'cg_spacing.dart';

/// CG Container Utilities
///
/// Semantic container utilities providing consistent decoration patterns.
/// Uses manual Theme.of(context) calls for consistent theming approach.
class CGContainers {
  CGContainers._(); // Private constructor - this is a utility class

  // ===================================================================
  // RESPONSIVE DESIGN UTILITIES
  // ===================================================================

  /// Standard mobile breakpoint (600px)
  /// Below this width, consider mobile-optimized layouts
  static const double breakpointMobile = 600;

  /// Standard tablet breakpoint (900px)
  /// Between mobile and desktop breakpoints
  static const double breakpointTablet = 900;

  /// Standard desktop breakpoint (1200px)
  /// Above this width, consider desktop-optimized layouts
  static const double breakpointDesktop = 1200;

  /// Check if current screen is mobile size
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < breakpointTablet;

  /// Check if current screen is tablet size
  static bool isTablet(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= breakpointTablet && width < breakpointDesktop;
  }

  /// Check if current screen is desktop size
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= breakpointDesktop;

  /// Get responsive spacing based on screen width
  /// Returns different spacing values for mobile, tablet, and desktop
  static double responsiveSpacing(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < breakpointTablet) return CGSpacing.s12; // Mobile
    if (width < breakpointDesktop) return CGSpacing.s16; // Tablet
    return CGSpacing.s24; // Desktop
  }

  // ===================================================================
  // SEMANTIC CONTAINER UTILITIES
  // ===================================================================

  /// Creates a primary action container with primary color theming
  static Widget primaryContainer(
    BuildContext context, {
    required Widget child,
    EdgeInsetsGeometry? padding,
    BorderRadius? borderRadius,
    double alpha = 0.1,
    double borderAlpha = 0.3,
    double borderWidth = 1,
  }) =>
      Container(
        padding: padding ?? CGSpacing.p16,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary.withValues(alpha: alpha),
          borderRadius: borderRadius ?? CGSpacing.r12,
          border: Border.all(
            color: Theme.of(context)
                .colorScheme
                .primary
                .withValues(alpha: borderAlpha),
            width: borderWidth,
          ),
        ),
        child: child,
      );

  /// Creates an error container with error color theming
  static Widget errorContainer(
    BuildContext context, {
    required Widget child,
    EdgeInsetsGeometry? padding,
    BorderRadius? borderRadius,
    double alpha = 0.1,
    double borderAlpha = 0.3,
    double borderWidth = 1,
  }) =>
      Container(
        padding: padding ?? CGSpacing.p16,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.error.withValues(alpha: alpha),
          borderRadius: borderRadius ?? CGSpacing.r12,
          border: Border.all(
            color: Theme.of(context)
                .colorScheme
                .error
                .withValues(alpha: borderAlpha),
            width: borderWidth,
          ),
        ),
        child: child,
      );

  /// Creates a success container with tertiary/success color theming
  static Widget successContainer(
    BuildContext context, {
    required Widget child,
    EdgeInsetsGeometry? padding,
    BorderRadius? borderRadius,
    double alpha = 0.1,
    double borderAlpha = 0.3,
    double borderWidth = 1,
  }) =>
      Container(
        padding: padding ?? CGSpacing.p16,
        decoration: BoxDecoration(
          color:
              Theme.of(context).colorScheme.tertiary.withValues(alpha: alpha),
          borderRadius: borderRadius ?? CGSpacing.r12,
          border: Border.all(
            color: Theme.of(context)
                .colorScheme
                .tertiary
                .withValues(alpha: borderAlpha),
            width: borderWidth,
          ),
        ),
        child: child,
      );

  /// Creates a warning/secondary container with warning theming
  static Widget warningContainer(
    BuildContext context, {
    required Widget child,
    EdgeInsetsGeometry? padding,
    BorderRadius? borderRadius,
    double alpha = 0.1,
    double borderAlpha = 0.3,
    double borderWidth = 1,
  }) =>
      Container(
        padding: padding ?? CGSpacing.p16,
        decoration: BoxDecoration(
          color:
              Theme.of(context).colorScheme.secondary.withValues(alpha: alpha),
          borderRadius: borderRadius ?? CGSpacing.r12,
          border: Border.all(
            color: Theme.of(context)
                .colorScheme
                .secondary
                .withValues(alpha: borderAlpha),
            width: borderWidth,
          ),
        ),
        child: child,
      );

  /// Creates a neutral surface container with outline border
  static Widget surfaceContainer(
    BuildContext context, {
    required Widget child,
    EdgeInsetsGeometry? padding,
    BorderRadius? borderRadius,
    double alpha = 0.05,
    double borderAlpha = 0.2,
    double borderWidth = 1,
  }) =>
      Container(
        padding: padding ?? CGSpacing.p16,
        decoration: BoxDecoration(
          color: Theme.of(context)
              .colorScheme
              .surfaceContainerHighest
              .withValues(alpha: alpha),
          borderRadius: borderRadius ?? CGSpacing.r12,
          border: Border.all(
            color: Theme.of(context)
                .colorScheme
                .outline
                .withValues(alpha: borderAlpha),
            width: borderWidth,
          ),
        ),
        child: child,
      );

  /// Creates a card-style container with elevation-like appearance
  static Widget cardContainer(
    BuildContext context, {
    required Widget child,
    EdgeInsetsGeometry? padding,
    BorderRadius? borderRadius,
    double elevation = 2,
  }) =>
      Container(
        padding: padding ?? CGSpacing.p16,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: borderRadius ?? CGSpacing.r12,
          boxShadow: [
            BoxShadow(
              color:
                  Theme.of(context).colorScheme.shadow.withValues(alpha: 0.1),
              blurRadius: elevation * 2,
              offset: Offset(0, elevation),
            ),
          ],
        ),
        child: child,
      );

  /// Creates a simple rounded container with custom color
  static Widget roundedContainer({
    required Widget child,
    required Color color,
    EdgeInsetsGeometry? padding,
    BorderRadius? borderRadius,
  }) =>
      Container(
        padding: padding ?? CGSpacing.p16,
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius ?? CGSpacing.r12,
        ),
        child: child,
      );
}
