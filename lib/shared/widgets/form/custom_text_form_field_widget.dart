import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/form/custom_form_label_widget.dart';

/// A customized TextFormField with modern clean design and simplified property access.
///
/// This widget provides easy access to frequently used TextField properties while
/// maintaining clean modern aesthetics. All styling defaults to theme values unless
/// explicitly overridden, featuring ultra-thin borders and clean visual hierarchy.
///
/// ## Basic Usage:
/// ```dart
/// CustomTextFormFieldWidget(
///   controller: controller,
///   focusNode: focusNode,
///   hintText: "Enter your name",
/// )
/// ```
///
/// ## With Label & Validation:
/// ```dart
/// CustomTextFormFieldWidget(
///   controller: controller,
///   focusNode: focusNode,
///   labelText: "Full Name",
///   hintText: "Enter your full name",
///   validator: (value) => value?.isEmpty == true ? "Required" : null,
///   requiredField: true,
/// )
/// ```
///
/// ## With Custom Styling:
/// ```dart
/// CustomTextFormFieldWidget(
///   controller: controller,
///   focusNode: focusNode,
///   hintText: "Search...",
///   prefixIcon: Icon(Icons.search),
///   fillColor: Colors.grey[100],
///   borderRadius: 12.0,
/// )
/// ```
///
/// ## Modern Clean Theming:
/// All visual styling follows modern minimalist design principles with ultra-thin
/// borders (0.5px), clean 8px radius, and improved readability. Defaults to theme
/// values unless explicitly overridden.
///
/// ### Theme Features:
/// - Ultra-thin borders (0.5px normal, 1px focused) for clean appearance
/// - 8px border radius for modern feel
/// - Enhanced hint text (16sp) for better readability
/// - Clean fill colors and consistent spacing
/// - Smooth focus transitions
///
/// ### Customization Options:
/// - `fillColor`: Background color of the field
/// - `borderRadius`: Corner radius (applies to all border states)
/// - `borderColor`: Border color when enabled
/// - `focusedBorderColor`: Border color when focused
/// - `errorBorderColor`: Border color when error exists
class CustomTextFormFieldWidget extends StatelessWidget {
  // === Core TextField Properties ===

  /// Controller for the text field
  final TextEditingController controller;

  /// Focus node for the text field
  final FocusNode focusNode;

  /// Input type for the keyboard
  final TextInputType keyboardType;

  // === Content Properties ===

  /// Label text displayed above the field
  /// If null, no label is shown
  final String? labelText;

  /// Hint text displayed inside the field when empty
  final String hintText;

  /// Error text displayed below the field
  /// If null, uses validator result or theme default
  final String? errorText;

  /// Helper text displayed below the field
  /// Shown when no error exists
  final String? helperText;

  // === Icons & Decorations ===

  /// Icon displayed at the start of the field
  final Widget? prefixIcon;

  /// Icon displayed at the end of the field
  final Widget? suffixIcon;

  // === Behavior Properties ===

  /// Whether to obscure text (for passwords)
  final bool obscureText;

  /// Whether the field is enabled for input
  final bool enabled;

  /// Whether the field is read-only
  final bool readOnly;

  /// Whether to auto-focus when widget builds
  final bool autofocus;

  /// Text input action for the keyboard
  final TextInputAction textInputAction;

  /// Maximum number of lines (null = single line)
  final int? maxLines;

  /// Maximum number of characters
  final int? maxLength;

  // === Validation & Form Properties ===

  /// Validation function for the field value
  final String? Function(String?)? validator;

  /// Whether this field is required (affects label display)
  final bool requiredField;

  /// Whether this field is optional (shows optional note)
  final bool optional;

  /// Maximum number of lines for error text
  final int errorMaxLines;

  /// Whether to allocate consistent space for error text (prevents layout shift)
  final bool reserveErrorSpace;

  // === Callbacks ===

  /// Called when the field value changes
  final void Function(String)? onChanged;

  /// Called when field is submitted (keyboard action)
  final void Function(String)? onFieldSubmitted;

  /// Called when field is tapped
  final VoidCallback? onTap;

  // === Visual Customization ===

  /// Background fill color of the field
  /// If null, uses theme's fillColor
  final Color? fillColor;

  /// Border radius for all border states
  /// If null, uses theme's border radius
  final double? borderRadius;

  /// Border color when field is enabled
  /// If null, uses theme's enabledBorder color
  final Color? borderColor;

  /// Border color when field is focused
  /// If null, uses theme's focusedBorder color
  final Color? focusedBorderColor;

  /// Border color when field has error
  /// If null, uses theme's errorBorder color
  final Color? errorBorderColor;

  /// Width of the border
  final double borderWidth;

  /// Content padding inside the field
  /// If null, uses theme's contentPadding
  final EdgeInsetsGeometry? contentPadding;

  const CustomTextFormFieldWidget({
    super.key,
    // Core properties
    required this.controller,
    required this.focusNode,
    required this.hintText,
    this.keyboardType = TextInputType.text,

    // Content properties
    this.labelText,
    this.errorText,
    this.helperText,
    this.prefixIcon,
    this.suffixIcon,

    // Behavior properties
    this.obscureText = false,
    this.enabled = true,
    this.readOnly = false,
    this.autofocus = false,
    this.textInputAction = TextInputAction.done,
    this.maxLines,
    this.maxLength,

    // Validation properties
    this.validator,
    this.requiredField = false,
    this.optional = false,
    this.errorMaxLines = 2,
    this.reserveErrorSpace = false,

    // Callbacks
    this.onChanged,
    this.onFieldSubmitted,
    this.onTap,

    // Visual customization
    this.fillColor,
    this.borderRadius,
    this.borderColor,
    this.focusedBorderColor,
    this.errorBorderColor,
    this.borderWidth = 0.5,
    this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (labelText != null && labelText!.isNotEmpty) ...[
          CustomFormLabelWidget(
            label: labelText!,
            optional: optional,
            requiredField: requiredField,
          ),
          const SizedBox(height: 6),
        ],
        TextFormField(
          // Core properties
          controller: controller,
          focusNode: focusNode,
          keyboardType: keyboardType,

          // Behavior properties
          obscureText: obscureText,
          enabled: enabled,
          readOnly: readOnly,
          autofocus: autofocus,
          textInputAction: textInputAction,
          maxLines: obscureText ? 1 : maxLines,
          maxLength: maxLength,

          // Styling
          cursorColor: context.primary,

          // Input decoration with theme defaults + customizations
          decoration: _buildInputDecoration(context),

          // Callbacks
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
          onTap: onTap,
          onTapOutside: (_) => focusNode.unfocus(),

          // Validation
          validator: validator,
        ),
      ],
    );
  }

  /// Builds the input decoration with theme defaults and custom overrides
  InputDecoration _buildInputDecoration(BuildContext context) {
    final theme = Theme.of(context).inputDecorationTheme;

    return InputDecoration(
      // Content
      hintText: hintText,
      errorText: errorText,
      helperText:
          helperText ?? (reserveErrorSpace && errorText == null ? ' ' : null),
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,

      // Styling - theme first, custom overrides second
      fillColor: fillColor,
      contentPadding: contentPadding,
      errorMaxLines: errorMaxLines,

      // Borders - custom radius with theme colors, or full theme defaults
      border: _buildBorder(context, theme.border),
      enabledBorder: _buildBorder(context, theme.enabledBorder, borderColor),
      focusedBorder:
          _buildBorder(context, theme.focusedBorder, focusedBorderColor),
      errorBorder: _buildBorder(context, theme.errorBorder, errorBorderColor),
      focusedErrorBorder:
          _buildBorder(context, theme.focusedErrorBorder, errorBorderColor),
      disabledBorder: _buildBorder(context, theme.disabledBorder),
    );
  }

  /// Builds individual border with custom radius and color support
  InputBorder? _buildBorder(BuildContext context, InputBorder? themeBorder,
      [Color? customColor]) {
    if (borderRadius == null && customColor == null) {
      return themeBorder;
    }

    if (themeBorder is OutlineInputBorder) {
      return OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
        borderSide: BorderSide(
          color: customColor ?? themeBorder.borderSide.color,
          width: borderWidth,
        ),
      );
    }

    if (borderRadius != null) {
      return OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius!),
        borderSide: BorderSide(
          color: customColor ?? context.outline,
          width: borderWidth,
        ),
      );
    }

    return themeBorder;
  }
}
