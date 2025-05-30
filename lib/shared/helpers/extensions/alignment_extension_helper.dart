// Flutter imports:
import 'package:flutter/material.dart';

/// Extension to provide alignment utilities for widgets.
///
/// This extension simplifies aligning widgets to various positions
/// within their parent containers.
///
/// ### Example Usage:
/// ```dart
/// Text('Hello').center(); // Centers the widget
/// Text('Hello').alignTopLeft(); // Aligns the widget to the top left
/// ```
extension AlignmentExtensionHelper on Widget {
  /// Centers the widget within its parent.
  ///
  /// Example:
  /// ```dart
  /// Text('Centered').center();
  /// ```
  Widget center() => Center(child: this);

  /// Aligns the widget to the top left of its parent.
  ///
  /// Example:
  /// ```dart
  /// Text('Top Left').alignTopLeft();
  /// ```
  Widget alignTopLeft() => Align(alignment: Alignment.topLeft, child: this);

  /// Aligns the widget to the top center of its parent.
  ///
  /// Example:
  /// ```dart
  /// Text('Top Center').alignTopCenter();
  /// ```
  Widget alignTopCenter() => Align(alignment: Alignment.topCenter, child: this);

  /// Aligns the widget to the top right of its parent.
  ///
  /// Example:
  /// ```dart
  /// Text('Top Right').alignTopRight();
  /// ```
  Widget alignTopRight() => Align(alignment: Alignment.topRight, child: this);

  /// Aligns the widget to the center left of its parent.
  ///
  /// Example:
  /// ```dart
  /// Text('Center Left').alignCenterLeft();
  /// ```
  Widget alignCenterLeft() =>
      Align(alignment: Alignment.centerLeft, child: this);

  /// Aligns the widget to the center of its parent.
  ///
  /// Example:
  /// ```dart
  /// Text('Center').alignCenter();
  /// ```
  Widget alignCenter() => Align(alignment: Alignment.center, child: this);

  /// Aligns the widget to the center right of its parent.
  ///
  /// Example:
  /// ```dart
  /// Text('Center Right').alignCenterRight();
  /// ```
  Widget alignCenterRight() =>
      Align(alignment: Alignment.centerRight, child: this);

  /// Aligns the widget to the bottom left of its parent.
  ///
  /// Example:
  /// ```dart
  /// Text('Bottom Left').alignBottomLeft();
  /// ```
  Widget alignBottomLeft() =>
      Align(alignment: Alignment.bottomLeft, child: this);

  /// Aligns the widget to the bottom center of its parent.
  ///
  /// Example:
  /// ```dart
  /// Text('Bottom Center').alignBottomCenter();
  /// ```
  Widget alignBottomCenter() =>
      Align(alignment: Alignment.bottomCenter, child: this);

  /// Aligns the widget to the bottom right of its parent.
  ///
  /// Example:
  /// ```dart
  /// Text('Bottom Right').alignBottomRight();
  /// ```
  Widget alignBottomRight() =>
      Align(alignment: Alignment.bottomRight, child: this);
}
