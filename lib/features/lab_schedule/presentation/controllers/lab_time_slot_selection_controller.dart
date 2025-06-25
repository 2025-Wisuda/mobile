import 'package:get/get.dart';
import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/helpers/time_slot_helper.dart';
import 'package:mobile/shared/mixins/validator_mixin.dart';
import 'package:mobile/shared/widgets/widget.dart';

class LabTimeSlotSelectionController extends GetxController
    with ValidatorMixin {
  final String availabilityControllerTag;

  LabTimeSlotSelectionController({
    this.availabilityControllerTag = 'default_availability',
  });

  final selectedDate = DateTime.now().obs;
  final selectedStartTime = Rxn<String>();
  final selectedEndTime = Rxn<String>();
  String? _lastFetchedDate;

  LabAvailabilityController get labAvailabilityC =>
      Get.find<LabAvailabilityController>(tag: availabilityControllerTag);

  bool get canContinue =>
      selectedStartTime.value != null && selectedEndTime.value != null;

  bool get hasSelection =>
      selectedStartTime.value != null || selectedEndTime.value != null;

  void updateSelectedDate(DateTime date) {
    selectedDate.value = date;
    selectedStartTime.value = null;
    selectedEndTime.value = null;
    fetchAvailability(date);
  }

  void fetchAvailability(DateTime date) {
    final formattedDate = DateHelper.formatIsoDate(date: date);
    labAvailabilityC.fetchAvailability(formattedDate);
  }

  bool shouldFetchAvailability() {
    final formattedDate = DateHelper.formatIsoDate(date: selectedDate.value);
    if (_lastFetchedDate != formattedDate) {
      _lastFetchedDate = formattedDate;
      return true;
    }
    return false;
  }

  List<TimeSlotData> generateTimeSlots(availabilitySlots) {
    final List<TimeSlotData> slots = [];
    final availableTimeSlots =
        TimeSlotHelper.generateTimeSlots(availabilitySlots);

    for (int hour = 7; hour < 18; hour++) {
      for (int minute = (hour == 7 ? 30 : 0); minute < 60; minute += 30) {
        final timeString =
            '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';

        TimeSlotStatus status =
            getTimeSlotStatus(timeString, availableTimeSlots);

        slots.add(TimeSlotData(
          time: timeString,
          status: status,
          tooltip: status.getTooltip(timeString),
        ));
      }
    }

    return slots;
  }

  TimeSlotStatus getTimeSlotStatus(
      String timeString, List<String> availableTimeSlots) {
    if (!availableTimeSlots.contains(timeString)) {
      final now = DateTime.now();
      final selectedDateTime = DateTime.parse(
          '${DateHelper.formatIsoDate(date: selectedDate.value)} $timeString:00');

      if (selectedDateTime.isBefore(now)) {
        return TimeSlotStatus.disabled;
      }

      return TimeSlotStatus.booked;
    }

    return TimeSlotStatus.available;
  }

  void handleTimeSlotTap(String time) {
    if (selectedStartTime.value == null && selectedEndTime.value == null) {
      selectedStartTime.value = time;
    } else if (selectedStartTime.value != null &&
        selectedEndTime.value == null) {
      final startMinutes =
          TimeSlotHelper.timeToMinutes(selectedStartTime.value!);
      final currentMinutes = TimeSlotHelper.timeToMinutes(time);

      if (currentMinutes > startMinutes) {
        selectedEndTime.value = time;
      } else if (currentMinutes < startMinutes) {
        selectedEndTime.value = selectedStartTime.value;
        selectedStartTime.value = time;
      } else {
        selectedStartTime.value = null;
        selectedEndTime.value = null;
      }
    } else {
      selectedStartTime.value = time;
      selectedEndTime.value = null;
    }
  }

  Map<String, String> getTimeSelectionArguments() {
    return {
      'selectedDate': selectedDate.value.toIso8601String(),
      'startTime': selectedStartTime.value ?? '',
      'endTime': selectedEndTime.value ?? '',
    };
  }

  void reset() {
    selectedStartTime.value = null;
    selectedEndTime.value = null;
    // Don't reset selectedDate to maintain current date
  }

  void resetAll() {
    selectedDate.value = DateTime.now();
    selectedStartTime.value = null;
    selectedEndTime.value = null;
    _lastFetchedDate = null;
  }

  bool isTimeSlotValid(String startTime, String endTime) {
    if (startTime.isEmpty || endTime.isEmpty) return false;

    return validateTimeSlotAvailability(
          startTime,
          endTime,
          labAvailabilityC.availabilitySlots,
        ) ==
        null;
  }

  String getConflictMessage(String startTime, String endTime) {
    return getTimeConflictMessage(
      startTime,
      endTime,
      labAvailabilityC.availabilitySlots,
    );
  }

  String? findNearestValidEndTime(String startTime) {
    return getNearestValidEndTime(
      startTime,
      labAvailabilityC.availabilitySlots,
    );
  }
}
