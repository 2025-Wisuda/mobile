import 'package:flutter/widgets.dart';

import 'package:auto_route/auto_route.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

import 'package:mobile/core/routes/app_router.dart';
import 'package:mobile/shared/services/session_service.dart';

@lazySingleton
class SplashController extends GetxController {
  final AppRouter appRouter;

  SplashController(this.appRouter);

  Future<void> checkTokenAndNavigate(BuildContext context) async {
    final accessToken = await SessionService.getAccessToken();
    await Future.delayed(const Duration(seconds: 2));
    if (context.mounted) {
      if (accessToken != null) {
        context.replaceRoute(const MainWrapperRoute());
      } else {
        context.replaceRoute(const LoginRoute());
      }
    }
  }
}
