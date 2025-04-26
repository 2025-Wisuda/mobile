import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mobile/core/constants/icon_constant.dart';
import 'package:mobile/shared/widgets/widget.dart';

class LoginFormPasswordWidget extends StatelessWidget {
  const LoginFormPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormFieldWidget(
      controller: TextEditingController(),
      focusNode: FocusNode(),
      onChanged: (value) {},
      labelText: 'features.auth.login.password'.tr(),
      hintText: 'features.auth.login.passwordHint'.tr(),
      keyboardType: TextInputType.text,
      prefixIcon: Padding(
        padding: const EdgeInsets.all(12),
        child: Image.asset(IconConstant.lockIcon, width: 12, height: 12),
      ),
      suffixIcon: Padding(
        padding: const EdgeInsets.all(12),
        child: Image.asset(IconConstant.eyeOffIcon, width: 12, height: 12),
      ),
    );
  }
}
