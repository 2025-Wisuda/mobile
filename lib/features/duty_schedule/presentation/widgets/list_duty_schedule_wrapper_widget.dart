// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get.dart';
import 'package:skeletonizer/skeletonizer.dart';

// Project imports:
import 'package:mobile/core/enums/states/fetch_state_enum.dart';
import 'package:mobile/features/duty_schedule/presentation/controllers/controller.dart';
import 'package:mobile/features/duty_schedule/presentation/widgets/widget.dart';
import 'package:mobile/shared/helpers/extensions/extension.dart';
import 'package:mobile/shared/widgets/text/text.dart';

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

                    final errorMessage =
                        dutyScheduleController.errorMessage.value;
                    final emptyMessage = i18n.tr(
                      'features.home.dutySchedule.empty',
                    );
                    final loadedWidget = Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                        bottom: 16,
                      ),
                      child: DutyScheduleListTeachingAssistantItemWidget(
                        schedules: schedules,
                      ),
                    );
                    final loadingWidget = Padding(
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
                    final emptyWidget = errorEmptyTextWidget(
                      context,
                      message: emptyMessage,
                    );
                    final errorWidget = Center(child: Text(errorMessage));
                    return state.toWidget(
                      loadingWidget: loadingWidget,
                      loadedWidget: loadedWidget,
                      emptyWidget: emptyWidget,
                      errorWidget: errorWidget,
                      initialWidget: loadingWidget,
                    );
                  }).toList(),
            );
          }),
        ),
      ],
    );
  }
}
