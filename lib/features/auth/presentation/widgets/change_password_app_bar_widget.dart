import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/auth/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class ChangePasswordAppBarWidget extends StatelessWidget {
  const ChangePasswordAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final changePasswordC = Get.find<ChangePasswordController>();

    return CustomAppBarWithBorder(
      title: 'changePassword'.menu(),
      showBackButton: true,
      onBackPressed: () {
        changePasswordC.clearForm();
        Get.back();
      },
    );
  }
}
