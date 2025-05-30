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

class LoginFormUsernameWidget extends StatelessWidget {
  const LoginFormUsernameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();
    final label = i18n.tr('features.auth.login.form.label.username');
    final hint = i18n.tr('features.auth.login.form.hint.username');

    return Obx(
      () => CustomTextFormFieldWidget(
        controller: authController.usernameController.value,
        focusNode: authController.usernameFocusNode.value,
        onChanged: (value) => authController.validateUsername(value),
        labelText: label,
        hintText: hint,
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
