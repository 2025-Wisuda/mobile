import 'package:flutter/material.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/layout/layout.dart';

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
                  SizedBox(
                    height: 8,
                  ),
                  CustomDashedLineWidget(color: context.outline),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'NUR ANNISA SEPTRIZA (MOBILE) \nLEVIAN DANDRA (BACKEND) \nBUDI CAHYONO (AI)',
                      style: context
                          .bodyMediumW(700)
                          .copyWith(color: context.onSurfaceVariant),
                      textAlign: TextAlign.center,
                    ),
                  )
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
