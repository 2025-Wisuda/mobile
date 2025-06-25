import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';
import 'package:mobile/features/lab_schedule/presentation/widgets/widget.dart';
import 'package:mobile/features/room_booking/presentation/helpers/room_booking_navigation_helper.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/utils/util.dart';
import 'package:mobile/shared/widgets/widget.dart';

class RoomBookingWrapperWidget extends StatefulWidget {
  const RoomBookingWrapperWidget({super.key});

  @override
  State<RoomBookingWrapperWidget> createState() =>
      _RoomBookingWrapperWidgetState();
}

class _RoomBookingWrapperWidgetState extends State<RoomBookingWrapperWidget> {
  late final LabTimeSlotSelectionController timeSlotController;
  final calendarFormat = CalendarFormat.week.obs;

  @override
  void initState() {
    super.initState();
    timeSlotController = Get.put(
      LabTimeSlotSelectionController(
        availabilityControllerTag: 'room_booking_availability',
      ),
      tag: 'room_booking_time_slot',
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(8),
      child: Column(
        spacing: 8,
        children: [
          _buildDateSelectionSection(context),
          CustomCardItemWidget(
            backgroundColor: context.surface,
            padding: const EdgeInsets.all(8),
            mainContent: LabTimeSlotSelectionWidget(
              c: timeSlotController,
              feature: 'roomBooking',
              instructionMessage:
                  'roomBooking'.message('selectTimeInstruction'),
              showSelectedRange: true,
              onTimeSlotSelected: (time) {
                if (timeSlotController.canContinue) {
                  Future.delayed(const Duration(milliseconds: 500), () {
                    if (context.mounted) {
                      _navigateToCreateForm();
                    }
                  });
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDateSelectionSection(BuildContext context) {
    return CustomCardItemWidget(
      backgroundColor: context.surface,
      padding: const EdgeInsets.all(8),
      mainContent: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => LabScheduleCalendarWidget(
              calendarFormat: calendarFormat.value,
              selectedDate: timeSlotController.selectedDate.value,
              focusedDate: timeSlotController.selectedDate.value,
              showAllDays: false,
              isDateAvailable: (date) {
                final now = DateTime.now();
                final today = DateTime(now.year, now.month, now.day);
                return !date.isBefore(today);
              },
              onFormatChanged: (format) => calendarFormat.value = format,
              onDaySelected: (selectedDay, focusedDay) {
                timeSlotController.updateSelectedDate(selectedDay);
              },
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToCreateForm() {
    final selectedStart = timeSlotController.selectedStartTime.value;
    final selectedEnd = timeSlotController.selectedEndTime.value;

    if (selectedStart == null || selectedEnd == null) {
      showCustomSnackbar(
        message: i18n.tr('roomBooking.error.selectBothTimes'),
        type: SnackbarType.warning,
        showOnTop: true,
      );
      return;
    }

    if (!timeSlotController.isTimeSlotValid(selectedStart, selectedEnd)) {
      final conflictMessage =
          timeSlotController.getConflictMessage(selectedStart, selectedEnd);

      showCustomSnackbar(
        message: conflictMessage,
        type: SnackbarType.warning,
        showOnTop: true,
      );
      return;
    }

    showCustomBottomSheetConfirmation(
      context: context,
      title: 'roomBooking'.message('confirm'),
      message: 'roomBooking'.message('confirmation.message'),
      confirmText: 'roomBooking'.message('confirmation.confirm'),
      type: BottomSheetType.info,
      onConfirm: () {
        Get.back();
        final arguments = timeSlotController.getTimeSelectionArguments();
        RoomBookingNavigationHelper.handleTimeSlotNavigation(
          context,
          selectedDate: arguments['selectedDate'] ?? '',
          startTime: arguments['startTime'] ?? '',
          endTime: arguments['endTime'] ?? '',
        );
      },
      onCancel: () {
        timeSlotController.reset();
        Get.back();
      },
    );
  }
}
