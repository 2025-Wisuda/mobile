import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/constants/constant.dart';
import 'package:mobile/features/auth/presentation/controllers/controller.dart';
import 'package:mobile/features/auth/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 8,
        children: [
          _buildAppBar(context),
          LoginWrapperWidget(controller: controller),
        ],
      ),
    ));
  }

  Widget _buildAppBar(BuildContext context) {
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
