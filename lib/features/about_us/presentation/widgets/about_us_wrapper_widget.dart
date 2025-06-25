import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';

class AboutUsWrapperWidget extends StatelessWidget {
  const AboutUsWrapperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 36),
        child: Column(children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'aboutUs'.message('title'),
                    style: context.bodyLarge(),
                  ),
                  Text(
                    'aboutUs'.message('description'),
                    style: context.bodyMedium(),
                  ),
                ],
              ),
            ),
          ),
          Text(
            'aboutUs'.message('version'),
            style:
                context.bodyMedium().copyWith(color: context.onSurfaceVariant),
          ),
        ]));
  }
}
