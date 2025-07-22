import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/auth/presentation/controllers/controller.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/widgets/form/form.dart';

List<Widget> changePasswordFormWidget(ChangePasswordController controller) {
  return [
    Obx(() {
      final obscureCurrentPassword = controller.obscureCurrentPassword.value;
      return CustomPasswordFieldWidget(
        controller: controller.getController('currentPassword'),
        focusNode: controller.getFocusNode('currentPassword'),
        validator: (value) =>
            controller.shouldShowValidationError('currentPassword')
                ? controller.validateRequired(value, 'Current Password')
                : null,
        onChanged: (_) => controller.markFieldAsInteracted('currentPassword'),
        onFieldSubmitted: (_) {
          if (controller
              .getController('currentPassword')
              .text
              .trim()
              .isNotEmpty) {
            controller.getFocusNode('newPassword').requestFocus();
          }
        },
        textInputAction: TextInputAction.next,
        passwordType: PasswordTypeEnum.current,
        obscureText: obscureCurrentPassword,
        onToggleVisibility: controller.toggleObscureCurrentPassword,
      );
    }),
    Obx(() {
      final obscureNewPassword = controller.obscureNewPassword.value;
      return CustomPasswordFieldWidget(
        controller: controller.getController('newPassword'),
        focusNode: controller.getFocusNode('newPassword'),
        validator: (value) =>
            controller.shouldShowValidationError('newPassword')
                ? controller.validatePassword(value)
                : null,
        onChanged: (_) => controller.markFieldAsInteracted('newPassword'),
        onFieldSubmitted: (_) {
          if (controller.getController('newPassword').text.trim().isNotEmpty) {
            controller.getFocusNode('confirmPassword').requestFocus();
          }
        },
        textInputAction: TextInputAction.next,
        passwordType: PasswordTypeEnum.newPassword,
        obscureText: obscureNewPassword,
        onToggleVisibility: controller.toggleObscureNewPassword,
      );
    }),
    Form(
      key: ValueKey(controller.formKey.hashCode),
      autovalidateMode: AutovalidateMode.always,
      child: Obx(() {
        final obscureConfirmPassword = controller.obscureConfirmPassword.value;
        return CustomPasswordFieldWidget(
          controller: controller.getController('confirmPassword'),
          focusNode: controller.getFocusNode('confirmPassword'),
          validator: (value) =>
              controller.shouldShowValidationError('confirmPassword')
                  ? controller.validatePasswordConfirmation(
                      value, controller.getControllerValue('newPassword'))
                  : null,
          onChanged: (_) => controller.markFieldAsInteracted('confirmPassword'),
          onFieldSubmitted: (_) =>
              controller.getFocusNode('confirmPassword').unfocus(),
          textInputAction: TextInputAction.done,
          passwordType: PasswordTypeEnum.confirmation,
          obscureText: obscureConfirmPassword,
          onToggleVisibility: controller.toggleObscureConfirmPassword,
        );
      }),
    ),
  ];
}
