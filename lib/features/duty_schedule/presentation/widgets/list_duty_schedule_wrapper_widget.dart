import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:mobile/core/enums/states/fetch_state_enum.dart';
import 'package:mobile/features/duty_schedule/presentation/controllers/duty_schedule_controller.dart';
import 'package:mobile/features/duty_schedule/presentation/widgets/duty_schedule_list_teaching_assistant_item_widget.dart';
import 'package:mobile/shared/widgets/text/error_empty_text_widget.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ListDutyScheduleWrapperWidget extends StatelessWidget {
  const ListDutyScheduleWrapperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dutyScheduleController = Get.find<DutyScheduleController>();

    return Column(
      children: [
        Obx(() {
          return TabBar(
            controller: dutyScheduleController.tabController,
            isScrollable: true,
            tabs:
                dutyScheduleController.days
                    .map((day) => Tab(text: day))
                    .toList(),
          );
        }),
        Expanded(
          child: Obx(() {
            return TabBarView(
              controller: dutyScheduleController.tabController,
              children:
                  dutyScheduleController.days.map((_) {
                    final dayKey =
                        dutyScheduleController.dayKeyMap[dutyScheduleController
                            .days[dutyScheduleController.tabController.index]
                            .toLowerCase()] ??
                        '';

                    final state =
                        dutyScheduleController
                            .fetchDutyScheduleByDaysState[dayKey] ??
                        FetchStateEnum.initial;
                    final schedules =
                        dutyScheduleController
                            .listDutyScheduleEntity
                            .value
                            ?.data ??
                        [];
                    switch (state) {
                      case FetchStateEnum.loading:
                        return Padding(
                          padding: const EdgeInsets.only(
                            left: 16,
                            right: 16,
                            bottom: 16,
                          ),
                          child: Skeletonizer(
                            child: DutyScheduleListTeachingAssistantItemWidget(
                              schedules: schedules,
                            ),
                          ),
                        );
                      case FetchStateEnum.error:
                        return Center(
                          child: Text(
                            dutyScheduleController.errorMessage.value,
                          ),
                        );
                      case FetchStateEnum.empty:
                        return errorEmptyTextWidget(
                          context,
                          message: 'features.home.dutySchedule.empty'.tr(),
                        );
                      case FetchStateEnum.loaded:
                        return Padding(
                          padding: const EdgeInsets.only(
                            left: 16,
                            right: 16,
                            bottom: 16,
                          ),
                          child: DutyScheduleListTeachingAssistantItemWidget(
                            schedules: schedules,
                          ),
                        );
                      default:
                        return const SizedBox.shrink();
                    }
                  }).toList(),
            );
          }),
        ),
      ],
    );
  }
}
