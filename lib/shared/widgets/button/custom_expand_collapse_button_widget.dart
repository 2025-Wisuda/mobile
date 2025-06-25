import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';

class CustomExpandCollapseButtonWidget extends StatelessWidget {
  final bool isExpanded;
  final VoidCallback onTap;
  final String? expandedText;
  final String? collapsedText;
  final IconData? expandedIcon;
  final IconData? collapsedIcon;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? textColor;
  final Color? iconColor;
  final double? fontSize;
  final EdgeInsets? padding;
  final double? borderRadius;

  const CustomExpandCollapseButtonWidget({
    super.key,
    required this.isExpanded,
    required this.onTap,
    this.expandedText,
    this.collapsedText,
    this.expandedIcon,
    this.collapsedIcon,
    this.backgroundColor,
    this.borderColor,
    this.textColor,
    this.iconColor,
    this.fontSize,
    this.padding,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    final String displayText = isExpanded
        ? (expandedText ?? 'common'.message('showLess'))
        : (collapsedText ?? 'common'.message('showMore'));

    final IconData displayIcon = isExpanded
        ? (expandedIcon ?? Icons.expand_less)
        : (collapsedIcon ?? Icons.expand_more);

    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: padding ??
              const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: backgroundColor ??
                context.primaryContainer.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(borderRadius ?? 20),
            border: Border.all(
              color: borderColor ?? context.primary.withValues(alpha: 0.3),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                displayIcon,
                size: 18,
                color: iconColor ?? context.primary,
              ),
              const SizedBox(width: 6),
              Text(
                displayText,
                style: context.labelMediumW(500).copyWith(
                      color: textColor ?? context.primary,
                      fontSize: fontSize,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
