import 'package:flutter/material.dart';

/// Extension to simplify access to [TextTheme] styles
/// and customizable font weights with consistent color styling.
///
/// This extension allows you to easily access predefined text styles
/// from the current theme and apply specific font weights with the
/// default `onSurface` color from the [ColorScheme].
///
/// ### Features:
/// - Access all predefined text styles from [TextTheme].
/// - Apply font weights (`100` to `900`) dynamically.
/// - Automatically use the `onSurface` color for consistent styling.
///
/// ### Example Usage:
/// ```dart
/// Text(
///   'Hello, World!',
///   style: context.displayLargeW(600), // Display Large with font weight 600
/// );
///
/// Text(
///   'Custom Color',
///   style: context.bodyMediumW(400).copyWith(color: Colors.red), // Body Medium with font weight 400 and red color
/// );
/// ```
extension TextStyleExtension on BuildContext {
  /// Access the current [TextTheme] from the context.
  TextTheme get text => Theme.of(this).textTheme;

  // === Display Styles ===
  /// Display Large with customizable font weights.
  ///
  /// Example:
  /// ```dart
  /// Text('Example', style: context.displayLargeW(600));
  /// ```
  TextStyle displayLargeW(int weight) => text.displayLarge!.copyWith(
    fontWeight: FontWeight.values[weight ~/ 100 - 1],
    color: Theme.of(this).colorScheme.onSurface,
  );

  /// Display Medium with customizable font weights.
  ///
  /// Example:
  /// ```dart
  /// Text('Example', style: context.displayMediumW(400));
  /// ```
  TextStyle displayMediumW(int weight) => text.displayMedium!.copyWith(
    fontWeight: FontWeight.values[weight ~/ 100 - 1],
    color: Theme.of(this).colorScheme.onSurface,
  );

  /// Display Small with customizable font weights.
  ///
  /// Example:
  /// ```dart
  /// Text('Example', style: context.displaySmallW(700));
  /// ```
  TextStyle displaySmallW(int weight) => text.displaySmall!.copyWith(
    fontWeight: FontWeight.values[weight ~/ 100 - 1],
    color: Theme.of(this).colorScheme.onSurface,
  );

  // === Headline Styles ===
  /// Headline Large with customizable font weights.
  ///
  /// Example:
  /// ```dart
  /// Text('Example', style: context.headlineLargeW(500));
  /// ```
  TextStyle headlineLargeW(int weight) => text.headlineLarge!.copyWith(
    fontWeight: FontWeight.values[weight ~/ 100 - 1],
    color: Theme.of(this).colorScheme.onSurface,
  );

  /// Headline Medium with customizable font weights.
  ///
  /// Example:
  /// ```dart
  /// Text('Example', style: context.headlineMediumW(300));
  /// ```
  TextStyle headlineMediumW(int weight) => text.headlineMedium!.copyWith(
    fontWeight: FontWeight.values[weight ~/ 100 - 1],
    color: Theme.of(this).colorScheme.onSurface,
  );

  /// Headline Small with customizable font weights.
  ///
  /// Example:
  /// ```dart
  /// Text('Example', style: context.headlineSmallW(800));
  /// ```
  TextStyle headlineSmallW(int weight) => text.headlineSmall!.copyWith(
    fontWeight: FontWeight.values[weight ~/ 100 - 1],
    color: Theme.of(this).colorScheme.onSurface,
  );

  // === Body Styles ===
  /// Body Large with customizable font weights.
  ///
  /// Example:
  /// ```dart
  /// Text('Example', style: context.bodyLargeW(400));
  /// ```
  TextStyle bodyLargeW(int weight) => text.bodyLarge!.copyWith(
    fontWeight: FontWeight.values[weight ~/ 100 - 1],
    color: Theme.of(this).colorScheme.onSurface,
  );

  /// Body Medium with customizable font weights.
  ///
  /// Example:
  /// ```dart
  /// Text('Example', style: context.bodyMediumW(600));
  /// ```
  TextStyle bodyMediumW(int weight) => text.bodyMedium!.copyWith(
    fontWeight: FontWeight.values[weight ~/ 100 - 1],
    color: Theme.of(this).colorScheme.onSurface,
  );

  /// Body Small with customizable font weights.
  ///
  /// Example:
  /// ```dart
  /// Text('Example', style: context.bodySmallW(500));
  /// ```
  TextStyle bodySmallW(int weight) => text.bodySmall!.copyWith(
    fontWeight: FontWeight.values[weight ~/ 100 - 1],
    color: Theme.of(this).colorScheme.onSurface,
  );

  // === Label Styles ===
  /// Label Large with customizable font weights.
  ///
  /// Example:
  /// ```dart
  /// Text('Example', style: context.labelLargeW(700));
  /// ```
  TextStyle labelLargeW(int weight) => text.labelLarge!.copyWith(
    fontWeight: FontWeight.values[weight ~/ 100 - 1],
    color: Theme.of(this).colorScheme.onSurface,
  );

  /// Label Medium with customizable font weights.
  ///
  /// Example:
  /// ```dart
  /// Text('Example', style: context.labelMediumW(300));
  /// ```
  TextStyle labelMediumW(int weight) => text.labelMedium!.copyWith(
    fontWeight: FontWeight.values[weight ~/ 100 - 1],
    color: Theme.of(this).colorScheme.onSurface,
  );

  /// Label Small with customizable font weights.
  ///
  /// Example:
  /// ```dart
  /// Text('Example', style: context.labelSmallW(900));
  /// ```
  TextStyle labelSmallW(int weight) => text.labelSmall!.copyWith(
    fontWeight: FontWeight.values[weight ~/ 100 - 1],
    color: Theme.of(this).colorScheme.onSurface,
  );
}
