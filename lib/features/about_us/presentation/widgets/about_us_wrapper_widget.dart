import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart' as i18n;

import 'package:mobile/shared/extensions/extension.dart';

class AboutUsWrapperWidget extends StatelessWidget {
  const AboutUsWrapperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final title = i18n.tr('features.aboutUs.title');
    final description = i18n.tr('features.aboutUs.description');
    final version = i18n.tr('features.menu.version');
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: context.bodyMediumW(500),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.visible,
                  maxLines: 2,
                ),
                Text(
                  description,
                  style: context.bodySmallW(500),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.visible,
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ),
        Text(
          version,
          style: context.bodyMediumW(500).copyWith(color: context.outline),
          overflow: TextOverflow.ellipsis,
        ).pb(36),
      ],
    );
  }
}
