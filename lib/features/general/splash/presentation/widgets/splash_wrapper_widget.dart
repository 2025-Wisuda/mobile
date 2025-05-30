// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;

class SplashWrapperWidget extends StatelessWidget {
  const SplashWrapperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 8,
        children: [
          // TODO 1: Replace with app logo
          Icon(
            Icons.flutter_dash,
            size: 100,
            color: Theme.of(context).colorScheme.primary,
          ),
          Text(
            i18n.tr('appName'),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
