import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/user/presentation/controllers/controller.dart';
import 'package:mobile/features/user/presentation/widgets/widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';

class UpdateProfileWrapperWidget extends StatelessWidget {
  final UserProfileController profileController;
  final UserProfileFormController formController;
  const UpdateProfileWrapperWidget(
      {super.key,
      required this.profileController,
      required this.formController});

  @override
  Widget build(BuildContext context) {
    final userGroup = profileController.userGroup.toGroupEnum();

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        spacing: 12,
        children: [
          UpdateProfileAvatarWidget(
            formController: formController,
            profileController: profileController,
          ),
          buildAccountInfoSection(context, formController),
          buildPersonalInfoSection(context, formController, userGroup),
          buildStatusSection(context, profileController),
          _buildStateHandler(context, formController),
        ],
      ),
    );
  }

  Widget _buildStateHandler(
      BuildContext context, UserProfileFormController controller) {
    return Obx(() {
      final state = controller.state;
      final errorMessage =
          controller.customMessages[controller.baseStateKey] ?? '';

      switch (state) {
        case SubmitStateEnum.success:
          _handleSuccessState(context, controller);
        case SubmitStateEnum.failure:
          _handleFailureState(context, errorMessage);
        default:
      }

      return const SizedBox.shrink();
    });
  }

  void _handleSuccessState(
      BuildContext context, UserProfileFormController controller) {
    Future.microtask(() {
      controller.resetState();
      if (Get.isRegistered<UserProfileController>()) {
        Get.find<UserProfileController>().refreshUserProfile();
      }
      if (context.mounted) {
        context.showCustomSnackbar(
          message: 'user'.success('updateUserProfile'),
          type: SnackbarType.success,
        );
      }
    });
  }

  void _handleFailureState(BuildContext context, String errorMessage) {
    context.showCustomSnackbar(
      message: errorMessage,
      type: SnackbarType.error,
    );
  }
}
