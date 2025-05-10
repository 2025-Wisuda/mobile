import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mobile/core/enums/enum.dart';
import 'package:mobile/features/duty_schedule/data/models/duty_schedule_filter_params_model.dart';
import 'package:mobile/features/duty_schedule/domain/domain.dart';
import 'package:get/state_manager.dart';
import 'package:mobile/shared/helpers/date_helper.dart';

class DutyScheduleController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final FetchListDutyScheduleUsecase fetchListDutyScheduleUsecase;
  final FetchDutyScheduleDetailUsecase fetchDutyScheduleDetailUsecase;

  DutyScheduleController({
    required this.fetchListDutyScheduleUsecase,
    required this.fetchDutyScheduleDetailUsecase,
  });

  final errorMessage = RxString('');
  final fetchDutyScheduleDetailState = Rx(FetchStateEnum.initial);
  final dutyScheduleEntity = Rxn<DutyScheduleEntity?>();
  final listDutyScheduleEntity = Rxn<ListDutyScheduleEntity?>();

  final fetchDutyScheduleByDaysState = RxMap<String, FetchStateEnum>();

  late TabController tabController;

  final List<MapEntry<String, String>> _localizedDays = [
    MapEntry('monday', 'features.schedule.duty.days.monday'),
    MapEntry('tuesday', 'features.schedule.duty.days.tuesday'),
    MapEntry('wednesday', 'features.schedule.duty.days.wednesday'),
    MapEntry('thursday', 'features.schedule.duty.days.thursday'),
    MapEntry('friday', 'features.schedule.duty.days.friday'),
    MapEntry('saturday', 'features.schedule.duty.days.saturday'),
    MapEntry('sunday', 'features.schedule.duty.days.sunday'),
  ];

  final days = RxList<String>([]);
  final dayKeyMap = <String, String>{};

  @override
  void onInit() {
    super.onInit();
    _initDays();
    tabController = TabController(length: days.length, vsync: this);
    tabController.addListener(() {
      if (tabController.indexIsChanging) return;
      fetchByTabIndex(tabController.index);
    });
  }

  void _initDays() {
    final today = DateHelper.getCurrentEnglishDay();
    final ordered = [
      ..._localizedDays.skipWhile((e) => e.key != today),
      ..._localizedDays.takeWhile((e) => e.key != today),
    ];
    days.assignAll(ordered.map((e) => e.value.tr()).toList());
    dayKeyMap.clear();
    for (var e in ordered) {
      dayKeyMap[e.value.tr().toLowerCase()] = e.key;
    }
  }

  void fetchByTabIndex(int index) {
    final localizedDay = days[index].toLowerCase();
    final dayKey = dayKeyMap[localizedDay] ?? '';
    fetchDutySchedule(
      scheduleFilterParamsModel: DutyScheduleFilterParamsModel(days: dayKey),
      targetDayKey: dayKey,
    );
  }

  Future<void> fetchDutySchedule({
    required DutyScheduleFilterParamsModel scheduleFilterParamsModel,
    required String targetDayKey,
  }) async {
    fetchDutyScheduleByDaysState[targetDayKey] = FetchStateEnum.loading;

    final result = await fetchListDutyScheduleUsecase.execute(
      params: scheduleFilterParamsModel,
    );
    await Future.delayed(const Duration(milliseconds: 500));

    result.fold(
      (failure) {
        fetchDutyScheduleByDaysState[targetDayKey] = FetchStateEnum.error;
        errorMessage.value = failure.message;
      },
      (response) async {
        if (response.data!.isEmpty) {
          fetchDutyScheduleByDaysState[targetDayKey] = FetchStateEnum.empty;
        } else {
          fetchDutyScheduleByDaysState[targetDayKey] = FetchStateEnum.loaded;
          listDutyScheduleEntity.value = response;
        }
      },
    );
  }

  Future<void> fetchDutyScheduleDetail({required String dutyScheduleId}) async {
    fetchDutyScheduleDetailState.value = FetchStateEnum.loading;
    final result = await fetchDutyScheduleDetailUsecase.execute(
      dutyScheduleId: dutyScheduleId,
    );
    await Future.delayed(const Duration(milliseconds: 500));

    result.fold(
      (failure) {
        fetchDutyScheduleDetailState.value = FetchStateEnum.error;
        errorMessage.value = failure.message;
      },
      (response) async {
        fetchDutyScheduleDetailState.value = FetchStateEnum.loaded;
        dutyScheduleEntity.value = response;
      },
    );
  }
}
