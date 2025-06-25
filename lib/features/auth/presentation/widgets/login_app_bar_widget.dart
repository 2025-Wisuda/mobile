import 'package:flutter/material.dart';

import 'package:mobile/core/constants/constant.dart';
import 'package:mobile/shared/extensions/extension.dart';

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
            'auth'.message('welcomeTitle'),
            style: context.headlineSmallW(600),
          ),
          Text(
            'auth'.message('welcomeSubtitle'),
            style: context.bodyMediumW(600).copyWith(
                  color: context.onSurface.withValues(alpha: 0.7),
                ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Image.asset(IllustrationConstant.loginIllustration),
          ),
        ],
      ),
    );
  }
}
