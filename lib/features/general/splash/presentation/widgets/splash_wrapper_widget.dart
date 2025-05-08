import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

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
          Text('appName'.tr(), style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}
