import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/splash/presentation/controllers/splash_controller.dart';
import 'package:mobile/shared/extensions/extension.dart';

class SplashWrapperWidget extends StatefulWidget {
  const SplashWrapperWidget({super.key});

  @override
  State<SplashWrapperWidget> createState() => _SplashWrapperWidgetState();
}

class _SplashWrapperWidgetState extends State<SplashWrapperWidget> {
  SplashController get splashController => Get.find<SplashController>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final isLoggedIn = await splashController.isLoggedIn();
      if (!mounted) return;

      if (isLoggedIn) {
        Get.offAllNamed(AppRoute.home);
      } else {
        Get.offAllNamed(AppRoute.login);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.flutter_dash, size: 100, color: context.primary),
          const SizedBox(height: 8),
          Text('appName', style: context.bodyMediumW(600)),
        ],
      ),
    );
  }
}
