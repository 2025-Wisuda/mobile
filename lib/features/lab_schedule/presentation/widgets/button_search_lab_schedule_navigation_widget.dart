// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

// Project imports:
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
