// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/duty_schedule/presentation/controllers/controller.dart';
import 'package:mobile/shared/widgets/widget.dart';

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

      titleAppBar: i18n.tr('features.menu.dutySchedule'),
    );
  }
}
