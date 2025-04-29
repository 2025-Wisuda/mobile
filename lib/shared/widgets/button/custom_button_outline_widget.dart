import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/core/constants/border_radius_constant.dart';

class CustomButtonOutlineWidget extends StatelessWidget {
  final String textButton;
  final Function()? onTap;
  final Color? backgroundColor;
  final Color? borderColor;
  const CustomButtonOutlineWidget({
    super.key,
    required this.textButton,
    this.onTap,
    this.backgroundColor,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: null,
        surfaceTintColor: null,
        splashFactory: InkRipple.splashFactory,
        backgroundColor:
            backgroundColor ?? Theme.of(context).colorScheme.surface,
        side: BorderSide(
          color: borderColor ?? Theme.of(context).colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        elevation: 0,
      ),
      onPressed: onTap ?? () => Get.back(),
      child: Text(textButton, style: Theme.of(context).textTheme.bodySmall!),
    );
  }
}
