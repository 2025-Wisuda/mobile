import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mobile/core/core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:mobile/features/duty_schedule/data/models/duty_schedule_filter_params_model.dart';
import 'package:mobile/features/duty_schedule/presentation/controllers/duty_schedule_controller.dart';
import 'package:mobile/features/duty_schedule/presentation/widgets/duty_schedule_list_teaching_assistant_item_widget.dart';
import 'package:mobile/shared/shared.dart';
import 'package:mobile/shared/widgets/text/error_empty_text_widget.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomeDutyScheduleSectionWidget extends StatelessWidget {
  const HomeDutyScheduleSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return _dutyScheduleList(context);
  }

  Widget _dutyScheduleList(BuildContext context) {
    final dutyScheduleController = Get.find<DutyScheduleController>();
    final dayKey = DateHelper.getCurrentEnglishDay().toLowerCase();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      dutyScheduleController.fetchDutySchedule(
        targetDayKey: dayKey,
        scheduleFilterParamsModel: DutyScheduleFilterParamsModel(
          page: 1,
          pageSize: 10,
          days: dayKey,
        ),
      );
    });

    return Obx(() {
      final state =
          dutyScheduleController.fetchDutyScheduleByDaysState[dayKey] ??
          FetchStateEnum.initial;
      final schedules =
          dutyScheduleController.listDutyScheduleEntity.value?.data ?? [];

      switch (state) {
        case FetchStateEnum.loading:
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _dutyScheduleHeader(context),
              Skeletonizer(
                child: DutyScheduleListTeachingAssistantItemWidget(
                  schedules: schedules,
                ),
              ),
            ],
          );
        case FetchStateEnum.loaded:
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _dutyScheduleHeader(context),
              DutyScheduleListTeachingAssistantItemWidget(schedules: schedules),
            ],
          );
        case FetchStateEnum.empty:
          return Column(
            children: [
              errorEmptyTextWidget(
                context,
                message: 'features.home.dutySchedule.empty'.tr(),
              ),
              TextButton(
                onPressed: () {
                  Get.toNamed(AppRoute.dutySchedule);
                },
                child: Text(
                  'features.home.dutySchedule.seeScheduleOtherDay'.tr(),
                  style: context.text.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: context.color.primary,
                  ),
                ),
              ),
            ],
          );
        case FetchStateEnum.error:
          return errorEmptyTextWidget(
            context,
            message: dutyScheduleController.errorMessage.value,
          );
        default:
          return const SizedBox.shrink();
      }
    });
  }

  Widget _dutyScheduleHeader(BuildContext context) {
    return Text(
      'features.home.dutySchedule.title'.tr(),
      style: context.text.bodyMedium!.copyWith(fontWeight: FontWeight.w600),
    );
  }
}
