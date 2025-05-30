// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile/shared/helpers/extensions/extension.dart';

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
      height: 44,
      width: 44,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius ?? 8),
            border: Border.all(
              color: borderColor ?? context.outlineVariant,
              width: 1.0,
            ),
            color: backgroundColor ?? context.surface,
          ),
          child: Row(
            children: [
              if (leadingIcon != null)
                SizedBox(
                  height: 24,
                  width: 24,
                  child: Center(child: leadingIcon),
                ),
              if (showHintText)
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      hintText ?? '',
                      style: context.text.bodyMedium?.copyWith(
                        color:
                            textColor ?? context.onSurface
                              ..withValues(alpha: 0.6),
                      ),
                      overflow: TextOverflow.ellipsis,
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
