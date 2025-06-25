import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/user/presentation/controllers/controller.dart';
import 'package:mobile/features/user/presentation/widgets/widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class UpdateProfileWrapperWidget extends StatelessWidget {
  const UpdateProfileWrapperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final userProfileController = Get.find<UserProfileController>();
    final userProfileFormController = Get.find<UserProfileFormController>();

    _initializeControllerData(userProfileController, userProfileFormController);
    final userGroup = _getUserGroup(userProfileController);

    return Column(
      children: [
        _buildMainContent(context, userGroup, userProfileController,
            userProfileFormController),
        _buildBottomActionBar(context, userProfileFormController),
      ],
    );
  }

  void _initializeControllerData(
      UserProfileController profileC, UserProfileFormController formC) {
    final existingUser = profileC.userProfile;
    if (existingUser != null) {
      formC.initializeWithUserData(existingUser);
    }
  }

  GroupEnum? _getUserGroup(UserProfileController c) {
    final String group = c.userGroup;
    return group.toGroupEnum();
  }

  Widget _buildMainContent(BuildContext context, GroupEnum? userGroup,
      UserProfileController profileC, UserProfileFormController formC) {
    return Expanded(
      child: CustomRefreshWrapperWidget(
        onRefresh: () async {
          await profileC.refreshUserProfile();
        },
        displacement: 120.0,
        child: CustomScrollView(
          slivers: [
            UpdateProfileAppBarWidget(),
            _buildContentList(context, userGroup, profileC, formC),
          ],
        ),
      ),
    );
  }

  Widget _buildContentList(BuildContext context, GroupEnum? userGroup,
      UserProfileController profileC, UserProfileFormController formC) {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
      sliver: SliverList(
        delegate: SliverChildListDelegate([
          const SizedBox(height: 16),
          UpdateProfileAvatarWidget(
            formController: formC,
            profileController: profileC,
          ),
          const SizedBox(height: 16),
          buildAccountInfoSection(context, formC),
          const SizedBox(height: 12),
          buildPersonalInfoSection(context, formC, userGroup),
          const SizedBox(height: 12),
          buildStatusSection(context, profileC),
          _buildStateHandler(context, formC),
        ]),
      ),
    );
  }

  Widget _buildBottomActionBar(
      BuildContext context, UserProfileFormController c) {
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
        child: UpdateProfileButtonWidget(c: c),
      ),
    );
  }

  Widget _buildStateHandler(BuildContext context, UserProfileFormController c) {
    return Obx(() {
      final state = c.state;
      final errorMessage = c.errorMessage ?? '';

      switch (state) {
        case SubmitStateEnum.success:
          _handleSuccessState(context, c);
        case SubmitStateEnum.failure:
          _handleFailureState(context, errorMessage);
        default:
      }

      return const SizedBox.shrink();
    });
  }

  void _handleSuccessState(BuildContext context, UserProfileFormController c) {
    Future.microtask(() {
      c.resetState();
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
