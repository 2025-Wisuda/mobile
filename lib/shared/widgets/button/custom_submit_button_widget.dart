import 'package:flutter/material.dart';

import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

/// Button type enumeration for CustomSubmitButtonWidget
enum CustomButtonType {
  elevated,
  outlined,
  text,
  filled,
  filledTonal,
}

/// A universal customizable button with loading states and theme-aware styling.
///
/// This widget supports all Flutter button types (elevated, outlined, text, filled, tonal)
/// while leveraging existing themes as single source of truth. Provides flexibility
/// for loading states and selective property overrides when needed.
/// All styling defaults to theme values unless explicitly customized.
///
/// ## Basic Usage:
/// ```dart
/// CustomSubmitButtonWidget(
///   onPressed: () => _handleSubmit(),
///   textButton: "Submit",
///   isFormValid: _formKey.currentState?.validate() ?? false,
/// )
/// ```
///
/// ## Different Button Types:
/// ```dart
/// // Elevated (default)
/// CustomSubmitButtonWidget(
///   buttonType: CustomButtonType.elevated,
///   onPressed: () => _handleSubmit(),
///   textButton: "Submit",
/// )
///
/// // Outlined
/// CustomSubmitButtonWidget(
///   buttonType: CustomButtonType.outlined,
///   onPressed: () => _handleSubmit(),
///   textButton: "Cancel",
/// )
///
/// // Text button
/// CustomSubmitButtonWidget(
///   buttonType: CustomButtonType.text,
///   onPressed: () => _handleSubmit(),
///   textButton: "Skip",
/// )
/// ```
///
/// ## With Loading State:
/// ```dart
/// CustomSubmitButtonWidget(
///   onPressed: _isLoading ? null : () => _handleSubmit(),
///   textButton: "Create Account",
///   isFormValid: _formKey.currentState?.validate() ?? false,
///   state: _isLoading ? SubmitStateEnum.loading : SubmitStateEnum.initial,
///   buttonType: CustomButtonType.filled,
/// )
/// ```
///
/// ## Custom Styling:
/// ```dart
/// CustomSubmitButtonWidget(
///   onPressed: () => _handleSubmit(),
///   textButton: "Save Changes",
///   isFormValid: true,
///   buttonType: CustomButtonType.elevated,
///   backgroundColor: context.surface,
///   borderRadius: 12.0,
///   customLoadingWidget: CircularProgressIndicator(strokeWidth: 2),
/// )
/// ```
class CustomSubmitButtonWidget extends StatelessWidget {
  /// Callback fired when button is pressed
  final VoidCallback? onPressed;

  /// Whether the form is valid and button should be enabled
  final bool isFormValid;

  /// Current submit state for loading indication
  final SubmitStateEnum? state;

  /// Text displayed on the button
  final String textButton;

  /// Type of button to render
  final CustomButtonType buttonType;

  // === Size Properties ===

  /// Button height - defaults to theme or 48px
  final double? height;

  /// Button width - defaults to double.infinity
  final double? width;

  // === Style Overrides (optional) ===

  /// Custom background color - overrides theme if provided
  final Color? backgroundColor;

  /// Custom disabled background color - overrides theme if provided
  final Color? disabledBackgroundColor;

  /// Custom text color - overrides theme if provided
  final Color? textColor;

  /// Custom disabled text color - overrides theme if provided
  final Color? disabledTextColor;

  /// Custom border radius - overrides theme if provided
  final double? borderRadius;

  /// Custom elevation - overrides theme if provided
  final double? elevation;

  /// Custom border color (for outlined buttons) - overrides theme if provided
  final Color? borderColor;

  // === Loading Widget Configuration ===

  /// Custom loading widget - if null, uses default CustomPrimaryLoadingWidget
  final Widget? customLoadingWidget;

  /// Whether to show loading widget or just disable button
  final bool showLoadingWidget;

  const CustomSubmitButtonWidget({
    super.key,
    required this.onPressed,
    required this.textButton,
    this.isFormValid = false,
    this.state = SubmitStateEnum.initial,
    this.buttonType = CustomButtonType.elevated,
    // Size properties
    this.height,
    this.width,
    // Style overrides
    this.backgroundColor,
    this.disabledBackgroundColor,
    this.textColor,
    this.disabledTextColor,
    this.borderRadius,
    this.elevation,
    this.borderColor,
    // Loading configuration
    this.customLoadingWidget,
    this.showLoadingWidget = true,
  });

  @override
  Widget build(BuildContext context) {
    final bool isLoading = _isLoadingState();
    final bool isDisabled = !isFormValid || isLoading;
    final buttonChild = _buildButtonChild(context, isLoading, isDisabled);

    switch (buttonType) {
      case CustomButtonType.elevated:
        return _buildElevatedButton(context, isDisabled, buttonChild);
      case CustomButtonType.outlined:
        return _buildOutlinedButton(context, isDisabled, buttonChild);
      case CustomButtonType.text:
        return _buildTextButton(context, isDisabled, buttonChild);
      case CustomButtonType.filled:
        return _buildFilledButton(context, isDisabled, buttonChild);
      case CustomButtonType.filledTonal:
        return _buildFilledTonalButton(context, isDisabled, buttonChild);
    }
  }

  /// Builds elevated button with theme defaults and custom overrides
  Widget _buildElevatedButton(
      BuildContext context, bool isDisabled, Widget child) {
    final theme = Theme.of(context).elevatedButtonTheme;
    return ElevatedButton(
      onPressed: isDisabled ? null : onPressed,
      style: _buildButtonStyle(context, theme.style, isDisabled),
      child: child,
    );
  }

  /// Builds outlined button with theme defaults and custom overrides
  Widget _buildOutlinedButton(
      BuildContext context, bool isDisabled, Widget child) {
    final theme = Theme.of(context).outlinedButtonTheme;
    return OutlinedButton(
      onPressed: isDisabled ? null : onPressed,
      style:
          _buildButtonStyle(context, theme.style, isDisabled, isOutlined: true),
      child: child,
    );
  }

  /// Builds text button with theme defaults and custom overrides
  Widget _buildTextButton(BuildContext context, bool isDisabled, Widget child) {
    final theme = Theme.of(context).textButtonTheme;
    return TextButton(
      onPressed: isDisabled ? null : onPressed,
      style: _buildButtonStyle(context, theme.style, isDisabled, isText: true),
      child: child,
    );
  }

  /// Builds filled button with theme defaults and custom overrides
  Widget _buildFilledButton(
      BuildContext context, bool isDisabled, Widget child) {
    return FilledButton(
      onPressed: isDisabled ? null : onPressed,
      style: _buildButtonStyle(context, null, isDisabled),
      child: child,
    );
  }

  /// Builds filled tonal button with theme defaults and custom overrides
  Widget _buildFilledTonalButton(
      BuildContext context, bool isDisabled, Widget child) {
    return FilledButton.tonal(
      onPressed: isDisabled ? null : onPressed,
      style: _buildButtonStyle(context, null, isDisabled),
      child: child,
    );
  }

  /// Builds button style with theme defaults and custom overrides
  ButtonStyle _buildButtonStyle(
      BuildContext context, ButtonStyle? baseStyle, bool isDisabled,
      {bool isOutlined = false, bool isText = false}) {
    baseStyle ??= ButtonStyle();

    return ButtonStyle(
      // Size
      minimumSize: WidgetStateProperty.all<Size>(
        Size(width ?? double.infinity, height ?? 48),
      ),
      maximumSize: WidgetStateProperty.all<Size>(
        Size(width ?? double.infinity, height ?? 48),
      ),

      // Shape - custom radius or theme default
      shape: borderRadius != null
          ? WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius!),
              ),
            )
          : baseStyle.shape,

      // Elevation - custom or theme default
      elevation: elevation != null
          ? WidgetStateProperty.all<double>(elevation!)
          : baseStyle.elevation,

      // Background color - custom or theme
      backgroundColor:
          backgroundColor != null || disabledBackgroundColor != null
              ? _buildBackgroundColor(context, isDisabled, isText)
              : baseStyle.backgroundColor,

      // Foreground color - custom or theme
      foregroundColor: textColor != null || disabledTextColor != null
          ? _buildForegroundColor(context, isDisabled, isText)
          : baseStyle.foregroundColor,

      // Border side (for outlined buttons)
      side: isOutlined && borderColor != null
          ? WidgetStateProperty.all(BorderSide(color: borderColor!))
          : baseStyle.side,

      // Other properties inherit from theme
      shadowColor: baseStyle.shadowColor,
      overlayColor: baseStyle.overlayColor,
      splashFactory: baseStyle.splashFactory,
    );
  }

  /// Builds background color with custom overrides
  WidgetStateProperty<Color>? _buildBackgroundColor(
      BuildContext context, bool isDisabled, bool isText) {
    return WidgetStateProperty.resolveWith<Color>((states) {
      if (states.contains(WidgetState.disabled)) {
        return disabledBackgroundColor ??
            backgroundColor?.withValues(alpha: 0.3) ??
            (isText
                ? Colors.transparent
                : context.primary.withValues(alpha: 0.3));
      }
      return backgroundColor ?? (isText ? Colors.transparent : context.primary);
    });
  }

  /// Builds foreground color with custom overrides
  WidgetStateProperty<Color>? _buildForegroundColor(
      BuildContext context, bool isDisabled, bool isText) {
    return WidgetStateProperty.resolveWith<Color>((states) {
      if (states.contains(WidgetState.disabled)) {
        return disabledTextColor ??
            textColor?.withValues(alpha: 0.6) ??
            (isText
                ? context.onSurface.withValues(alpha: 0.3)
                : context.onPrimary.withValues(alpha: 0.6));
      }
      return textColor ?? (isText ? context.primary : context.onPrimary);
    });
  }

  /// Builds button child content (text or loading widget)
  Widget _buildButtonChild(
      BuildContext context, bool isLoading, bool isDisabled) {
    if (isLoading && showLoadingWidget) {
      return customLoadingWidget ?? CustomPrimaryLoadingWidget();
    }

    return Text(
      textButton,
      style: context.bodyLargeW(500).copyWith(
            color: _getTextColorForContent(context, isDisabled),
          ),
    );
  }

  /// Gets text color for content (separate from theme foregroundColor)
  Color _getTextColorForContent(BuildContext context, bool isDisabled) {
    final bool isLoading = _isLoadingState();

    // During loading, keep normal colors (not disabled)
    final bool shouldUseDisabledColor = isDisabled && !isLoading;

    if (textColor != null) {
      return shouldUseDisabledColor
          ? textColor!.withValues(alpha: 0.6)
          : textColor!;
    }

    // Default colors based on button type
    if (buttonType == CustomButtonType.text ||
        buttonType == CustomButtonType.outlined) {
      return shouldUseDisabledColor
          ? context.primary.withValues(alpha: 0.3)
          : context.primary;
    }

    return shouldUseDisabledColor
        ? context.onPrimary.withValues(alpha: 0.6)
        : context.onPrimary;
  }

  /// Checks if current state indicates loading
  bool _isLoadingState() {
    return state == SubmitStateEnum.loading ||
        state == SubmitStateEnum.submitting;
  }
}
