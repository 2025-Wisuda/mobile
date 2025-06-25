import 'package:flutter/material.dart';

import 'package:mobile/features/auth/presentation/controllers/controller.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/widgets/form/form.dart';

List<Widget> changePasswordFormWidget(ChangePasswordController c) {
  return [
    CustomPasswordFieldWidget(
      controller: c.getController('currentPassword'),
      focusNode: c.getFocusNode('currentPassword'),
      validator: (value) => c.validateRequired(value, 'Current Password'),
      onChanged: (_) => c.markFieldAsInteracted('currentPassword'),
      onFieldSubmitted: (_) {
        if (c.getController('currentPassword').text.trim().isNotEmpty) {
          c.getFocusNode('newPassword').requestFocus();
        }
      },
      textInputAction: TextInputAction.next,
      passwordType: PasswordTypeEnum.current,
      obscureText: c.obscureCurrentPassword,
      onToggleVisibility: c.toggleObscureCurrentPassword,
    ),
    CustomPasswordFieldWidget(
      controller: c.getController('newPassword'),
      focusNode: c.getFocusNode('newPassword'),
      validator: (value) => c.validatePassword(value),
      onChanged: (_) => c.markFieldAsInteracted('newPassword'),
      onFieldSubmitted: (_) {
        if (c.getController('newPassword').text.trim().isNotEmpty) {
          c.getFocusNode('confirmPassword').requestFocus();
        }
      },
      textInputAction: TextInputAction.next,
      passwordType: PasswordTypeEnum.newPassword,
      obscureText: c.obscureNewPassword,
      onToggleVisibility: c.toggleObscureNewPassword,
    ),
    CustomPasswordFieldWidget(
      controller: c.getController('confirmPassword'),
      focusNode: c.getFocusNode('confirmPassword'),
      validator: (value) => c.validatePasswordConfirmation(
          value, c.getControllerValue('newPassword')),
      onChanged: (_) => c.markFieldAsInteracted('confirmPassword'),
      onFieldSubmitted: (_) => c.getFocusNode('confirmPassword').unfocus(),

      // onFieldSubmitted: (_) => c.changePassword(),
      textInputAction: TextInputAction.done,
      passwordType: PasswordTypeEnum.confirmation,
      obscureText: c.obscureConfirmPassword,
      onToggleVisibility: c.toggleObscureConfirmPassword,
    ),
  ];
}
