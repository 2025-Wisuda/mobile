import 'package:easy_localization/easy_localization.dart'
    show StringTranslateExtension;
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:mobile/features/user/domain/domain.dart';
import 'package:mobile/features/user/presentation/controllers/user_controller.dart';
import 'package:mobile/shared/widgets/image/custom_profile_picture_image_widget.dart';
import 'package:get/get_instance/get_instance.dart';

class ProfileAppBarWidget extends StatelessWidget {
  const ProfileAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final userController = Get.find<UserController>();

    return Obx(() {
      final user = userController.userEntity.value;
      final group = userController.userGroup.value;
      final String? firstName = user?.firstNameStr;
      final String? lastName = user?.lastNameStr;
      final String fullName =
          (firstName?.isNotEmpty == true || lastName?.isNotEmpty == true)
              ? '$firstName $lastName'
              : 'features.user.form.label.fullName'.tr();
      final String? avatarUrl = user?.avatarStr;
      final String? identity =
          group.toLowerCase() == 'mahasiswa'
              ? user?.studentIdStr
              : user?.employeeIdStr;

      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomProfilePictureImageWidget(
              imageUrl: avatarUrl ?? '',
              heightImage: 60,
              widthImage: 60,
              radiusImage: 60,
            ),
            const SizedBox(height: 8),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  fullName,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  identity ?? '',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.scrim,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
