import 'package:flutter/material.dart';

import 'package:mobile/features/auth/presentation/controllers/controller.dart';
import 'package:mobile/shared/widgets/widget.dart';

List<Widget> loginFormWidget(LoginController c) {
  return [
    CustomUsernameFieldWidget(
      controller: c.getController('username'),
      focusNode: c.getFocusNode('username'),
      onFieldSubmitted: (_) => c.getFocusNode('password').requestFocus(),
      validator: (value) => c.validateRequired(value, 'Username'),
      onChanged: (value) => c.markFieldAsInteracted('username'),
    ),
    CustomPasswordFieldWidget(
      controller: c.getController('password'),
      focusNode: c.getFocusNode('password'),
      obscureText: c.obscureText,
      onToggleVisibility: c.togglePasswordVisibility,
      validator: (value) => c.validateRequired(value, 'Password'),
      isRequired: true,
      onChanged: (value) => c.markFieldAsInteracted('password'),
    ),
  ];
}
