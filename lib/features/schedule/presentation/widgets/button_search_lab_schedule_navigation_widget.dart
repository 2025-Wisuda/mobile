import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mobile/core/constants/icon_constant.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/routes/app_route.dart';
import 'package:mobile/shared/widgets/button/custom_button_search_navigation_widget.dart';
import 'package:mobile/shared/widgets/icon/custom_image_icon_widget.dart';

class ButtonSearchLabScheduleNavigationWidget extends StatelessWidget {
  const ButtonSearchLabScheduleNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButtonSearchNavigationWidget(
      borderColor: context.color.surface,
      onTap: () {
        Get.toNamed(AppRoute.searchLabSchedule);
      },
      leadingIcon: customImageIconWidget(
        imagePath: IconConstant.searchOutlineIcon,
      ),
      backgroundColor: context.color.surface,
    );
  }
}
