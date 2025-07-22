import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/features/user/presentation/controllers/controller.dart';
import 'package:mobile/features/user/presentation/widgets/widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomRefreshWrapperWidget(
        onRefresh: () async {
          await Get.find<UserProfileController>().refreshUserProfile();
        },
        child: CustomScrollView(
          slivers: [
            _buildAppBar(context),
            const ProfileWrapperWidget(),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    final controller = Get.find<UserProfileController>();
    return Obx(() {
      final user = controller.userProfile;
      final userFullName = user?.fullNameOrUsername;
      final group = user?.groupStr;
      final avatar = user?.avatarStr;
      final groupEnum = group.toGroupEnum();
      final identity = (groupEnum == GroupEnum.laboratoryAssistant ||
              groupEnum == GroupEnum.student)
          ? user?.studentIdStr
          : user?.employeeIdStr;
      return SliverAppBar(
        expandedHeight: 190.0,
        floating: false,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          collapseMode: CollapseMode.pin,
          expandedTitleScale: 1.2,
          title: SafeArea(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                final isCollapsed = constraints.maxHeight < 160;
                return isCollapsed
                    ? Text(
                        userFullName ?? '',
                        style: context.bodyMediumW(600),
                        overflow: TextOverflow.ellipsis,
                      )
                    : Column(
                        mainAxisSize: MainAxisSize.min,
                        spacing: 4,
                        children: [
                          CustomProfilePictureWidget(
                            imageUrl: avatar ?? '',
                            radiusImage: 72,
                            firstName: user?.firstNameStr ?? '',
                            lastName: user?.lastNameStr ?? '',
                            username: user?.usernameStr ?? '',
                          ),
                          Text(
                            userFullName ?? '',
                            style: context.bodyMediumW(500),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            identity ?? '',
                            style: context
                                .bodySmall()
                                .copyWith(color: context.onSurfaceVariant),
                          ),
                        ],
                      );
              },
            ),
          ),
        ),
      );
    });
  }
}
