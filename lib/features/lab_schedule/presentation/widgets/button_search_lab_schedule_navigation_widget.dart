import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/core.dart';
import 'package:mobile/shared/shared.dart';

class ButtonSearchLabScheduleNavigationWidget extends StatelessWidget {
  const ButtonSearchLabScheduleNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final color = context.surface;
    return CustomButtonSearchNavigationWidget(
      borderColor: color,
      onTap: () {
        Get.toNamed(AppRoute.searchLabSchedule);
      },
      leadingIcon: customImageIconWidget(
        imagePath: IconConstant.searchOutlineIcon,
      ),
      backgroundColor: color,
    );
  }
}
