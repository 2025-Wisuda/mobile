import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';

Widget customLegendWidget(
  BuildContext context, {
  required String label,
  required Color color,
}) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    spacing: 8,
    children: [
      Container(
        width: 12,
        height: 12,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(2),
        ),
      ),
      Text(
        label,
        style: context.labelMedium(),
      ),
    ],
  );
}
