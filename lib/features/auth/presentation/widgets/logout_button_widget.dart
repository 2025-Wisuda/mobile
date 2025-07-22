import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/core.dart';
import 'package:mobile/features/auth/presentation/controllers/controller.dart';
import 'package:mobile/features/menu/presentation/controllers/controller.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class LogoutButtonWidget extends GetView<GetLogoutController> {
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
    return Column(
      children: [
        Obx(() {
          final state = controller.state;
          return CustomSubmitButtonWidget(
            backgroundColor: context.surfaceContainerLow,
            buttonType: CustomButtonType.outlined,
            isFormValid: true,
            state: state,
            onPressed: () => showConfirmDialog
                ? _showLogoutDialog(context)
                : controller.logout(logoutType),
            textButton: buttonText ?? 'auth'.message('logout'),
            borderColor: context.error,
            textColor: context.error,
            width: double.infinity,
          );
        }),
        _buildStateHandler(context),
      ],
    );
  }

  Widget _buildStateHandler(BuildContext context) {
    return Obx(() {
      final state = controller.state;
      switch (state) {
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

  void _showLogoutDialog(BuildContext context) {
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
        await controller.logout(logoutType);
      },
      icon: Icons.logout,
    );
  }
}
