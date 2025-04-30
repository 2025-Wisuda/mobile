import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mobile/core/core.dart';

class LoginAppBarWidget extends StatelessWidget {
  const LoginAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          Text(
            'features.auth.login.welcomeTitle'.tr(),
            style: Theme.of(
              context,
            ).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.w600),
          ),
          Text(
            'features.auth.login.welcomeDescription'.tr(),
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.scrim,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 36),
            child: Image.asset(IllustrationConstant.loginIllustration),
          ),
        ],
      ),
    );
  }
}
