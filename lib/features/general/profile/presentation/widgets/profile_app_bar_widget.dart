// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/user/domain/domain.dart';
import 'package:mobile/features/user/presentation/controllers/user_controller.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/widgets/image/custom_profile_picture_image_widget.dart';

class ProfileAppBarWidget extends StatelessWidget {
  const ProfileAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final userController = Get.find<UserController>();

    return Obx(() {
      final user = userController.userEntity.value;
      final group = userController.userGroup.value;
      final firstName = user?.firstNameStr;
      final lastName = user?.lastNameStr;
      final fullName = user?.fullNameStr;
      final avatar = user?.avatarStr;
      final identity =
          group.toLowerCase() == 'mahasiswa' ||
                  group.toLowerCase() == 'asisten laboratorium'
              ? user?.studentIdStr
              : user?.employeeIdStr;
      final username = user?.usernameStr;

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
                      user?.firstName != null
                          ? (fullName ?? '')
                          : (username ??
                              i18n.tr('features.user.form.label.username')),
                      style: context.bodyMediumW(600),
                      overflow: TextOverflow.ellipsis,
                    )
                    : Column(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 4,
                      children: [
                        CustomProfilePictureImageWidget(
                          imageUrl: avatar ?? '',
                          radiusImage: 72,
                          firstName: firstName ?? '',
                          lastName: lastName ?? '',
                          username: user?.usernameStr ?? '',
                        ),
                        Text(
                          user?.firstName != null
                              ? (fullName ?? '')
                              : (username ??
                                  i18n.tr('features.user.form.label.username')),
                          style: context.bodySmallW(600),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          identity ?? '',
                          style: context
                              .labelSmallW(500)
                              .copyWith(color: context.scrim),
                        ),
                      ],
                    ).pt(32);
              },
            ),
          ),
        ),
      );
    });
  }
}
