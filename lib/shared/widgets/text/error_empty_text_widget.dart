// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile/shared/helpers/extensions/extension.dart';

// Project imports:

Widget errorEmptyTextWidget(BuildContext context, {required String message}) {
  return SizedBox(
    width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          message,
          style: context.bodyMediumW(500),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
