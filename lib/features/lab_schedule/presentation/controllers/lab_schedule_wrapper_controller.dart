import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';
import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';
import 'package:mobile/shared/enums/fetch_state_enum.dart';
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

  MyLabScheduleController get _myLabScheduleController =>
      Get.find<MyLabScheduleController>(
        tag: tag ?? 'list',
      );

  ListLabScheduleController get _listLabScheduleController =>
      Get.find<ListLabScheduleController>(
        tag: tag ?? 'list',
      );

  dynamic get _activeController => isMySchedule.value
      ? _myLabScheduleController
      : _listLabScheduleController;

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
    if (_activeController.canLoadMore &&
        !_activeController.isLoadingMore.value) {
      _activeController.loadMore();
    }
  }

  void _fetchInitialData() => _fetchWithDate(selectedDate.value);

  void _fetchWithDate(DateTime date) {
    final dateString = DateHelper.formatIsoDate(date: date);
    _activeController.fetchList(filters: {'date': dateString});
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
    return _activeController.items.isNotEmpty;
  }

  Future<void> fetchList(Map<String, dynamic> filters) async {
    await _activeController.fetchList(filters: filters);
  }

  RxBool get isLoadingMore => _activeController.isLoadingMore;
  FetchStateEnum get state => _activeController.state;
  String get stateDescription => _activeController.stateDescription;
  List<LabScheduleEntity> get items => _activeController.items;

  void resetAll() {
    _activeController.clearAll();
    _activeController.items.clear();
    _activeController.fetchStates[_activeController.baseStateKey] =
        FetchStateEnum.initial;
    _activeController.cleanForm();
    update();
  }
}
