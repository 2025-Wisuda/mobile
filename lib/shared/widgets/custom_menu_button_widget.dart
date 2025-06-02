import 'package:flutter/material.dart';

import 'package:mobile/core/constants/border_radius_constant.dart';
import 'package:mobile/shared/extensions/extension.dart';

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
          borderRadius:
              borderRadius ?? BorderRadiusConstant.kDefaultBorderRadiusCircle,
        ),
      ),
      child: child,
    );
  }
}
