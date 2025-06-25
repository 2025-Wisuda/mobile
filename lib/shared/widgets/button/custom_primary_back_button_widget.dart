import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/core.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CustomPrimaryBackButtonWidget extends StatelessWidget {
  final Widget? customButton;
  final Color? borderColor;
  final Function()? onPressed;
  final WidgetStateProperty<Color?>? backgroundColor;

  const CustomPrimaryBackButtonWidget({
    super.key,
    this.customButton,
    this.borderColor,
    this.onPressed,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 44,
      height: 44,
      child: customButton ??
          OutlinedButton(
            onPressed: () {
              onPressed?.call() ?? Get.back();
            },
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: const CircleBorder(),
              side: BorderSide(
                color: borderColor ?? context.outline.withValues(alpha: 0.3),
                width: 0.5,
              ),
              backgroundColor: Colors.transparent,
            ),
            child: customImageIconWidget(
              imagePath: IconConstant.chevronLeftOutlineIcon,
            ),
          ),
    );
  }
}
