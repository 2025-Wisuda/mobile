import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mobile/shared/widgets/button/custom_button_widget.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButtonWidget(
      backgroundColor: WidgetStateProperty.all<Color>(
        Theme.of(context).colorScheme.primary,
      ),
      onPressed: () {},
      height: 52,
      child: Text(
        'features.auth.login.button.login'.tr(),
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          fontWeight: FontWeight.w600,
          color: Theme.of(context).colorScheme.surfaceContainer,
        ),
      ),
    );
  }
}
