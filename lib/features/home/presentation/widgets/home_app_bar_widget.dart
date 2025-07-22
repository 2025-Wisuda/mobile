import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/core/constants/constant.dart';
import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/menu/presentation/controllers/controller.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/features/user/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class HomeAppBarWidget extends GetView<UserProfileController> {
  const HomeAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final user = controller.userProfile;

      return SliverAppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 76,
        floating: false,
        pinned: false,
        title: SafeArea(
          child: Row(
            spacing: 8,
            children: [
              CustomProfilePictureWidget(
                onTap: () => Get.find<NavigationController>().changeIndex(3),
                imageUrl: user?.avatar ?? '',
                radiusImage: 52,
                firstName: user?.firstName ?? '',
                lastName: user?.lastName ?? '',
                username: user?.username ?? '',
              ),
              Column(
                spacing: 2,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    i18n.tr(_getGreetingKey()),
                    style: context.bodyMediumW(500),
                  ),
                  Text(
                    _getUserDisplayName(user),
                    style: context.bodySmallW(500),
                  ),
                ],
              ),
              const Spacer(),
              NotificationBadgeWidget(
                onTap: () => Get.toNamed(AppRoute.notificationList),
                imagePath: IconConstant.bellOutlineIcon,
              ),
            ],
          ),
        ),
      );
    });
  }

  String _getUserDisplayName(UserEntity? user) {
    final firstName = user?.firstName;
    final lastName = user?.lastName;
    final fullName = '${firstName ?? ''} ${lastName ?? ''}'.trim();

    if (fullName.isNotEmpty) {
      return fullName;
    }

    return user?.username ?? 'user'.label('username');
  }

  String _getGreetingKey() {
    final hour = DateTime.now().hour;

    if (hour >= 5 && hour < 11) {
      return 'features.home.appBar.greeting.morning';
    } else if (hour >= 11 && hour < 15) {
      return 'features.home.appBar.greeting.afternoon';
    } else if (hour >= 15 && hour < 18) {
      return 'features.home.appBar.greeting.evening';
    } else {
      return 'features.home.appBar.greeting.night';
    }
  }
}
