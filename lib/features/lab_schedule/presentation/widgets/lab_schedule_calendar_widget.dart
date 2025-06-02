// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

// Project imports:
import 'package:mobile/features/lab_schedule/data/models/lab_schedule_filter_params_model.dart';
import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';
import 'package:mobile/shared/helpers/extensions/extension.dart';

class LabScheduleCalendarWidget extends StatelessWidget {
  const LabScheduleCalendarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final labController = Get.find<LabScheduleController>();
    final todayDate = DateTime.now();
    final sixMonthsLater = todayDate.add(const Duration(days: 180));
    final state = labController.fetchListLabScheduleState;
    final firstDay = todayDate.subtract(Duration(days: todayDate.day - 1));

    return Obx(
      () => TableCalendar(
        locale: 'id_ID',
        firstDay: firstDay,
        lastDay: sixMonthsLater,
        focusedDay: labController.focusedDate.value,
        selectedDayPredicate:
            (day) => isSameDay(labController.selectedDate.value, day),
        onDaySelected: (selectedDay, focusedDay) {
          labController.selectedDate.value = selectedDay;
          labController.focusedDate.value = focusedDay;
          labController.fetchListLabSchedule(
            scheduleFilterParamsModel: LabScheduleFilterParamsModel(
              page: 1,
              pageSize: 10,
              scheduleDate: DateFormat('yyyy-MM-dd').format(selectedDay),
            ),
            stateTarget: state,
          );
        },
        calendarStyle: CalendarStyle(
          todayDecoration: BoxDecoration(
            color: context.primaryContainer,
            shape: BoxShape.circle,
          ),
          todayTextStyle: context.bodyMediumW(600),
          selectedDecoration: BoxDecoration(
            color: context.primary,
            shape: BoxShape.circle,
          ),
          selectedTextStyle: context
              .bodyMediumW(600)
              .copyWith(color: context.onPrimary),
          defaultTextStyle: context.bodyMediumW(500),
          weekendTextStyle: context.bodyMediumW(500),
        ),
        headerStyle: HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
          titleTextStyle: context.bodyLargeW(500),
        ),
        weekendDays: const [DateTime.saturday, DateTime.sunday],
        startingDayOfWeek: StartingDayOfWeek.monday,
      ),
    );
  }
}
