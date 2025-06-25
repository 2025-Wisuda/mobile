import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/core.dart';
import 'package:mobile/features/auth/presentation/controllers/controller.dart';
import 'package:mobile/features/menu/presentation/controllers/navigation_controller.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class LogoutButtonWidget extends StatelessWidget {
  final LogoutType logoutType;
  final String? buttonText;
  final bool showConfirmDialog;

  const LogoutButtonWidget({
    super.key,
    this.logoutType = LogoutType.remote,
    this.buttonText,
    this.showConfirmDialog = true,
  });

  @override
  Widget build(BuildContext context) {
    final logoutController = Get.find<LogoutController>();
    return Column(
      children: [
        _buildLogoutButton(context, logoutController),
        _buildStateHandler(context, logoutController),
      ],
    );
  }

  Widget _buildLogoutButton(BuildContext context, LogoutController c) {
    return Obx(() {
      final bool canLogout = c.canLogout;
      final logoutState = c.logoutState;

      return CustomSubmitButtonWidget(
        backgroundColor: context.surfaceContainerLow,
        buttonType: CustomButtonType.outlined,
        isFormValid: canLogout,
        state: logoutState,
        onPressed: canLogout
            ? () => showConfirmDialog
                ? _showLogoutDialog(context, c)
                : c.logout(logoutType)
            : null,
        textButton: buttonText ?? 'auth'.message('logout'),
        borderColor: context.error,
        textColor: context.error,
        width: double.infinity,
      );
    });
  }

  Widget _buildStateHandler(BuildContext context, LogoutController c) {
    return Obx(() {
      final logoutState = c.logoutState;

      switch (logoutState) {
        case SubmitStateEnum.success:
        case SubmitStateEnum.failure:
          _handleLogoutState(context);
        default:
      }

      return const SizedBox.shrink();
    });
  }

  void _handleLogoutState(BuildContext context) {
    Future.microtask(() {
      if (Get.isRegistered<NavigationController>()) {
        Get.find<NavigationController>().resetToHome();
      }
      Get.offAllNamed(AppRoute.splash);
    });
  }

  void _showLogoutDialog(BuildContext context, LogoutController c) {
    showCustomConfirmDialog(
      context: context,
      title: 'auth'.message('logoutConfirmationTitle'),
      message: 'auth'.message('logoutConfirmationMessage'),
      confirmText: 'auth'.message('logout'),
      cancelText: 'common'.message('cancel'),
      type: DialogType.destructive,
      onConfirm: () async {
        Get.back();
        CustomFullScreenLoadingWidget.show(
          context,
          message: 'auth'.message('loggingOut'),
          duration: const Duration(milliseconds: 1000),
        );
        await c.logout(logoutType);
      },
      icon: Icons.logout,
    );
  }
}
