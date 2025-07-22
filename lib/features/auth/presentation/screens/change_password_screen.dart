import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/auth/presentation/controllers/controller.dart';
import 'package:mobile/features/auth/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class ChangePasswordScreen extends GetView<ChangePasswordController> {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: _buildAppBar(context),
      ),
      body: ChangePasswordWrapperWidget(controller: controller),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return CustomAppBarWithBorder(
      title: 'changePassword'.menu(),
      showBackButton: true,
      onBackPressed: () {
        controller.clearForm();
        Get.back();
      },
    );
  }
}
