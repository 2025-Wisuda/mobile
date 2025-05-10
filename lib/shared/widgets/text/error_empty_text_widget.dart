import 'package:flutter/material.dart';
import 'package:mobile/shared/helpers/helper.dart';

Widget errorEmptyTextWidget(BuildContext context, {required String message}) {
  return SizedBox(
    width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          message,
          style: context.text.bodyMedium,

          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
