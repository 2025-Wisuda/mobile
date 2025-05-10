import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mobile/core/core.dart';
import 'package:mobile/features/general/home/presentation/controllers/home_controller.dart';
import 'package:mobile/shared/helpers/context_extension_helper.dart';
import 'package:mobile/shared/widgets/icon/custom_image_icon_widget.dart';
import 'package:mobile/shared/widgets/image/custom_profile_picture_image_widget.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:mobile/features/user/domain/domain.dart';
import 'package:mobile/features/user/presentation/controllers/user_controller.dart';
import 'package:get/get_instance/get_instance.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final userController = Get.find<UserController>();
    final homeController = Get.find<HomeController>();

    return Obx(() {
      final user = userController.userEntity.value;
      final String? firstName = user?.firstNameStr;
      final String? lastName = user?.lastNameStr;
      final String fullName =
          (firstName?.isNotEmpty == true || lastName?.isNotEmpty == true)
              ? '$firstName $lastName'
              : 'features.user.form.label.fullName'.tr();
      final String? avatarUrl = user?.avatarStr;

      return SafeArea(
        child: Row(
          spacing: 8,
          children: [
            InkWell(
              onTap: () {},
              child: CustomProfilePictureImageWidget(
                imageUrl: avatarUrl ?? '',
                radiusImage: 52,
                firstName: firstName ?? '',
                lastName: lastName ?? '',
                username: user?.usernameStr ?? '',
              ),
            ),
            Column(
              spacing: 2,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  homeController.greetingKey.tr(),
                  style: context.text.bodySmall!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  user?.firstName != null
                      ? fullName
                      : user?.usernameStr ??
                          'features.user.form.label.fullName'.tr(),
                  style: context.text.bodySmall!.copyWith(),
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
        ),
      );
    });
  }
}
