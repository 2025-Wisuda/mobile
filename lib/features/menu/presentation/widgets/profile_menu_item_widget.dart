import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/routes/route.dart';
import 'package:mobile/shared/extensions/extension.dart';

class ProfileMenuItemWidget extends StatelessWidget {
  final Widget iconMenu;
  final String nameMenu;
  final String routeName;
  final Color? backgroundColor;

  const ProfileMenuItemWidget({
    super.key,
    required this.iconMenu,
    required this.nameMenu,
    required this.routeName,
    this.backgroundColor,
  });

  void _navigateToRoute(String routeName) {
    switch (routeName) {
      case '/about-us':
        Get.toNamed(AppRoute.aboutUs);
        break;
      case '/profile':
        Get.toNamed(AppRoute.updateProfile);
        break;
      case '/change-password':
        Get.toNamed(AppRoute.changePassword);
        break;
      default:
        debugPrint('Route not implemented: $routeName');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          _navigateToRoute(routeName);
        },
        borderRadius: BorderRadius.circular(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 8,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: iconMenu,
            ),
            Text(
              nameMenu,
              style: context.labelLarge(),
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            const Spacer(),
            Icon(
              Icons.chevron_right,
              size: 20,
              color: context.onSurfaceVariant,
            ),
          ],
        ),
      ),
    );
  }
}
