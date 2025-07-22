import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/auth/presentation/widgets/widget.dart';
import 'package:mobile/features/menu/presentation/controllers/controller.dart';
import 'package:mobile/features/user/presentation/widgets/widget.dart';

class ProfileWrapperWidget extends StatelessWidget {
  const ProfileWrapperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final profileMenuCController = Get.find<ProfileMenuController>();

    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileMenuSectionWidget(
              controller: profileMenuCController,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: LogoutButtonWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
