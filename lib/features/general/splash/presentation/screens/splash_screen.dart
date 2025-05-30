// ignore_for_file: unused_local_variable

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/general/splash/presentation/presentation.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SplashController splashController = Get.find<SplashController>();
    return Scaffold(body: SplashWrapperWidget());
  }
}
