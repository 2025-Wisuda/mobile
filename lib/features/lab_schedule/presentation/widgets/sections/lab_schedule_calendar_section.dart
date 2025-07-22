import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/widgets/widget.dart';

class LabScheduleCalendarSection extends StatelessWidget {
  final LabScheduleWrapperController controller;
  const LabScheduleCalendarSection({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return CustomCardItemWidget(
      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      showBorder: true,
      mainContent: Column(
        children: [
          _buildHeader(context),
          Obx(() {
            final isCalendarExpanded = controller.isCalendarExpanded.value;
            final calendarFormat = controller.calendarFormat.value;
            final selectedDate = controller.selectedDate.value;
            final focusedDate = controller.focusedDate.value;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (isCalendarExpanded) ...[
                  SizedBox(
                    height: calendarFormat == CalendarFormat.week ? 130 : 340,
                    child: CustomCalendarSelectionWidget(
                      calendarFormat: calendarFormat,
                      selectedDate: selectedDate,
                      focusedDate: focusedDate,
                      onFormatChanged: (format) =>
                          controller.updateCalendarFormat(format),
                      onDaySelected: (selectedDay, focusedDay) =>
                          controller.onDaySelected(selectedDay, focusedDay),
                    ),
                  ),
                ],
              ],
            );
          })
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: controller.isCalendarExpanded.value
                      ? Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _buildFormatButton(
                              context,
                              label: 'Week',
                              format: CalendarFormat.week,
                              isSelected: controller.calendarFormat.value ==
                                  CalendarFormat.week,
                              onTap: () => controller
                                  .updateCalendarFormat(CalendarFormat.week),
                            ),
                            const SizedBox(width: 8),
                            _buildFormatButton(
                              context,
                              label: 'Month',
                              format: CalendarFormat.month,
                              isSelected: controller.calendarFormat.value ==
                                  CalendarFormat.month,
                              onTap: () => controller
                                  .updateCalendarFormat(CalendarFormat.month),
                            ),
                          ],
                        )
                      : Text(
                          DateHelper.formatFullDate(
                              date: controller.selectedDate.value),
                          style: context.bodyLargeW(500),
                        ),
                ),
                IconButton(
                  onPressed: controller.toggleCalendarExpansion,
                  icon: Icon(
                    controller.isCalendarExpanded.value
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    color: context.onSurface,
                  ),
                ),
              ],
            )));
  }

  Widget _buildFormatButton(
    BuildContext context, {
    required String label,
    required CalendarFormat format,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected ? context.primary : context.surface,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: context.outline.withValues(alpha: 0.3)),
        ),
        child: Text(
          label,
          style: context.bodySmallW(500).copyWith(
                color: isSelected ? context.onPrimary : context.onSurface,
              ),
        ),
      ),
    );
  }
}
