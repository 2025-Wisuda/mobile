import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:mobile/core/constants/icon_constant.dart';
import 'package:mobile/features/auth/presentation/controllers/auth_controller.dart';
import 'package:mobile/shared/widgets/widget.dart';

class LoginFormUsernameWidget extends StatelessWidget {
  const LoginFormUsernameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();

    return Obx(
      () => CustomTextFormFieldWidget(
        controller: authController.usernameController.value,
        focusNode: authController.usernameFocusNode.value,
        onChanged: (value) => authController.validateUsername(value),
        labelText: 'features.auth.login.form.label.username'.tr(),
        hintText: 'features.auth.login.form.hint.username'.tr(),
        keyboardType: TextInputType.text,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8),
          child: customImageIconWidget(
            imagePath: IconConstant.userSolidIcon,
            width: 12,
            height: 12,
          ),
        ),
      ),
    );
  }
}
