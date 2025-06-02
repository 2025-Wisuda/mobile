import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart' as i18n;

import 'package:mobile/di/injection.dart';
import 'package:mobile/features/splash/presentation/controllers/splash_controller.dart';

class SplashWrapperWidget extends StatefulWidget {
  const SplashWrapperWidget({super.key});

  @override
  State<SplashWrapperWidget> createState() => _SplashWrapperWidgetState();
}

class _SplashWrapperWidgetState extends State<SplashWrapperWidget> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final splashController = getIt<SplashController>();
      splashController.checkTokenAndNavigate(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 8,
        children: [
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
