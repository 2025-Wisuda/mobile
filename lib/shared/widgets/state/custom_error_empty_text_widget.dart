import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';

Widget customErrorEmptyTextWidget(
  BuildContext context, {
  required String message,
}) {
  return SizedBox(
    width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          message,
          style: context.bodyMediumW(500).copyWith(
                color: context.onSurface.withValues(alpha: 0.8),
              ),
        )
      ],
    ),
  );
}
