import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get.dart';

import 'package:mobile/features/duty_schedule/domain/entities/entity.dart';
import 'package:mobile/features/duty_schedule/presentation/controllers/controller.dart';
import 'package:mobile/features/duty_schedule/presentation/widgets/widget.dart';
import 'package:mobile/shared/shared.dart';

class ListDutyScheduleWrapperWidget extends StatefulWidget {
  const ListDutyScheduleWrapperWidget({super.key});

  @override
  State<ListDutyScheduleWrapperWidget> createState() =>
      _ListDutyScheduleWrapperWidgetState();
}

class _ListDutyScheduleWrapperWidgetState
    extends State<ListDutyScheduleWrapperWidget> with TickerProviderStateMixin {
  final List<MapEntry<String, String>> _localizedDays = [
    const MapEntry('monday', 'features.dutySchedule.text.monday'),
    const MapEntry('tuesday', 'features.dutySchedule.text.tuesday'),
    const MapEntry('wednesday', 'features.dutySchedule.text.wednesday'),
    const MapEntry('thursday', 'features.dutySchedule.text.thursday'),
    const MapEntry('friday', 'features.dutySchedule.text.friday'),
  ];

  final Map<String, String> _englishToApiParam = {
    'monday': 'senin',
    'tuesday': 'selasa',
    'wednesday': 'rabu',
    'thursday': 'kamis',
    'friday': 'jumat',
  };

  List<String> _days = [];
  final Map<String, String> _dayKeyMap = {};
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _initDays();
    _tabController = TabController(length: _days.length, vsync: this);

    _tabController?.addListener(() {
      if (!(_tabController?.indexIsChanging ?? true)) {
        final listDutyScheduleController =
            Get.find<ListDutyScheduleController>();
        _fetchByTabIndex(
            _tabController?.index ?? 0, listDutyScheduleController);
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final listDutyScheduleController = Get.find<ListDutyScheduleController>();
      _fetchByTabIndex(0, listDutyScheduleController);
    });
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  void _initDays() {
    final today = DateHelper.getCurrentDayInEnglish();
    final ordered = [
      ..._localizedDays.skipWhile((e) => e.key != today),
      ..._localizedDays.takeWhile((e) => e.key != today),
    ];
    _days = ordered.map((e) => e.value).toList();
    _dayKeyMap.clear();
    for (var e in ordered) {
      _dayKeyMap[e.value] = e.key;
    }
  }

  void _fetchByTabIndex(int index, ListDutyScheduleController c) {
    if (index >= 0 && index < _days.length) {
      final localizedDay = _days[index];
      final englishKey = _dayKeyMap[localizedDay] ?? '';
      final apiParam = _englishToApiParam[englishKey] ?? englishKey;

      c.fetchDutyScheduleList(day: apiParam);
    }
  }

  @override
  Widget build(BuildContext context) {
    final listDutyScheduleController = Get.find<ListDutyScheduleController>();

    return Column(
      children: [
        TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: _days.map((day) => Tab(text: i18n.tr(day))).toList(),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: _days
                .map((day) =>
                    _buildDayContent(context, day, listDutyScheduleController))
                .toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildDayContent(
    BuildContext context,
    String day,
    ListDutyScheduleController c,
  ) {
    return Obx(() {
      final state = c.state;

      return customSkeletonizerHandler(
        context: context,
        state: state,
        feature: 'dutySchedule',
        customErrorMessage: c.errorMessage,
        customIcon: state == FetchStateEnum.empty ? Icons.schedule : null,
        customSubtitle: state == FetchStateEnum.empty
            ? 'dutySchedule'.message('tryDifferentDay')
            : null,
        onSuccess: () => CustomRefreshWrapperWidget(
          onRefresh: () => c.refreshDutyScheduleList(),
          child: _buildLoadedWidget(context, day, c),
        ),
      );
    });
  }

  Widget _buildLoadedWidget(
      BuildContext context, String day, ListDutyScheduleController c) {
    final schedules = _getSchedulesForDay(day, c);

    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              DutyScheduleListItemWidget(schedules: schedules),
            ]),
          ),
        ),
        // Load more indicator
        SliverToBoxAdapter(
          child: _buildLoadMoreIndicator(context, c),
        ),
      ],
    );
  }

  Widget _buildLoadMoreIndicator(
      BuildContext context, ListDutyScheduleController c) {
    if (c.canLoadMore) {
      if (c.isLoadingMore) {
        return const Padding(
          padding: EdgeInsets.all(16),
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      } else {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: TextButton(
              onPressed: () => c.fetchDutyScheduleList(isLoadMore: true),
              child: Text(i18n.tr('general.actions.loadMore')),
            ),
          ),
        );
      }
    }
    return const SizedBox.shrink();
  }

  List<DutyScheduleEntity> _getSchedulesForDay(
      String day, ListDutyScheduleController c) {
    final englishKey = _dayKeyMap[day] ?? '';
    final apiParam = _englishToApiParam[englishKey] ?? englishKey;

    final dayData = c.dutyScheduleList
        .where((item) => item.days?.toLowerCase() == apiParam.toLowerCase())
        .firstOrNull;

    return dayData?.laboratoryAssistant ?? [];
  }
}
