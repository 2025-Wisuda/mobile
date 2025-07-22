import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/duty/domain/entities/entity.dart';
import 'package:mobile/features/duty/domain/usecases/usecase.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/helper.dart';

class DutyAttendanceStatisticsController extends GetxController {
  final FetchAttendanceStatisticsUseCase _fetchStatisticsUsecase;

  DutyAttendanceStatisticsController(this._fetchStatisticsUsecase);

  final Rx<FetchStateEnum> reactiveState = FetchStateEnum.initial.obs;
  final RxString errorMessage = ''.obs;
  final Rx<DutyAttendanceStatisticsEntity?> statistics =
      Rx<DutyAttendanceStatisticsEntity?>(null);

  late TextEditingController startDateController;
  late TextEditingController endDateController;

  String? _startDate;
  String? _endDate;

  FetchStateEnum get state => reactiveState.value;
  bool get isLoading => state == FetchStateEnum.loading;
  bool get hasError => state == FetchStateEnum.failure;
  bool get isEmpty => state == FetchStateEnum.empty;
  bool get isSuccess => state == FetchStateEnum.success;

  @override
  void onInit() {
    super.onInit();
    _initializeControllers();
    _setDefaultDateRange();
    fetchStatistics();
  }

  @override
  void onClose() {
    startDateController.dispose();
    endDateController.dispose();
    super.onClose();
  }

  void _initializeControllers() {
    startDateController = TextEditingController();
    endDateController = TextEditingController();
  }

  void _setDefaultDateRange() {
    final now = DateTime.now();
    final thirtyDaysAgo = now.subtract(const Duration(days: 30));
    final endDate = now;

    _startDate = DateHelper.formatIsoDateString(thirtyDaysAgo);
    _endDate = DateHelper.formatIsoDateString(endDate);

    startDateController.text =
        DateHelper.formatDayMonthYear(date: thirtyDaysAgo);
    endDateController.text = DateHelper.formatDayMonthYear(date: endDate);
  }

  Future<void> fetchStatistics() async {
    reactiveState.value = FetchStateEnum.loading;
    errorMessage.value = '';

    try {
      final result = await _fetchStatisticsUsecase.execute(
        FetchAttendanceStatisticsParams(
          startDate: _startDate,
          endDate: _endDate,
        ),
      );

      result.fold(
        (failure) {
          errorMessage.value = failure.message;
          reactiveState.value = FetchStateEnum.failure;
        },
        (response) {
          statistics.value = response.data;
          if (response.data != null) {
            reactiveState.value = FetchStateEnum.success;
          } else {
            reactiveState.value = FetchStateEnum.empty;
          }
        },
      );
    } catch (e) {
      errorMessage.value = 'dutySchedule'.message('fetchStatisticsError');
      reactiveState.value = FetchStateEnum.failure;
    }
  }

  Future<void> selectStartDate(BuildContext context) async {
    final now = DateTime.now();
    final currentStartDate = _startDate != null
        ? DateTime.parse(_startDate!)
        : now.subtract(const Duration(days: 30));

    final firstDate = DateTime(2025, 1, 1);

    final picked = await showDatePicker(
      context: context,
      initialDate: currentStartDate,
      firstDate: firstDate,
      lastDate: now,
    );

    if (picked != null) {
      _startDate = DateHelper.formatIsoDateString(picked);
      startDateController.text = DateHelper.formatDayMonthYear(date: picked);

      if (_endDate != null) {
        final endDate = DateTime.parse(_endDate!);
        if (endDate.isBefore(picked)) {
          _endDate = DateHelper.formatIsoDateString(picked);
          endDateController.text = DateHelper.formatDayMonthYear(date: picked);
        }
      }
    }
  }

  Future<void> selectEndDate(BuildContext context) async {
    final now = DateTime.now();
    final currentEndDate = _endDate != null ? DateTime.parse(_endDate!) : now;

    final startDate = _startDate != null
        ? DateTime.parse(_startDate!)
        : now.subtract(const Duration(days: 30));

    final picked = await showDatePicker(
      context: context,
      initialDate: currentEndDate,
      firstDate: startDate,
      lastDate: now,
    );

    if (picked != null) {
      _endDate = DateHelper.formatIsoDateString(picked);
      endDateController.text = DateHelper.formatDayMonthYear(date: picked);
    }
  }

  void applyDateFilter() {
    fetchStatistics();
  }

  void resetDateFilter() {
    _setDefaultDateRange();
    fetchStatistics();
  }
}
