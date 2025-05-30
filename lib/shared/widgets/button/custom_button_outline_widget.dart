// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/core/constants/border_radius_constant.dart';
import 'package:mobile/shared/helpers/extensions/extension.dart';

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
        backgroundColor: backgroundColor ?? context.surface,
        side: BorderSide(color: borderColor ?? context.primary, width: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        elevation: 0,
      ),
      onPressed: onTap ?? () => Get.back(),
      child: Text(textButton, style: context.text.bodySmall!),
    );
  }
}
