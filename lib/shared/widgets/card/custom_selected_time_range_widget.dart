import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';

class CustomSelectedTimeRangeWidget extends StatelessWidget {
  final String? startTime;
  final String? endTime;
  final String? label;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? textColor;
  final Color? iconColor;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double? borderRadius;

  const CustomSelectedTimeRangeWidget({
    super.key,
    this.startTime,
    this.endTime,
    this.label,
    this.icon,
    this.backgroundColor,
    this.borderColor,
    this.textColor,
    this.iconColor,
    this.padding,
    this.margin,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    if (startTime == null && endTime == null) {
      return const SizedBox.shrink();
    }

    final displayText = label ??
        'common'.messageWith('selectedTimeRange', {
          'startTime': startTime ?? 'common'.message('selectStart'),
          'endTime': endTime ?? 'common'.message('selectEnd'),
        });

    return Container(
      padding: padding ?? const EdgeInsets.all(8),
      margin: margin ?? const EdgeInsets.only(bottom: 4),
      decoration: BoxDecoration(
        color:
            backgroundColor ?? context.primaryContainer.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(borderRadius ?? 8),
        border: Border.all(
          color: borderColor ?? context.primary.withValues(alpha: 0.3),
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon ?? Icons.access_time,
            size: 16,
            color: iconColor ?? context.primary,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              displayText,
              style: context.labelLargeW(500).copyWith(
                    color: textColor ?? context.primary,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
