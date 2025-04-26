import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mobile/core/constants/icon_constant.dart';
import 'package:mobile/shared/widgets/widget.dart';

class LoginFormUsernameWidget extends StatelessWidget {
  const LoginFormUsernameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormFieldWidget(
      controller: TextEditingController(),
      focusNode: FocusNode(),
      onChanged: (value) {},
      labelText: 'features.auth.login.username'.tr(),
      hintText: 'features.auth.login.usernameHint'.tr(),
      keyboardType: TextInputType.text,
      prefixIcon: Padding(
        padding: const EdgeInsets.all(12),
        child: Image.asset(IconConstant.personIcon, width: 12, height: 12),
      ),
    );
  }
}
