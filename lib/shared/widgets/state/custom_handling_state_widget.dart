import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

Widget customHandlingStateWidget(
  BuildContext context, {
  Widget? item,
  required String title,
  String? subtitle,
}) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.5,
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16,
        children: [
          item ?? const CustomPrimaryLoadingWidget(),
          Text(
            title,
            style: context
                .titleMediumW(500)
                .copyWith(color: context.onSurface.withValues(alpha: 0.9)),
            textAlign: TextAlign.center,
          ),
          if (subtitle != null)
            Text(
              subtitle,
              style: context.bodyLarge().copyWith(
                    color: context.onSurface.withValues(alpha: 0.8),
                  ),
              textAlign: TextAlign.center,
            ),
        ],
      ),
    ),
  );
}
