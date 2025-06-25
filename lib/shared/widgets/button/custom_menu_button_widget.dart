import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';

/// @deprecated Use CustomSubmitButtonWidget with buttonType: CustomButtonType.elevated instead.
/// This widget is redundant and will be removed in future versions.
///
/// Migration example:
/// ```dart
/// // Old:
/// CustomMenuButtonWidget(onPressed: onPressed, child: Text("Menu"), width: 100, height: 50)
///
/// // New:
/// CustomSubmitButtonWidget(
///   buttonType: CustomButtonType.elevated,
///   onPressed: onPressed,
///   textButton: "Menu",
///   width: 100,
///   height: 50,
///   borderRadius: 22, // for pill shape if needed
/// )
/// ```
@Deprecated(
    'Use CustomSubmitButtonWidget with CustomButtonType.elevated instead')
class CustomMenuButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final Widget child;
  final bool? isFormValid;
  final Color? backgroundColor;
  final double width;
  final double height;
  final Color? shadowColor;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final Color? foregroundColor;

  const CustomMenuButtonWidget({
    super.key,
    required this.onPressed,
    required this.child,
    this.isFormValid = true,
    this.backgroundColor,
    required this.width,
    required this.height,
    this.shadowColor,
    this.padding,
    this.borderRadius,
    this.foregroundColor,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        enabledMouseCursor:
            isFormValid! ? SystemMouseCursors.click : SystemMouseCursors.basic,
        overlayColor: context.primary,
        surfaceTintColor: context.surface,
        foregroundColor: foregroundColor ?? context.primary,
        shadowColor: shadowColor ?? Colors.transparent,
        minimumSize: Size(width, height),
        maximumSize: Size(width, height),
        fixedSize: Size(width, height),
        backgroundColor: backgroundColor ?? context.primaryContainer,
        padding: padding ?? const EdgeInsets.all(2),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(100),
        ),
      ),
      child: child,
    );
  }
}
