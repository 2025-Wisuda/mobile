// Flutter imports:
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final Widget child;
  final bool? isFormValid;
  final WidgetStateProperty<Color?>? backgroundColor;
  final double height;

  const CustomButtonWidget({
    super.key,
    required this.onPressed,
    required this.child,
    this.isFormValid = false,
    this.backgroundColor,
    this.height = 48,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all<Size>(
          Size(double.infinity, height),
        ),
        backgroundColor: backgroundColor,
      ),
      child: child,
    );
  }
}
