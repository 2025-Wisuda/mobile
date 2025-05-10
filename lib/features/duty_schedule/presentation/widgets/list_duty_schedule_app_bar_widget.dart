import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mobile/features/duty_schedule/presentation/controllers/duty_schedule_controller.dart';
import 'package:mobile/shared/widgets/app_bar/custom_app_bar_widget.dart';

class ListDutyScheduleAppBarWidget extends StatelessWidget {
  const ListDutyScheduleAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dutyScheduleController = Get.find<DutyScheduleController>();

    return CustomUserAppBarWidget(
      onTapBackButton: () {
        Get.back();
        dutyScheduleController.tabController.index = 0;
        dutyScheduleController.fetchByTabIndex(0);
      },

      titleAppBar: 'features.menu.dutySchedule'.tr(),
    );
  }
}
