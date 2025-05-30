// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;

// Project imports:
import 'package:mobile/core/constants/illustration_constant.dart';
import 'package:mobile/shared/helpers/extensions/extension.dart';

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
            i18n.tr('features.auth.login.welcomeTitle'),
            style: context.headlineMediumW(600),
          ),
          Text(
            i18n.tr('features.auth.login.welcomeDescription'),
            style: context.bodyMediumW(600).copyWith(color: context.scrim),
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
