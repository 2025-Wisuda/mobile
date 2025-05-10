import 'package:flutter/material.dart';
import 'package:mobile/features/lab_schedule/data/models/lab_schedule_filter_params_model.dart';
import 'package:mobile/features/lab_schedule/presentation/controllers/lab_schedule_controller.dart';
import 'package:get/get.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:mobile/shared/helpers/context_extension_helper.dart';
import 'package:table_calendar/table_calendar.dart';

class LabScheduleCalendarWidget extends StatelessWidget {
  const LabScheduleCalendarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<LabScheduleController>();
    final todayDate = DateTime.now();
    final sixMonthsLater = todayDate.add(const Duration(days: 180));

    return Obx(
      () => TableCalendar(
        locale: 'id_ID',
        firstDay: todayDate,
        lastDay: sixMonthsLater,
        focusedDay: controller.focusedDate.value,
        selectedDayPredicate:
            (day) => isSameDay(controller.selectedDate.value, day),
        onDaySelected: (selectedDay, focusedDay) {
          controller.selectedDate.value = selectedDay;
          controller.focusedDate.value = focusedDay;

          controller.fetchListLabSchedule(
            scheduleFilterParamsModel: LabScheduleFilterParamsModel(
              page: 1,
              pageSize: 10,
              scheduleDate: DateFormat('yyyy-MM-dd').format(selectedDay),
            ),
            stateTarget: controller.fetchListLabScheduleState,
          );
        },
        calendarStyle: CalendarStyle(
          todayDecoration: BoxDecoration(
            color: context.color.primaryContainer,
            shape: BoxShape.circle,
          ),
          todayTextStyle: TextStyle(
            color: context.color.onSurface,
            fontWeight: FontWeight.bold,
          ),
          selectedDecoration: BoxDecoration(
            color: context.color.primary,
            shape: BoxShape.circle,
          ),
          selectedTextStyle: context.text.bodyMedium!.copyWith(
            color: context.color.surface,
            fontWeight: FontWeight.w600,
          ),
          defaultTextStyle: context.text.bodyMedium!.copyWith(
            color: context.color.onSurface,
          ),
          weekendTextStyle: context.text.bodyMedium!.copyWith(
            color: context.color.onSurface,
          ),
        ),
        headerStyle: HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
          titleTextStyle: context.text.bodyLarge!,
          // decoration: BoxDecoration(

          //   border: Border(bottom: BorderSide(
          //     color: context.color.outline,
          //     width: 1,
          //   )),
          // ),
          // headerMargin: const EdgeInsets.only(bottom: 16),
        ),

        weekendDays: const [DateTime.saturday, DateTime.sunday],
        startingDayOfWeek: StartingDayOfWeek.monday,
      ),
    );
  }
}
