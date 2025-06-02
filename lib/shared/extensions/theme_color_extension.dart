import 'package:flutter/material.dart';

/// Extension to simplify access to [ColorScheme] from the current theme.
///
/// This extension allows you to easily access colors defined in the
/// [ColorScheme] directly from the [BuildContext].
///
/// ### Example Usage:
/// ```dart
/// final primaryColor = context.primary; // Access primary color
/// final onSurfaceColor = context.onSurface; // Access onSurface color
/// ```
extension ThemeColorExtension on BuildContext {
  /// Access the current [ColorScheme] from the theme.
  ColorScheme get color => Theme.of(this).colorScheme;

  /// Access the primary color.
  Color get primary => color.primary;

  /// Access the color used on primary elements.
  Color get onPrimary => color.onPrimary;

  /// Access the primary container color.
  Color get primaryContainer => color.primaryContainer;

  /// Access the color used on primary container elements.
  Color get onPrimaryContainer => color.onPrimaryContainer;

  /// Access the fixed primary color.
  Color get primaryFixed => color.primaryFixed;

  /// Access the dimmed fixed primary color.
  Color get primaryFixedDim => color.primaryFixedDim;

  /// Access the color used on fixed primary elements.
  Color get onPrimaryFixed => color.onPrimaryFixed;

  /// Access the variant color used on fixed primary elements.
  Color get onPrimaryFixedVariant => color.onPrimaryFixedVariant;

  /// Access the secondary color.
  Color get secondary => color.secondary;

  /// Access the color used on secondary elements.
  Color get onSecondary => color.onSecondary;

  /// Access the secondary container color.
  Color get secondaryContainer => color.secondaryContainer;

  /// Access the color used on secondary container elements.
  Color get onSecondaryContainer => color.onSecondaryContainer;

  /// Access the fixed secondary color.
  Color get secondaryFixed => color.secondaryFixed;

  /// Access the dimmed fixed secondary color.
  Color get secondaryFixedDim => color.secondaryFixedDim;

  /// Access the color used on fixed secondary elements.
  Color get onSecondaryFixed => color.onSecondaryFixed;

  /// Access the variant color used on fixed secondary elements.
  Color get onSecondaryFixedVariant => color.onSecondaryFixedVariant;

  /// Access the tertiary color.
  Color get tertiary => color.tertiary;

  /// Access the color used on tertiary elements.
  Color get onTertiary => color.onTertiary;

  /// Access the tertiary container color.
  Color get tertiaryContainer => color.tertiaryContainer;

  /// Access the color used on tertiary container elements.
  Color get onTertiaryContainer => color.onTertiaryContainer;

  /// Access the fixed tertiary color.
  Color get tertiaryFixed => color.tertiaryFixed;

  /// Access the dimmed fixed tertiary color.
  Color get tertiaryFixedDim => color.tertiaryFixedDim;

  /// Access the color used on fixed tertiary elements.
  Color get onTertiaryFixed => color.onTertiaryFixed;

  /// Access the variant color used on fixed tertiary elements.
  Color get onTertiaryFixedVariant => color.onTertiaryFixedVariant;

  /// Access the error color.
  Color get error => color.error;

  /// Access the color used on error elements.
  Color get onError => color.onError;

  /// Access the error container color.
  Color get errorContainer => color.errorContainer;

  /// Access the color used on error container elements.
  Color get onErrorContainer => color.onErrorContainer;

  /// Access the surface color.
  Color get surface => color.surface;

  /// Access the color used on surface elements.
  Color get onSurface => color.onSurface;

  /// Access the dimmed surface color.
  Color get surfaceDim => color.surfaceDim;

  /// Access the bright surface color.
  Color get surfaceBright => color.surfaceBright;

  /// Access the lowest surface container color.
  Color get surfaceContainerLowest => color.surfaceContainerLowest;

  /// Access the low surface container color.
  Color get surfaceContainerLow => color.surfaceContainerLow;

  /// Access the default surface container color.
  Color get surfaceContainer => color.surfaceContainer;

  /// Access the high surface container color.
  Color get surfaceContainerHigh => color.surfaceContainerHigh;

  /// Access the highest surface container color.
  Color get surfaceContainerHighest => color.surfaceContainerHighest;

  /// Access the color used on surface variant elements.
  Color get onSurfaceVariant => color.onSurfaceVariant;

  /// Access the outline color.
  Color get outline => color.outline;

  /// Access the outline variant color.
  Color get outlineVariant => color.outlineVariant;

  /// Access the shadow color.
  Color get shadow => color.shadow;

  /// Access the scrim color.
  Color get scrim => color.scrim;

  /// Access the inverse surface color.
  Color get inverseSurface => color.inverseSurface;

  /// Access the color used on inverse surface elements.
  Color get onInverseSurface => color.onInverseSurface;

  /// Access the inverse primary color.
  Color get inversePrimary => color.inversePrimary;

  /// Access the surface tint color.
  Color get surfaceTint => color.surfaceTint;
}
