import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';

class StickyFooterWidget extends StatelessWidget {
  final int itemCount;
  final String label;

  const StickyFooterWidget({
    super.key,
    required this.itemCount,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    if (itemCount == 0) return const SizedBox.shrink();

    return Container(
      decoration: BoxDecoration(
        color: context.surface,
        border: Border(
          top: BorderSide(
            color: context.outline.withValues(alpha: 0.6),
            width: 0.33,
          ),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.list_alt,
                size: 16,
                color: context.onSurfaceVariant,
              ),
              const SizedBox(width: 8),
              Text(
                '$itemCount $label',
                style: context.labelMedium().copyWith(
                      color: context.onSurfaceVariant,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
