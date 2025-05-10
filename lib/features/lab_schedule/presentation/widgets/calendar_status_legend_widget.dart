import 'package:flutter/material.dart';

Widget calendarStatusLegendWidget(
  BuildContext context, {
  required String label,
  required Color color,
}) {
  return Row(
    spacing: 8,
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        width: 12,
        height: 12,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
      Text(label, style: Theme.of(context).textTheme.bodySmall),
    ],
  );
}
