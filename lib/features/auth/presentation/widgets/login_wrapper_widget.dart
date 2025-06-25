import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/core.dart';
import 'package:mobile/features/auth/presentation/controllers/controller.dart';
import 'package:mobile/features/auth/presentation/widgets/widget.dart';
import 'package:mobile/features/user/user.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/layout/layout.dart';
import 'package:mobile/shared/widgets/state/custom_full_screen_loading_widget.dart';

class LoginWrapperWidget extends StatelessWidget {
  const LoginWrapperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController = Get.find<LoginController>();
    return CustomPrimaryLayoutWidget(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 8,
        children: _buildContent(context, loginController),
      ),
    );
  }

  List<Widget> _buildContent(BuildContext context, LoginController c) {
    return [
      const LoginAppBarWidget(),
      Form(
        key: c.formKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Column(
          spacing: 8,
          children: [
            ...loginFormWidget(c),
          ],
        ),
      ),
      const SizedBox(height: 12),
      LoginButtonWidget(c: c),
      _buildStateHandler(context, c),
    ];
  }

  Widget _buildStateHandler(BuildContext context, LoginController c) {
    return Obx(() {
      final state = c.state;
      final errorMessage = c.errorMessage;

      switch (state) {
        case SubmitStateEnum.success:
          _handleSuccessState(context);
        case SubmitStateEnum.failure:
          _handleFailureState(context, errorMessage ?? '', c);
        default:
      }

      return const SizedBox.shrink();
    });
  }

  void _handleSuccessState(BuildContext context) {
    Future.microtask(() async {
      if (context.mounted) {
        CustomFullScreenLoadingWidget.show(
          context,
          message: 'auth'.message('loggingIn'),
          duration: const Duration(milliseconds: 1000),
        );
        if (Get.isRegistered<UserProfileController>()) {
          Get.find<UserProfileController>().fetchUserProfile();
        }
        await Future.delayed(const Duration(milliseconds: 500));
        if (context.mounted) {
          CustomFullScreenLoadingWidget.hide(context);
        }
      }

      Get.offAllNamed(AppRoute.home);
    });
  }

  void _handleFailureState(
      BuildContext context, String errorMessage, LoginController c) {
    context.showCustomSnackbar(
      message: errorMessage,
      type: SnackbarType.error,
    );

    Future.microtask(() {
      c.cleanForm();
      c.resetState();
    });
  }
}
