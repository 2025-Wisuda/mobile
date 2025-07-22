import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:mobile/core/core.dart';
import 'package:mobile/features/auth/presentation/controllers/controller.dart';
import 'package:mobile/features/auth/presentation/widgets/widget.dart';
import 'package:mobile/features/user/user.dart';
import 'package:mobile/features/notification/notification.dart';
import 'package:mobile/shared/shared.dart';

class LoginWrapperWidget extends StatelessWidget {
  final LoginController controller;
  const LoginWrapperWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Form(
        key: controller.formKey,
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          spacing: 8,
          children: [
            ...loginFormWidget(controller),
          ],
        ),
      ),
      const SizedBox(height: 12),
      _buildButton(context),
      _buildStateHandler(context),
    ]);
  }

  Widget _buildStateHandler(BuildContext context) {
    return Obx(() {
      final state = controller.state;

      switch (state) {
        case SubmitStateEnum.success:
          _handleSuccessState(context);
        case SubmitStateEnum.failure:
          _handleFailureState(context);
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

        // Register FCM device after successful login
        await _registerFcmDevice();

        await Future.delayed(const Duration(milliseconds: 500));
        if (context.mounted) {
          CustomFullScreenLoadingWidget.hide(context);
        }
      }

      final accessToken = await Session.getAccessToken();
      if (accessToken != null && accessToken.isNotEmpty) {
        Get.offAllNamed(AppRoute.home);
      } else {
        Get.offAllNamed(AppRoute.splash);
      }
    });
  }

  Future<void> _registerFcmDevice() async {
    try {
      if (Get.isRegistered<FcmController>()) {
        final fcmController = Get.find<FcmController>();
        final fcm = Get.find<FirebaseMessaging>();
        final token = await fcm.getToken();
        if (token != null) {
          await fcmController.registerDevice(registrationToken: token);
        }
      }
    } catch (e) {
      // Log error but don't fail login
      SimpleLogger.error('FCM registration error during login: $e');
    }
  }

  void _handleFailureState(BuildContext context) {
    context.showCustomSnackbar(
      message: controller.stateDescription,
      type: SnackbarType.error,
    );

    Future.microtask(() {
      controller.cleanForm();
      controller.resetState();
      controller.update();
    });
  }

  Widget _buildButton(BuildContext context) {
    return Obx(() {
      final isFormValid = controller.isFormValid.value;
      return CustomSubmitButtonWidget(
        isFormValid: isFormValid,
        state: controller.state,
        onPressed: isFormValid ? () => controller.login() : null,
        textButton: 'auth'.message('login'),
      );
    });
  }
}
