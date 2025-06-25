import 'package:flutter/material.dart';

/// A customized SearchBar with simplified access to commonly needed properties.
///
/// This widget provides easy access to frequently used SearchBar properties while
/// maintaining full theme consistency. All styling defaults to theme values unless
/// explicitly overridden.
///
/// ## Basic Usage:
/// ```dart
/// CustomSearchFormWidget(
///   controller: controller,
///   focusNode: focusNode,
///   hintText: "Search...",
///   keyboardType: TextInputType.text,
/// )
/// ```
///
/// ## With Custom Styling:
/// ```dart
/// CustomSearchFormWidget(
///   controller: controller,
///   focusNode: focusNode,
///   hintText: "Search...",
///   keyboardType: TextInputType.text,
///   leadingIcon: Icon(Icons.search),
///   trailingIcon: [Icon(Icons.clear)],
///   backgroundColor: Colors.grey[100],
///   borderRadius: 12.0,
///   borderColor: Colors.blue,
///   textStyle: TextStyle(fontSize: 16),
///   hintStyle: TextStyle(color: Colors.grey),
///   padding: EdgeInsets.symmetric(horizontal: 12),
///   elevation: 0,
///   shadowColor: Colors.black12,
/// )
/// ```
///
/// ## Theming:
/// All visual styling (colors, borders, typography) defaults to the current
/// SearchBar theme. Override individual properties only when needed.
///
/// ### Commonly Overridden Properties:
/// - `backgroundColor`: Background color of the search bar
/// - `borderRadius`: Corner radius (applies to the bar shape)
/// - `borderColor`: Border color
/// - `textStyle`: Style for the input text
/// - `hintStyle`: Style for the hint text
/// - `padding`: Content padding inside the bar
/// - `shape`: Custom shape for the bar
/// - `elevation`: Elevation of the bar
/// - `shadowColor`: Shadow color of the bar
class CustomSearchFormWidget extends StatelessWidget {
  /// Controller for the search field
  final TextEditingController controller;

  /// Focus node for the search field
  final FocusNode focusNode;

  /// Input type for the keyboard
  final TextInputType keyboardType;

  /// Hint text displayed inside the search bar
  final String hintText;

  /// Icon displayed at the start of the bar
  final Widget? leadingIcon;

  /// Called when the field value changes
  final void Function(String)? onChanged;

  /// Called when field is submitted (keyboard action)
  final void Function(String)? onFieldSubmitted;

  /// Icons displayed at the end of the bar (e.g. clear button)
  final Iterable<Widget>? trailingIcon;

  /// Whether to auto-focus when widget builds
  final bool autoFocus;

  /// Border radius for the bar shape
  final double? borderRadius;

  /// Border color for the bar
  final Color? borderColor;

  /// Background color of the bar
  final Color? backgroundColor;

  /// Whether the field is enabled for input
  final bool enabled;

  /// Style for the input text
  final TextStyle? textStyle;

  /// Style for the hint text
  final TextStyle? hintStyle;

  /// Padding inside the bar
  final EdgeInsetsGeometry? padding;

  /// Custom shape for the bar
  final OutlinedBorder? shape;

  /// Elevation of the bar
  final double? elevation;

  /// Shadow color of the bar
  final Color? shadowColor;

  const CustomSearchFormWidget({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.hintText,
    required this.keyboardType,
    this.leadingIcon,
    this.onChanged,
    this.onFieldSubmitted,
    this.trailingIcon,
    this.autoFocus = false,
    this.borderRadius,
    this.borderColor,
    this.backgroundColor,
    this.enabled = true,
    this.textStyle,
    this.hintStyle,
    this.padding,
    this.shape,
    this.elevation,
    this.shadowColor,
  });

  // Helper to convert nullable value to MaterialStateProperty if provided
  WidgetStateProperty<T>? _toMaterialState<T>(T? value) {
    if (value == null) return null;
    return WidgetStateProperty.all<T>(value);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        height: 44,
        child: ValueListenableBuilder(
          valueListenable: controller,
          builder: (context, TextEditingValue value, _) {
            return SearchBar(
              enabled: enabled,
              autoFocus: autoFocus,
              onTapOutside: (PointerDownEvent event) {
                focusNode.unfocus();
              },
              controller: controller,
              focusNode: focusNode,
              keyboardType: keyboardType,
              textInputAction: TextInputAction.done,
              hintText: hintText,
              leading: leadingIcon,
              onChanged: onChanged,
              onSubmitted: onFieldSubmitted,
              trailing: value.text.isNotEmpty ? trailingIcon?.toList() : null,
              backgroundColor: _toMaterialState(backgroundColor),
              textStyle: _toMaterialState(textStyle),
              hintStyle: _toMaterialState(hintStyle),
              padding: _toMaterialState(padding),
              elevation: _toMaterialState(elevation),
              shadowColor: _toMaterialState(shadowColor),
              shape: _toMaterialState(shape) ??
                  (borderRadius != null || borderColor != null
                      ? WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(borderRadius ?? 8.0),
                            side: borderColor != null
                                ? BorderSide(color: borderColor!)
                                : BorderSide.none,
                          ),
                        )
                      : null),
            );
          },
        ),
      ),
    );
  }
}
