import 'package:flutter/material.dart';

/// Extension to simplify access to [TextTheme] styles
/// and apply customizable font weights with consistent color styling.
///
/// This extension adds helper methods to apply `TextStyle` variants
/// from the current `Theme` using [BuildContext], with optional
/// `fontWeight` options and automatic application of the `onSurface` color.
///
/// ## Features:
/// - Access any [TextTheme] variant (`displayLarge`, `bodyMedium`, etc.).
/// - Apply default Material Design 3.0 font weights or custom weights (100-900).
/// - Enforce valid font weight input (throws if invalid).
/// - Automatically apply `onSurface` color from current [ColorScheme].
///
/// ## Example:
/// ```dart
/// Text('Title', style: context.displayLarge()); // Uses MD3 default weight + onSurface color
/// Text('Title', style: context.displayLargeW(700)); // Custom weight + onSurface color
/// Text('Hint', style: context.bodySmall()); // Uses MD3 default weight + onSurface color
/// ```
///
/// ## Available Methods:
/// - **Default variants**: Methods without parameters that use Material Design 3.0 default weights
/// - **Weighted variants**: Methods with `W` suffix that accept custom weight (100-900)
extension TextStyleExtension on BuildContext {
  /// Get the current [TextTheme] from the context.
  TextTheme get text => Theme.of(this).textTheme;

  /// Builds a [TextStyle] with the specified base style, weight, and default color.
  ///
  /// Throws [ArgumentError] if [weight] is not one of [100, 200, ..., 900].
  TextStyle _buildTextStyle(TextStyle? baseStyle, int weight) {
    if (weight % 100 != 0 || weight < 100 || weight > 900) {
      throw ArgumentError(
        'Invalid font weight: $weight. Must be 100–900 in increments of 100.',
      );
    }

    final fontWeight = FontWeight.values[weight ~/ 100 - 1];
    final color = Theme.of(this).colorScheme.onSurface;

    return baseStyle!.copyWith(fontWeight: fontWeight, color: color);
  }

  // === Display ===
  /// Default Material Design 3.0 weight (Regular/400)
  TextStyle displayLarge() => text.displayLarge!.copyWith(
        color: Theme.of(this).colorScheme.onSurface,
      );
  TextStyle displayMedium() => text.displayMedium!.copyWith(
        color: Theme.of(this).colorScheme.onSurface,
      );
  TextStyle displaySmall() => text.displaySmall!.copyWith(
        color: Theme.of(this).colorScheme.onSurface,
      );

  /// Custom weight variants
  TextStyle displayLargeW(int weight) =>
      _buildTextStyle(text.displayLarge, weight);
  TextStyle displayMediumW(int weight) =>
      _buildTextStyle(text.displayMedium, weight);
  TextStyle displaySmallW(int weight) =>
      _buildTextStyle(text.displaySmall, weight);

  // === Headline ===
  /// Default Material Design 3.0 weight (Regular/400)
  TextStyle headlineLarge() => text.headlineLarge!.copyWith(
        color: Theme.of(this).colorScheme.onSurface,
      );
  TextStyle headlineMedium() => text.headlineMedium!.copyWith(
        color: Theme.of(this).colorScheme.onSurface,
      );
  TextStyle headlineSmall() => text.headlineSmall!.copyWith(
        color: Theme.of(this).colorScheme.onSurface,
      );

  /// Custom weight variants
  TextStyle headlineLargeW(int weight) =>
      _buildTextStyle(text.headlineLarge, weight);
  TextStyle headlineMediumW(int weight) =>
      _buildTextStyle(text.headlineMedium, weight);
  TextStyle headlineSmallW(int weight) =>
      _buildTextStyle(text.headlineSmall, weight);

  // === Title ===
  /// Default Material Design 3.0 weight (Regular/400)
  TextStyle titleLarge() => text.titleLarge!.copyWith(
        color: Theme.of(this).colorScheme.onSurface,
      );
  TextStyle titleMedium() => text.titleMedium!.copyWith(
        color: Theme.of(this).colorScheme.onSurface,
      );
  TextStyle titleSmall() => text.titleSmall!.copyWith(
        color: Theme.of(this).colorScheme.onSurface,
      );

  /// Custom weight variants
  TextStyle titleLargeW(int weight) => _buildTextStyle(text.titleLarge, weight);
  TextStyle titleMediumW(int weight) =>
      _buildTextStyle(text.titleMedium, weight);
  TextStyle titleSmallW(int weight) => _buildTextStyle(text.titleSmall, weight);

  // === Body ===
  /// Default Material Design 3.0 weight (Regular/400)
  TextStyle bodyLarge() => text.bodyLarge!.copyWith(
        color: Theme.of(this).colorScheme.onSurface,
      );
  TextStyle bodyMedium() => text.bodyMedium!.copyWith(
        color: Theme.of(this).colorScheme.onSurface,
      );
  TextStyle bodySmall() => text.bodySmall!.copyWith(
        color: Theme.of(this).colorScheme.onSurface,
      );

  /// Custom weight variants
  TextStyle bodyLargeW(int weight) => _buildTextStyle(text.bodyLarge, weight);
  TextStyle bodyMediumW(int weight) => _buildTextStyle(text.bodyMedium, weight);
  TextStyle bodySmallW(int weight) => _buildTextStyle(text.bodySmall, weight);

  // === Label ===
  /// Default Material Design 3.0 weight (Medium/500)
  TextStyle labelLarge() => text.labelLarge!.copyWith(
        color: Theme.of(this).colorScheme.onSurface,
      );
  TextStyle labelMedium() => text.labelMedium!.copyWith(
        color: Theme.of(this).colorScheme.onSurface,
      );
  TextStyle labelSmall() => text.labelSmall!.copyWith(
        color: Theme.of(this).colorScheme.onSurface,
      );

  /// Custom weight variants
  TextStyle labelLargeW(int weight) => _buildTextStyle(text.labelLarge, weight);
  TextStyle labelMediumW(int weight) =>
      _buildTextStyle(text.labelMedium, weight);
  TextStyle labelSmallW(int weight) => _buildTextStyle(text.labelSmall, weight);
}
