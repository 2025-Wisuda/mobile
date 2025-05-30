// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/core/constants/icon_constant.dart';
import 'package:mobile/features/auth/presentation/controllers/controller.dart';
import 'package:mobile/shared/widgets/widget.dart';

class LoginFormPasswordWidget extends StatelessWidget {
  const LoginFormPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();
    final label = i18n.tr('features.auth.login.form.label.password');
    final hint = i18n.tr('features.auth.login.form.hint.password');
    return Obx(
      () => CustomTextFormFieldWidget(
        controller: authController.passwordController.value,
        focusNode: authController.passwordFocusNode.value,
        onChanged: (value) => authController.validatePassword(value),
        labelText: label,
        hintText: hint,
        keyboardType: TextInputType.text,
        prefixIcon: IconButton(
          onPressed: authController.toggleObscureText,
          icon:
              authController.obscureText.value
                  ? customImageIconWidget(
                    imagePath: IconConstant.lockClosedSolidIcon,
                  )
                  : customImageIconWidget(
                    imagePath: IconConstant.lockOpenSolidIcon,
                  ),
        ),
        suffixIcon: IconButton(
          onPressed: authController.toggleObscureText,
          icon:
              authController.obscureText.value
                  ? customImageIconWidget(
                    imagePath: IconConstant.eyeOffSolidIcon,
                  )
                  : customImageIconWidget(imagePath: IconConstant.eyeSolidIcon),
        ),
        obscureText: authController.obscureText.value,
      ),
    );
  }
}
