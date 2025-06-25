import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';
import 'package:mobile/features/lab_schedule/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class ListLabScheduleWrapperWidget extends StatelessWidget {
  final LabScheduleWrapperController c;
  const ListLabScheduleWrapperWidget({super.key, required this.c});

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
                Get.toNamed(
                  AppRoute.searchLabSchedule,
                );
              },
              leading: const Icon(Icons.search),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Obx(() {
              final hasSchedules = c.hasSchedules;
              final isExpanded = c.isCalendarExpanded.value;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildCalendarContainer(context, c),
                  if (isExpanded)
                    CustomDashedLineWidget(color: context.onSurfaceVariant),
                  CustomCardItemWidget(
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                    backgroundColor: context.surface,
                    mainContent: LabSchedulePaginatedListWidget(
                      key: c.paginationKey.value,
                      isMySchedule: c.isMySchedule.value,
                      searchQuery: '',
                      tag: 'list',
                    ),
                  ),
                  if (hasSchedules) ...[
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
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
                    ),
                  ],
                ],
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildCalendarContainer(
      BuildContext context, LabScheduleWrapperController c) {
    return Container(
      decoration: BoxDecoration(
        color: context.surface,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          LabScheduleCalendarHeaderWidget(
            isCalendarExpanded: c.isCalendarExpanded.value,
            calendarFormat: c.calendarFormat.value,
            selectedDate: c.selectedDate.value,
            onToggleExpansion: () => c.toggleCalendarExpansion(),
            onFormatChanged: (format) => c.updateCalendarFormat(format),
          ),
          if (c.isCalendarExpanded.value) ...[
            SizedBox(
              height: c.calendarFormat.value == CalendarFormat.week ? 140 : 400,
              child: LabScheduleCalendarWidget(
                calendarFormat: c.calendarFormat.value,
                selectedDate: c.selectedDate.value,
                focusedDate: c.focusedDate.value,
                onFormatChanged: (format) => c.updateCalendarFormat(format),
                onDaySelected: (selectedDay, focusedDay) =>
                    c.onDaySelected(selectedDay, focusedDay),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
