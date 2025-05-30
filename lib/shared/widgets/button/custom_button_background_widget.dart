// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile/shared/helpers/extensions/extension.dart';

// Project imports:

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
      color: context.onSurface,
      focusColor: context.secondaryContainer,
      style: ButtonStyle(
        backgroundColor:
            backgroundColor ?? WidgetStateProperty.all<Color?>(context.outline),
      ),
    );
  }
}
