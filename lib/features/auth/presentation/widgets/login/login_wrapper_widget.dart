import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/constants/constant.dart';
import 'package:mobile/di/injection.dart';
import 'package:mobile/features/auth/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

part 'login_app_bar_widget.dart';
part 'login_form_username_widget.dart';
part 'login_form_password_widget.dart';
part 'login_button_widget.dart';

class LoginWrapperWidget extends StatelessWidget {
  const LoginWrapperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 8,
        children: [
          LoginAppBarWidget(),
          LoginFormUsernameWidget(),
          SizedBox(height: 8),
          LoginFormPasswordWidget(),
          SizedBox(height: 36),
          LoginButtonWidget(),
        ],
      ).p(24),
    );
  }
}
