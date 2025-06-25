import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';

class CustomPrimaryToggleWidget extends StatelessWidget {
  final Widget iconMenu;
  final String nameMenu;
  final Color? backgroundColor;
  final String currentValue;
  final IconData currentIcon;
  final VoidCallback onTap;
  final bool isLoading;

  const CustomPrimaryToggleWidget({
    super.key,
    required this.iconMenu,
    required this.nameMenu,
    required this.currentValue,
    required this.currentIcon,
    required this.onTap,
    this.backgroundColor,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: backgroundColor ?? Colors.transparent,
            borderRadius: BorderRadius.circular(8),
          ),
          child: iconMenu,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(nameMenu, style: context.labelLargeW(500)),
        ),
        GestureDetector(
          onTap: isLoading ? null : onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: backgroundColor ??
                  context.primaryContainer.withValues(alpha: 0.3),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (isLoading)
                  SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor:
                          AlwaysStoppedAnimation<Color>(context.primary),
                    ),
                  )
                else ...[
                  Icon(currentIcon, size: 16, color: context.onSurface),
                  const SizedBox(width: 6),
                  Text(
                    currentValue,
                    style: context.labelMedium().copyWith(
                          color: context.onSurface,
                        ),
                  ),
                  const SizedBox(width: 4),
                  Icon(
                    Icons.chevron_right,
                    size: 20,
                    color: context.onSurface.withValues(alpha: 0.6),
                  ),
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }
}
