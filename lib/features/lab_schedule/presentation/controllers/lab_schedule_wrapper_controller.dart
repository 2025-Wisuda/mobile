import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';
import 'package:mobile/shared/helpers/helper.dart';

class LabScheduleWrapperController extends GetxController {
  final String? tag;

  LabScheduleWrapperController({this.tag});

  final isMySchedule = true.obs;
  final isCalendarExpanded = true.obs;
  final calendarFormat = CalendarFormat.week.obs;
  final focusedDate = DateTime.now().obs;
  final selectedDate = DateTime.now().obs;
  final paginationKey = UniqueKey().obs;

  MyLabScheduleController get _myLabScheduleController => tag != null
      ? Get.find<MyLabScheduleController>(tag: tag!)
      : Get.find<MyLabScheduleController>();

  ListLabScheduleController get _listLabScheduleController => tag != null
      ? Get.find<ListLabScheduleController>(tag: tag!)
      : Get.find<ListLabScheduleController>();

  @override
  void onInit() {
    super.onInit();

    ever(selectedDate, (DateTime date) {
      if (!_isSearchMode()) {
        _fetchWithDate(date);
      }
    });

    if (!_isSearchMode()) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _fetchInitialData();
      });
    }
  }

  void triggerLoadMore() {
    final c = isMySchedule.value
        ? _myLabScheduleController
        : _listLabScheduleController;
    if (c.canLoadMore && !c.isLoadingMore) {
      c.fetchList(isLoadMore: true);
    }
  }

  void _fetchInitialData() => _fetchWithDate(selectedDate.value);

  void _fetchWithDate(DateTime date) {
    final dateString = DateHelper.formatIsoDate(date: date);
    final c = isMySchedule.value
        ? _myLabScheduleController
        : _listLabScheduleController;
    c.fetchList(filters: {'date': dateString});
  }

  void switchToMySchedule() => _switchSchedule(true);
  void switchToAllSchedule() => _switchSchedule(false);

  void _switchSchedule(bool toMySchedule) {
    isMySchedule.value = toMySchedule;
    paginationKey.value = UniqueKey();

    if (!_isSearchMode()) {
      _fetchWithDate(selectedDate.value);
    }
    update();
  }

  void toggleCalendarExpansion() {
    isCalendarExpanded.value = !isCalendarExpanded.value;
    update();
  }

  void updateCalendarFormat(CalendarFormat format) {
    calendarFormat.value = format;
    update();
  }

  void onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    selectedDate.value = selectedDay;
    focusedDate.value = focusedDay;
    update();
  }

  bool _isSearchMode() {
    return tag == 'search';
  }

  bool get hasSchedules {
    return isMySchedule.value
        ? _myLabScheduleController.myLabScheduleList.isNotEmpty
        : _listLabScheduleController.labScheduleList.isNotEmpty;
  }
}
