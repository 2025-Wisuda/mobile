import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';

class CustomTertiaryToggleWidget extends StatelessWidget {
  final String firstOption;
  final String secondOption;
  final bool isFirstSelected;
  final VoidCallback onToggle;
  final Color? backgroundColor;

  const CustomTertiaryToggleWidget({
    super.key,
    required this.firstOption,
    required this.secondOption,
    required this.isFirstSelected,
    required this.onToggle,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: 40,
      decoration: BoxDecoration(
        color: backgroundColor ?? context.surface,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: context.outline.withValues(alpha: 0.3),
          width: 0.5,
        ),
      ),
      padding: const EdgeInsets.all(4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildOption(context, firstOption, isFirstSelected,
              isFirstSelected ? null : onToggle),
          const SizedBox(width: 4),
          _buildOption(context, secondOption, !isFirstSelected,
              isFirstSelected ? onToggle : null),
        ],
      ),
    );
  }

  Widget _buildOption(
      BuildContext context, String label, bool selected, VoidCallback? onTap) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        color: selected ? context.primary : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        boxShadow: selected
            ? [
                BoxShadow(
                  color: context.primary.withValues(alpha: 0.25),
                  blurRadius: 6,
                  offset: const Offset(0, 2),
                ),
              ]
            : [],
      ),
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.opaque,
        child: Center(
          child: Text(
            label,
            style: context.labelMedium().copyWith(
                  fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
                  color: selected
                      ? context.onPrimary
                      : context.onSurface.withValues(alpha: 0.7),
                ),
          ),
        ),
      ),
    );
  }
}
