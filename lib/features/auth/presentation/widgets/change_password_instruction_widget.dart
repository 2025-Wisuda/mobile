import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/auth/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';

class ChangePasswordInstructionWidget extends StatelessWidget {
  const ChangePasswordInstructionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChangePasswordController>(builder: (controller) {
      final newPassword = controller.getControllerValue('newPassword');
      // final confirmPassword = controller.getControllerValue('confirmPassword');
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 2,
        children: [
          _buildRequirementItem(
            context,
            'auth'.message('passwordMinLength'),
            newPassword.length >= 8,
          ),
          _buildRequirementItem(
            context,
            'auth'.message('passwordUppercase'),
            RegExp(r'[A-Z]').hasMatch(newPassword),
          ),
          _buildRequirementItem(
            context,
            'auth'.message('passwordLowercase'),
            RegExp(r'[a-z]').hasMatch(newPassword),
          ),
          _buildRequirementItem(
            context,
            'auth'.message('passwordNumber'),
            RegExp(r'[0-9]').hasMatch(newPassword),
          ),
          _buildRequirementItem(
            context,
            'auth'.message('passwordSpecialChar'),
            RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(newPassword),
          ),
          // _buildRequirementItem(
          //   context,
          //   'auth'.message('passwordMatch'),
          //   newPassword.isNotEmpty &&
          //       confirmPassword.isNotEmpty &&
          //       newPassword == confirmPassword,
          // ),
        ],
      );
    });
  }

  Widget _buildRequirementItem(
    BuildContext context,
    String text,
    bool isValid,
  ) {
    final color =
        isValid ? context.primary : context.onSurface.withValues(alpha: 0.6);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        Icon(
          isValid ? Icons.check_circle : Icons.radio_button_unchecked,
          size: 16,
          color: color,
        ),
        Expanded(
          child: Text(
            text,
            style: context.bodySmall().copyWith(
                  color: color,
                ),
          ),
        ),
      ],
    );
  }
}
