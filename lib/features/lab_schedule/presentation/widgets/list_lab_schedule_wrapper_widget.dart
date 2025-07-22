import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';
import 'package:mobile/features/lab_schedule/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class ListLabScheduleWrapperWidget extends StatelessWidget {
  final LabScheduleWrapperController controller;
  const ListLabScheduleWrapperWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate.fixed(
        [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: CustomSearchNavigationWidget(
              hintText: 'labSchedule'.message('searchPlaceholder'),
              onTap: () {
                Get.toNamed(AppRoute.searchLabSchedule);
              },
              leading: const Icon(Icons.search),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Obx(() {
              final hasSchedules = controller.hasSchedules;
              final isLoadingMore = controller.isLoadingMore.value;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LabScheduleCalendarSection(
                    controller: controller,
                  ),
                  CustomCardItemWidget(
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                    backgroundColor: context.surface,
                    mainContent: customFetchStateHandler(
                      context: context,
                      state: controller.state,
                      feature: 'labSchedule',
                      customIcon: Icons.calendar_today_outlined,
                      customErrorMessage: controller.stateDescription,
                      customTitle: controller.isMySchedule.value
                          ? 'labSchedule'.message('myScheduleEmpty')
                          : 'labSchedule'.message('allScheduleEmpty'),
                      customLoadingTitle: controller.isMySchedule.value
                          ? 'labSchedule'.message('loadingMySchedule')
                          : 'labSchedule'.message('loadingAllSchedule'),
                      onSuccess: () => Column(
                        children: [
                          LabScheduleListItemWidget(
                            schedules: controller.items.cast(),
                            isShowDate: true,
                            isShowDuration: true,
                          ),
                          if (isLoadingMore)
                            const Center(
                              child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: CustomPrimaryLoadingWidget()),
                            ),
                        ],
                      ),
                    ),
                  ),
                  if (hasSchedules) ...[
                    _buildLegend(context),
                  ],
                ],
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildLegend(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: context.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Wrap(
        spacing: 16,
        runSpacing: 8,
        children: [
          customLegendWidget(
            context,
            color: context.tertiary,
            label: 'labSchedule'.message('legend.ongoing'),
          ),
          customLegendWidget(
            context,
            color: context.primary,
            label: 'labSchedule'.message('legend.upcoming'),
          ),
          customLegendWidget(
            context,
            color: context.onSurface,
            label: 'labSchedule'.message('legend.finished'),
          ),
        ],
      ),
    );
  }
}
