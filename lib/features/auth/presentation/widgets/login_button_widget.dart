import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/auth/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class LoginButtonWidget extends StatelessWidget {
  final LoginController c;

  const LoginButtonWidget({
    super.key,
    required this.c,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final isFormValid = c.reactiveFormValid.value;
      return CustomSubmitButtonWidget(
        isFormValid: isFormValid,
        state: c.state,
        onPressed: isFormValid ? () => c.login() : null,
        textButton: 'auth'.message('login'),
      );
    });
  }
}
