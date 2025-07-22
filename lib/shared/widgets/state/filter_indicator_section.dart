import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';

class FilterIndicatorSection extends StatelessWidget {
  final String text;
  final VoidCallback onClear;
  const FilterIndicatorSection(
      {super.key, required this.text, required this.onClear});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: context.primaryContainer,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: context.primary.withValues(alpha: 0.2),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.filter_list,
            size: 16,
            color: context.onPrimaryContainer,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: context.bodyLargeW(500).copyWith(
                    color: context.onPrimaryContainer,
                  ),
            ),
          ),
          IconButton(
            onPressed: onClear,
            icon: Icon(
              Icons.close,
              size: 16,
              color: context.onPrimaryContainer,
            ),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(
              minWidth: 24,
              minHeight: 24,
            ),
          ),
        ],
      ),
    );
  }
}
