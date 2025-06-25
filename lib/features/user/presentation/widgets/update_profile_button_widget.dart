import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/user/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class UpdateProfileButtonWidget extends StatelessWidget {
  final UserProfileFormController c;
  const UpdateProfileButtonWidget({super.key, required this.c});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return CustomSubmitButtonWidget(
        isFormValid: c.isFormValidWithImages,
        state: c.state,
        onPressed: c.isFormValidWithImages ? () => c.updateProfile() : null,
        textButton: 'user'.message('updateProfile'),
      );
    });
  }
}
