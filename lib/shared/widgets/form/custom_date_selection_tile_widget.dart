import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/date_helper.dart';

class CustomDateSelectionTileWidget extends StatelessWidget {
  final String label;
  final Rx<DateTime?> value;
  final String notSelectedText;
  final VoidCallback onTap;

  const CustomDateSelectionTileWidget({
    super.key,
    required this.label,
    required this.value,
    required this.notSelectedText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(label, style: context.bodyMedium()),
      trailing: Obx(() {
        return Text(
          value.value != null
              ? DateHelper.formatFullDate(date: value.value!)
              : notSelectedText,
          style: context.text.bodySmall?.copyWith(
            color: value.value != null
                ? context.onSurface
                : context.onSurface.withValues(alpha: 0.5),
          ),
        );
      }),
      onTap: onTap,
    );
  }
}
