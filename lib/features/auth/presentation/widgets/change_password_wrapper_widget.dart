import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/auth/presentation/controllers/controller.dart';
import 'package:mobile/features/auth/presentation/widgets/widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class ChangePasswordWrapperWidget extends StatelessWidget {
  final ChangePasswordController controller;
  const ChangePasswordWrapperWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 8,
            children: [
              Form(
                key: controller.formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: Column(
                  spacing: 8,
                  children: [
                    ...changePasswordFormWidget(controller),
                  ],
                ),
              ),
              const ChangePasswordInstructionWidget(),
              const SizedBox(height: 12),
              _buildButton(),
              _buildStateHandler(context),
            ]));
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
    Future.microtask(() => Get.back());
    context.showCustomSnackbar(
      message: 'auth'.success('changePassword'),
      type: SnackbarType.success,
    );
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

  Widget _buildButton() {
    return Obx(() {
      final isFormValid = controller.isFormValid.value;
      return CustomSubmitButtonWidget(
        isFormValid: isFormValid,
        state: controller.state,
        onPressed: isFormValid ? () => controller.changePassword() : null,
        textButton: 'auth'.message('changePassword'),
      );
    });
  }
}
