import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class GridSelectionItem {
  final String value;
  final String label;
  final IconData icon;
  final String? subtitle;

  const GridSelectionItem({
    required this.value,
    required this.label,
    required this.icon,
    this.subtitle,
  });
}

class CustomSelectionGridWidget extends StatelessWidget {
  final String? labelText;
  final List<GridSelectionItem> items;
  final String? selectedValue;
  final Function(String) onSelectionChanged;
  final String? errorText;
  final bool requiredField;
  final bool optional;
  final int crossAxisCount;
  final double childAspectRatio;
  final double mainAxisSpacing;
  final double crossAxisSpacing;

  const CustomSelectionGridWidget({
    super.key,
    this.labelText,
    required this.items,
    this.selectedValue,
    required this.onSelectionChanged,
    this.errorText,
    this.requiredField = true,
    this.optional = false,
    this.crossAxisCount = 2,
    this.childAspectRatio = 3,
    this.mainAxisSpacing = 12,
    this.crossAxisSpacing = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null && labelText!.isNotEmpty) ...[
          CustomFormLabelWidget(
            label: labelText!,
            requiredField: requiredField,
            optional: optional,
          ),
          const SizedBox(height: 8),
        ],
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: mainAxisSpacing,
            crossAxisSpacing: crossAxisSpacing,
            childAspectRatio: childAspectRatio,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            final isSelected = selectedValue == item.value;

            return GestureDetector(
              onTap: () => onSelectionChanged(item.value),
              child: Container(
                decoration: BoxDecoration(
                  color: isSelected
                      ? context.primary.withValues(alpha: 0.1)
                      : context.surface,
                  border: Border.all(
                    color: isSelected
                        ? context.primary
                        : context.outline.withValues(alpha: 0.3),
                    width: isSelected ? 1.0 : 0.5,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 12),
                    Icon(
                      item.icon,
                      size: 20,
                      color: isSelected
                          ? context.primary
                          : context.onSurface.withValues(alpha: 0.7),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.label,
                            style: context.labelSmallW(500).copyWith(
                                  color: isSelected
                                      ? context.primary
                                      : context.onSurface,
                                ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          if (item.subtitle != null) ...[
                            const SizedBox(height: 2),
                            Text(
                              item.subtitle!,
                              style: context.labelSmall().copyWith(
                                    color: isSelected
                                        ? context.primary.withValues(alpha: 0.7)
                                        : context.onSurface
                                            .withValues(alpha: 0.6),
                                  ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ),
            );
          },
        ),
        if (errorText != null) ...[
          const SizedBox(height: 8),
          Text(
            errorText!,
            style: context.labelSmallW(400).copyWith(
                  color: context.error,
                ),
          ),
        ],
      ],
    );
  }
}
