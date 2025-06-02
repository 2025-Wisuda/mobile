import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';

class CustomIconButtonWidget extends StatelessWidget {
  final Widget iconButton;
  final Function()? onPressed;
  final WidgetStateProperty<Color?>? backgroundColor;
  final Color? iconColor;

  const CustomIconButtonWidget({
    super.key,
    required this.iconButton,
    required this.onPressed,
    this.backgroundColor,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: iconButton,
      color: context.onSurface,
      focusColor: context.secondaryContainer,
      style: ButtonStyle(
        backgroundColor:
            backgroundColor ?? WidgetStateProperty.all<Color?>(context.outline),
      ),
    );
  }
}
