// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/core/core.dart';
import 'package:mobile/features/general/home/presentation/controllers/controller.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/features/user/presentation/controllers/controller.dart';
import 'package:mobile/shared/helpers/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final userController = Get.find<UserController>();
    final homeController = Get.find<HomeController>();

    return Obx(() {
      final user = userController.userEntity.value;
      final firstName = user?.firstNameStr;
      final lastName = user?.lastNameStr;
      final fullName = user?.fullNameStr;
      final avatar = user?.avatarStr;
      final username = user?.usernameStr;

      return SliverAppBar(
        expandedHeight: 70,
        floating: false,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
          background: SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 16),
                Row(
                  spacing: 8,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: CustomProfilePictureImageWidget(
                        imageUrl: avatar ?? '',
                        radiusImage: 52,
                        firstName: firstName ?? '',
                        lastName: lastName ?? '',
                        username: username ?? '',
                      ),
                    ),
                    Column(
                      spacing: 2,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          i18n.tr(homeController.greetingKey),
                          style: context.bodyMediumW(500),
                        ),
                        Text(
                          user?.firstName != null
                              ? (fullName ?? '')
                              : (username ??
                                  i18n.tr('features.user.form.label.username')),
                          style: context.bodySmallW(500),
                        ),
                      ],
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: customImageIconWidget(
                        imagePath: IconConstant.bellOutlineIcon,
                      ),
                    ),
                  ],
                ).px(24),
              ],
            ),
          ),
        ),
      );
    });
  }
}
