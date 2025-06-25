import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/auth/presentation/controllers/controller.dart';
import 'package:mobile/features/auth/presentation/widgets/widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';

class ChangePasswordWrapperWidget extends StatelessWidget {
  const ChangePasswordWrapperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final changePasswordController = Get.find<ChangePasswordController>();
    return SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 8,
          children: _buildContent(context, changePasswordController),
        ));
  }

  List<Widget> _buildContent(BuildContext context, ChangePasswordController c) {
    return [
      Form(
        key: c.formKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Column(
          spacing: 8,
          children: [
            ...changePasswordFormWidget(c),
          ],
        ),
      ),
      const ChangePasswordInstructionWidget(),
      const SizedBox(height: 12),
      ChangePasswordButtonWidget(
        c: c,
      ),
      _buildStateHandler(context, c),
    ];
  }
}

Widget _buildStateHandler(BuildContext context, ChangePasswordController c) {
  return Obx(() {
    final state = c.state;
    final errorMessage = c.errorMessage ?? '';

    switch (state) {
      case SubmitStateEnum.success:
        _handleSuccessState(context);
      case SubmitStateEnum.failure:
        _handleFailureState(context, errorMessage, c);
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

void _handleFailureState(
    BuildContext context, String errorMessage, ChangePasswordController c) {
  context.showCustomSnackbar(
    message: errorMessage,
    type: SnackbarType.error,
  );

  Future.microtask(() {
    c.cleanForm();
    c.resetState();
  });
}
