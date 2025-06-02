import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/constants/constant.dart';
import 'package:mobile/di/injection.dart';
import 'package:mobile/features/auth/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

part 'change_password_app_bar_widget.dart';
part 'change_password_button_widget.dart';
part 'change_password_form_confirm_password_widget.dart';
part 'change_password_form_current_password_widget.dart';
part 'change_password_form_new_password_widget.dart';
part 'change_password_instruction_widget.dart';

class ChangePasswordWrapperWidget extends StatelessWidget {
  const ChangePasswordWrapperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 12,
        children: [
          ChangePasswordFormCurrentPasswordWidget(),
          ChangePasswordFormNewPasswordWidget(),
          ChangePasswordFormConfirmPasswordWidget(),
          ChangePasswordInstructionWidget(),
          SizedBox(height: 12),
          ChangePasswordButtonWidget(),
        ],
      ).p(24),
    );
  }
}
