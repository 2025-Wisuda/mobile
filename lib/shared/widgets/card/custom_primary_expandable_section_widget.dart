import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';

class CustomPrimaryExpandableSectionWidget extends StatelessWidget {
  final bool isExpanded;
  final VoidCallback onToggle;
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  final Color borderColor;
  final String title;
  final Widget content;
  final bool showExpandIcon;

  const CustomPrimaryExpandableSectionWidget({
    super.key,
    required this.isExpanded,
    required this.onToggle,
    required this.icon,
    required this.iconColor,
    required this.backgroundColor,
    required this.borderColor,
    required this.title,
    required this.content,
    this.showExpandIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: borderColor, width: 1),
        boxShadow: [
          BoxShadow(
            color: context.shadow.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionHeader(context),
            if (isExpanded) content,
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context) {
    return InkWell(
      onTap: onToggle,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(icon, color: iconColor, size: 18),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(title, style: context.titleMediumW(500)),
            ),
            if (showExpandIcon)
              Icon(
                isExpanded
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
                color: context.onSurface,
              ),
          ],
        ),
      ),
    );
  }
}
