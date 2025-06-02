import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import 'package:mobile/core/routes/app_router.dart';
import 'package:mobile/di/injection.dart';
import 'package:mobile/shared/controllers/controller.dart';
import 'package:mobile/shared/controllers/mixins/debounce_mixin.dart';
import 'package:mobile/shared/databases/database.dart';
import 'package:mobile/shared/services/service.dart';

@lazySingleton
class LogoutController extends BaseStateController with DebounceMixin {
  LogoutController();

  Future<void> executeLogout(
    BuildContext context, {
    Duration? debounceDuration,
  }) async {
    setSubmitLoading();
    await _performLocalLogout(context);
  }

  Future<void> _performLocalLogout(BuildContext context) async {
    await SessionService.clearAllTokens();
    final userDatabase = getIt<UserDatabase>();
    await userDatabase.clearUserData();
    if (context.mounted) {
      navigateToSplash(context);
    }
  }

  void navigateToSplash(BuildContext context) {
    context.router.replaceAll([const SplashRoute()]);
  }
}
