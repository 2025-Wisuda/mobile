import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:mobile/core/constants/icon_constant.dart';
import 'package:mobile/features/auth/presentation/controllers/auth_controller.dart';
import 'package:mobile/shared/widgets/widget.dart';

class LoginFormPasswordWidget extends StatelessWidget {
  const LoginFormPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();

    return Obx(
      () => CustomTextFormFieldWidget(
        controller: authController.passwordController.value,
        focusNode: authController.passwordFocusNode.value,
        onChanged: (value) => authController.validatePassword(value),
        labelText: 'features.auth.login.form.label.password'.tr(),
        hintText: 'features.auth.login.form.hint.password'.tr(),
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
