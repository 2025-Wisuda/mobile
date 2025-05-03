import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AboutUsWrapperWidget extends StatelessWidget {
  const AboutUsWrapperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'features.aboutUs.title'.tr(),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.visible,
                  maxLines: 2,
                ),
                Text(
                  'features.aboutUs.description'.tr(),
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.visible,
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 36),
          child: Text(
            '${'features.menu.version'.tr()} 0.1.0',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Theme.of(context).colorScheme.outline,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
