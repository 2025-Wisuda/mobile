// Flutter imports:
import 'package:flutter/material.dart';

/// Extension to simplify access to Theme, TextStyle, ColorScheme,
/// and screen size from [BuildContext].
extension MediaQueryExtensionHelper on BuildContext {
  /// Returns the current [ThemeData] from the context.

  /// Returns the screen height from [MediaQuery].
  double get sHeight => MediaQuery.of(this).size.height;

  /// Returns the screen width from [MediaQuery].
  double get sWidth => MediaQuery.of(this).size.width;
}
