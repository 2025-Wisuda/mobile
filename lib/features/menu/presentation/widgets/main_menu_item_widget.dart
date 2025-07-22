import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/duty/presentation/_helpers/duty_schedule_helpers.dart';
import 'package:mobile/shared/extensions/extension.dart';

class MainMenuItemWidget extends StatelessWidget {
  final Widget iconMenu;
  final String nameMenu;
  final String routeName;
  final Color? backgroundColor;
  final VoidCallback? onTap;

  const MainMenuItemWidget({
    super.key,
    required this.iconMenu,
    required this.nameMenu,
    required this.routeName,
    this.backgroundColor,
    this.onTap,
  });

  void _navigateToRoute(BuildContext context, String routeName) {
    switch (routeName) {
      case '/duty-schedules':
        Get.toNamed(AppRoute.dutySchedule);
        break;
      case '/courses/me':
        Get.toNamed(AppRoute.myCourses);
        break;
      case '/assistant-attendance':
        DutyScheduleHelpers.handleAttendanceNavigation(context);
        break;
      // case '/practicum-attendance':
      //   Get.toNamed('/practicum-attendance');
      //   break;
      case '/guest-visit':
        Get.toNamed(AppRoute.guestVisit);
        break;
      default:
        debugPrint('Route not implemented: $routeName');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 76,
      height: 110,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 8,
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: backgroundColor ?? context.primary,
              borderRadius: BorderRadius.circular(36),
            ),
            child: Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(36),
              child: InkWell(
                borderRadius: BorderRadius.circular(36),
                onTap: () {
                  _navigateToRoute(context, routeName);
                  onTap?.call();
                },
                child: Center(child: iconMenu),
              ),
            ),
          ),
          Text(
            nameMenu,
            style: context.bodyMediumW(500).copyWith(
                  color: context.onSurfaceVariant,
                ),
            textAlign: TextAlign.center,
            overflow: TextOverflow.visible,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
