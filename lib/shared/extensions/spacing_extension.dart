import 'package:flutter/material.dart';

/// Extension to provide spacing utilities for widgets.
///
/// This extension simplifies adding padding and margin to widgets
/// using concise methods.
///
/// ### Example Usage:
/// ```dart
/// Text('Hello').p(16); // Adds padding of 16 to all sides
/// Text('Hello').mx(8); // Adds horizontal margin of 8
/// ```
extension SpacingExtension on Widget {
  /// Adds padding to all sides of the widget.
  ///
  /// Example:
  /// ```dart
  /// Text('Padded').p(16);
  /// ```
  Widget p(double value) =>
      Padding(padding: EdgeInsets.all(value), child: this);

  /// Adds horizontal padding to the widget.
  ///
  /// Example:
  /// ```dart
  /// Text('Horizontal Padding').px(8);
  /// ```
  Widget px(double value) =>
      Padding(padding: EdgeInsets.symmetric(horizontal: value), child: this);

  /// Adds vertical padding to the widget.
  ///
  /// Example:
  /// ```dart
  /// Text('Vertical Padding').py(12);
  /// ```
  Widget py(double value) =>
      Padding(padding: EdgeInsets.symmetric(vertical: value), child: this);

  /// Adds top padding to the widget.
  ///
  /// Example:
  /// ```dart
  /// Text('Top Padding').pt(10);
  /// ```
  Widget pt(double value) =>
      Padding(padding: EdgeInsets.only(top: value), child: this);

  /// Adds bottom padding to the widget.
  ///
  /// Example:
  /// ```dart
  /// Text('Bottom Padding').pb(10);
  /// ```
  Widget pb(double value) =>
      Padding(padding: EdgeInsets.only(bottom: value), child: this);

  /// Adds left padding to the widget.
  ///
  /// Example:
  /// ```dart
  /// Text('Left Padding').pl(10);
  /// ```
  Widget pl(double value) =>
      Padding(padding: EdgeInsets.only(left: value), child: this);

  /// Adds right padding to the widget.
  ///
  /// Example:
  /// ```dart
  /// Text('Right Padding').pr(10);
  /// ```
  Widget pr(double value) =>
      Padding(padding: EdgeInsets.only(right: value), child: this);

  /// Adds margin to all sides of the widget.
  ///
  /// Example:
  /// ```dart
  /// Text('Margin').m(16);
  /// ```
  Widget m(double value) =>
      Container(margin: EdgeInsets.all(value), child: this);

  /// Adds horizontal margin to the widget.
  ///
  /// Example:
  /// ```dart
  /// Text('Horizontal Margin').mx(8);
  /// ```
  Widget mx(double value) =>
      Container(margin: EdgeInsets.symmetric(horizontal: value), child: this);

  /// Adds vertical margin to the widget.
  ///
  /// Example:
  /// ```dart
  /// Text('Vertical Margin').my(12);
  /// ```
  Widget my(double value) =>
      Container(margin: EdgeInsets.symmetric(vertical: value), child: this);

  /// Adds top margin to the widget.
  ///
  /// Example:
  /// ```dart
  /// Text('Top Margin').mt(10);
  /// ```
  Widget mt(double value) =>
      Container(margin: EdgeInsets.only(top: value), child: this);

  /// Adds bottom margin to the widget.
  ///
  /// Example:
  /// ```dart
  /// Text('Bottom Margin').mb(10);
  /// ```
  Widget mb(double value) =>
      Container(margin: EdgeInsets.only(bottom: value), child: this);

  /// Adds left margin to the widget.
  ///
  /// Example:
  /// ```dart
  /// Text('Left Margin').ml(10);
  /// ```
  Widget ml(double value) =>
      Container(margin: EdgeInsets.only(left: value), child: this);

  /// Adds right margin to the widget.
  ///
  /// Example:
  /// ```dart
  /// Text('Right Margin').mr(10);
  /// ```
  Widget mr(double value) =>
      Container(margin: EdgeInsets.only(right: value), child: this);
}
