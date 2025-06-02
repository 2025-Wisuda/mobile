// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile/shared/helpers/extensions/text_style_extension_helper.dart';

Widget calendarStatusLegendWidget(
  BuildContext context, {
  required String label,
  required Color color,
}) {
  final textStyle = context.text.bodySmall?.copyWith(color: color);
  return Row(
    spacing: 8,
    children: [
      Container(
        width: 12,
        height: 12,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
      Text(label, style: textStyle),
    ],
  );
}
