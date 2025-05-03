import 'package:flutter/material.dart';

class CustomButtonBackgroundWidget extends StatelessWidget {
  final Widget iconButton;
  final Function()? onPressed;
  final WidgetStateProperty<Color?>? backgroundColor;
  final Color? iconColor;

  const CustomButtonBackgroundWidget({
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
      color: Theme.of(context).colorScheme.onSurface,
      focusColor: Theme.of(context).colorScheme.secondaryContainer,
      style: ButtonStyle(
        backgroundColor:
            backgroundColor ??
            WidgetStateProperty.all<Color?>(
              Theme.of(context).colorScheme.outline,
            ),
      ),
    );
  }
}
