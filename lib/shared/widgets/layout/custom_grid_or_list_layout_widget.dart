import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';

class CustomGridOrListLayoutWidget extends StatelessWidget {
  final bool isGridView;
  final VoidCallback onPressed;
  const CustomGridOrListLayoutWidget(
      {super.key, required this.isGridView, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: context.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: context.outline.withValues(alpha: 0.6),
          width: 1,
        ),
      ),
      child: IconButton(
        onPressed: onPressed,
        padding: EdgeInsets.zero,
        icon: Icon(
          isGridView ? Icons.view_list_rounded : Icons.grid_view_rounded,
          size: 20,
        ),
        style: IconButton.styleFrom(
          foregroundColor: context.onSurface,
          backgroundColor: Colors.transparent,
          overlayColor: context.primary.withValues(alpha: 0.1),
        ),
      ),
    );
  }
}
