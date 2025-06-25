import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/auth/presentation/widgets/widget.dart';
import 'package:mobile/features/menu/presentation/controllers/controller.dart';
import 'package:mobile/features/user/presentation/controllers/controller.dart';
import 'package:mobile/features/user/presentation/widgets/widget.dart';
import 'package:mobile/shared/widgets/widget.dart';

class ProfileWrapperWidget extends StatelessWidget {
  const ProfileWrapperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final userProfileController = Get.find<UserProfileController>();
    final profileMenuCController = Get.find<ProfileMenuController>();

    return Scaffold(
      body: CustomRefreshWrapperWidget(
        onRefresh: () async {
          await userProfileController.refreshUserProfile();
        },
        child: CustomScrollView(
          slivers: [
            ProfileAppBarWidget(c: userProfileController),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProfileMenuSectionWidget(
                      c: profileMenuCController,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: LogoutButtonWidget(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
