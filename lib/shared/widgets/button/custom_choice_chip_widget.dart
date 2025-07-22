import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';

class CustomChoiceChipWidget extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onSelected;

  const CustomChoiceChipWidget({
    super.key,
    required this.label,
    required this.selected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final bgColor = selected
        ? context.primaryContainer.withValues(alpha: 0.15)
        : context.surfaceBright;
    final borderColor =
        selected ? context.primary : context.outline.withValues(alpha: 0.5);
    final textColor = selected ? context.primary : context.onSurfaceVariant;

    return ChoiceChip(
      selected: selected,
      label: Text(label, style: context.bodySmall().copyWith(color: textColor)),
      selectedColor: bgColor,
      backgroundColor: context.surface,
      side: BorderSide(color: borderColor),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      onSelected: (_) => onSelected(),
    );
  }
}
