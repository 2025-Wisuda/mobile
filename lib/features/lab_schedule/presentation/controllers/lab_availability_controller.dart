import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';
import 'package:mobile/features/lab_schedule/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/get_base_list_controller.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/helpers/time_slot_helper.dart';
import 'package:mobile/shared/mixins/validator_mixin.dart';
import 'package:mobile/shared/widgets/widget.dart';

class LabAvailabilityFilterParams {
  final String date;

  LabAvailabilityFilterParams({required this.date});
}

class LabAvailabilityController extends GetBaseListController<
    LabAvailabilityEntity, LabAvailabilityFilterParams> with ValidatorMixin {
  final FetchLabAvailabilityUsecase _fetchLabAvailabilityUsecase;

  LabAvailabilityController(this._fetchLabAvailabilityUsecase);

  final selectedDate = DateTime.now().obs;

  final selectedStartTime = Rxn<String>();
  final selectedEndTime = Rxn<String>();
  bool get canContinue =>
      selectedStartTime.value != null && selectedEndTime.value != null;

  bool get hasSelection =>
      selectedStartTime.value != null || selectedEndTime.value != null;

  @override
  String get baseStateKey => 'fetchLabAvailability';

  RxList<LabAvailabilityEntity> get availabilitySlots => items;

  @override
  Future<Either<Failure, BaseListResponseEntity<LabAvailabilityEntity>>>
      executeUsecase(LabAvailabilityFilterParams params) async {
    return await _fetchLabAvailabilityUsecase.execute(date: params.date);
  }

  @override
  LabAvailabilityFilterParams createFilterParams({
    required int page,
    required int pageSize,
    String? search,
    Map<String, dynamic>? filters,
  }) {
    return LabAvailabilityFilterParams(
      date: filters?['date'] as String? ?? '',
    );
  }

  void updateSelectedDate(DateTime date) {
    selectedDate.value = date;
    selectedStartTime.value = null;
    selectedEndTime.value = null;
    fetchAvailabilityForDate(date);
  }

  void fetchAvailabilityForDate(DateTime date) {
    final formattedDate = DateHelper.formatIsoDate(date: date);
    setFilters({'date': formattedDate});
  }

  List<TimeSlotData> generateTimeSlots(
      List<LabAvailabilityEntity>? availabilitySlots) {
    final List<TimeSlotData> slots = [];
    final availableTimeSlots =
        TimeSlotHelper.generateTimeSlots(availabilitySlots ?? items);

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
    final now = DateTime.now();
    final selectedDateTime = DateTime.parse(
        '${DateHelper.formatIsoDate(date: selectedDate.value)} $timeString:00');

    if (selectedDateTime.isBefore(now)) {
      return TimeSlotStatus.disabled;
    }

    if (availableTimeSlots.contains(timeString)) {
      return TimeSlotStatus.available;
    }

    return TimeSlotStatus.booked;
  }

  void handleTimeSlotTap(String time) {
    final availableTimeSlots = TimeSlotHelper.generateTimeSlots(items);
    final timeSlotStatus = getTimeSlotStatus(time, availableTimeSlots);

    if (!timeSlotStatus.isSelectable) {
      return;
    }

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
      'selectedDate': DateHelper.formatIsoDate(date: selectedDate.value),
      'startTime': selectedStartTime.value ?? '',
      'endTime': selectedEndTime.value ?? '',
    };
  }

  void resetTimeSelection() {
    selectedStartTime.value = null;
    selectedEndTime.value = null;
  }

  @override
  void clearAll() {
    selectedDate.value = DateTime.now();
    selectedStartTime.value = null;
    selectedEndTime.value = null;
    super.clearAll();
  }

  bool isTimeSlotValid(String startTime, String endTime) {
    if (startTime.isEmpty || endTime.isEmpty) return false;

    return validateTimeSlotAvailability(
          startTime,
          endTime,
          items,
        ) ==
        null;
  }

  String getConflictMessage(String startTime, String endTime) {
    return getTimeConflictMessage(
      startTime,
      endTime,
      items,
    );
  }

  String? findNearestValidEndTime(String startTime) {
    return getNearestValidEndTime(
      startTime,
      items,
    );
  }
}
