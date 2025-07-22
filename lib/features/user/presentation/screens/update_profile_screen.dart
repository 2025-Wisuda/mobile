import 'dart:io' show Platform;

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/user/presentation/controllers/controller.dart';
import 'package:mobile/features/user/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  late UserProfileFormController formController;
  late UserProfileController profileController;

  @override
  void initState() {
    super.initState();
    formController = Get.find<UserProfileFormController>();
    profileController = Get.find<UserProfileController>();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (profileController.userProfile != null) {
        formController.loadUserProfileForUpdate(profileController.userProfile!);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(52),
        child: _buildAppBar(context),
      ),
      bottomNavigationBar: _buildBottomActionBar(context),
      body: CustomRefreshWrapperWidget(
        onRefresh: () async {
          await profileController.refreshUserProfile();
        },
        child: UpdateProfileWrapperWidget(
          profileController: profileController,
          formController: formController,
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    final toolbarHeight = Platform.isIOS ? 120.0 : 76.0;

    return CustomAppBarWithBorder(
      toolbarHeight: toolbarHeight,
      title: 'user'.message('updateProfile'),
    );
  }

  Widget _buildBottomActionBar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.surface,
        boxShadow: [
          BoxShadow(
            color: context.shadow.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: _buildButton(context),
      ),
    );
  }

  Widget _buildButton(BuildContext context) {
    return Obx(() {
      return CustomSubmitButtonWidget(
        isFormValid: formController.isFormValidWithImages,
        state: formController.state,
        onPressed: formController.isFormValidWithImages
            ? () => formController.updateProfile()
            : null,
        textButton: 'user'.message('updateProfile'),
      );
    });
  }
}
