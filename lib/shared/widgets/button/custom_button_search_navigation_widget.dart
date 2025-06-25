import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';

class CustomButtonSearchNavigationWidget extends StatelessWidget {
  final String? hintText;
  final Widget? leadingIcon;
  final void Function()? onTap;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? textColor;
  final double? borderRadius;
  final bool showHintText;

  const CustomButtonSearchNavigationWidget({
    super.key,
    this.hintText,
    this.leadingIcon,
    this.onTap,
    this.backgroundColor,
    this.borderColor,
    this.textColor,
    this.borderRadius,
    this.showHintText = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 44,
      height: 44,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius ?? 8),
            border: Border.all(
              color: borderColor ?? context.outline.withValues(alpha: 0.3),
              width: 0.5,
            ),
            color: backgroundColor ?? context.surface,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (leadingIcon != null)
                SizedBox(
                  height: 24,
                  width: 24,
                  child: Center(child: leadingIcon),
                ),
              if (showHintText && hintText != null && hintText!.isNotEmpty)
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Text(
                      hintText!,
                      style: context.bodySmall().copyWith(
                            color: textColor ??
                                context.onSurface.withValues(alpha: 0.6),
                          ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
