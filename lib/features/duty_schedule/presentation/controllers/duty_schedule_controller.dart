// Flutter imports:
import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
// Project imports:
import 'package:mobile/core/enums/enum.dart';
import 'package:mobile/features/duty_schedule/data/models/model.dart';
import 'package:mobile/features/duty_schedule/domain/domain.dart';
import 'package:mobile/shared/helpers/date_helper.dart';
import 'package:mobile/shared/helpers/network_helper.dart';

class DutyScheduleController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final FetchListDutyScheduleUsecase fetchListDutyScheduleUsecase;
  final FetchDutyScheduleDetailUsecase fetchDutyScheduleDetailUsecase;

  DutyScheduleController({
    required this.fetchListDutyScheduleUsecase,
    required this.fetchDutyScheduleDetailUsecase,
  });

  // Connectivity stream subscription
  StreamSubscription<List<ConnectivityResult>>? _connectivitySubscription;
  final isOnline = RxBool(true);
  bool _wasOfflineBefore = false;

  @override
  void onInit() {
    super.onInit();
    _initDays();
    _initConnectivityListener();
    tabController = TabController(length: days.length, vsync: this);
    tabController.addListener(() {
      if (tabController.indexIsChanging) return;
      fetchByTabIndex(tabController.index);
    });
  }

  void _initConnectivityListener() {
    // Listen to connectivity changes
    _connectivitySubscription = NetworkHelper.connectivityStream.listen((
      List<ConnectivityResult> results,
    ) async {
      final hasConnection =
          results.isNotEmpty && !results.contains(ConnectivityResult.none);

      final wasOffline = !isOnline.value;
      isOnline.value = hasConnection;

      // If we're back online after being offline, sync data
      if (hasConnection && wasOffline) {
        await _syncWhenBackOnline();
      }

      _wasOfflineBefore = !hasConnection;
    });

    // Check initial connectivity status
    NetworkHelper.hasInternetConnection().then((connected) {
      isOnline.value = connected;
    });
  }

  Future<void> _syncWhenBackOnline() async {
    // Refresh current tab data when back online
    if (tabController.hasClients) {
      final currentIndex = tabController.index;
      fetchByTabIndex(currentIndex);
    }
  }

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

  void _initDays() {
    final today = DateHelper.getCurrentDayInEnglish();
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
    result.fold(
      (failure) {
        fetchDutyScheduleDetailState.value = FetchStateEnum.error;
        errorMessage.value = failure.message;
      },
      (response) async {
        fetchDutyScheduleDetailState.value = FetchStateEnum.loaded;
        dutyScheduleEntity.value = response.data;
      },
    );
  }

  @override
  void onClose() {
    tabController.dispose();
    fetchDutyScheduleByDaysState.clear();
    fetchDutyScheduleDetailState.value = FetchStateEnum.initial;
    dutyScheduleEntity.value = null;
    listDutyScheduleEntity.value = null;
    errorMessage.value = '';
    days.clear();
    dayKeyMap.clear();
    super.onClose();
  }
}
