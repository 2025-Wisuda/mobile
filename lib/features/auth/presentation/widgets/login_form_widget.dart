import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/auth/presentation/controllers/controller.dart';
import 'package:mobile/shared/widgets/widget.dart';

List<Widget> loginFormWidget(LoginController controller) {
  return [
    CustomUsernameFieldWidget(
      controller: controller.getController('username'),
      focusNode: controller.getFocusNode('username'),
      onFieldSubmitted: (_) =>
          controller.getFocusNode('password').requestFocus(),
      validator: (value) => controller.shouldShowValidationError('username')
          ? controller.validateRequired(value, 'Username')
          : null,
      onChanged: (value) => controller.markFieldAsInteracted('username'),
    ),
    Obx(() {
      final obscureText = controller.obscureText.value;
      return CustomPasswordFieldWidget(
        controller: controller.getController('password'),
        focusNode: controller.getFocusNode('password'),
        obscureText: obscureText,
        onToggleVisibility: controller.togglePasswordVisibility,
        validator: (value) => controller.shouldShowValidationError('password')
            ? controller.validateRequired(value, 'Password')
            : null,
        isRequired: true,
        onChanged: (value) => controller.markFieldAsInteracted('password'),
      );
    })
  ];
}
