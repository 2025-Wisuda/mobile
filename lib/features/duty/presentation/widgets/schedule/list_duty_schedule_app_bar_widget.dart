import 'package:flutter/material.dart';

import 'package:mobile/features/duty/presentation/_helpers/duty_schedule_helpers.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class ListDutyScheduleAppBarWidget extends StatefulWidget {
  final Function(int) onTabChanged;

  const ListDutyScheduleAppBarWidget({
    super.key,
    required this.onTabChanged,
  });

  @override
  State<ListDutyScheduleAppBarWidget> createState() =>
      _ListDutyScheduleAppBarWidgetState();
}

class _ListDutyScheduleAppBarWidgetState
    extends State<ListDutyScheduleAppBarWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late List<String> _days;

  @override
  void initState() {
    super.initState();
    _days = DutyScheduleHelpers.getOrderedDays();
    _tabController = TabController(length: _days.length, vsync: this);

    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        widget.onTabChanged(_tabController.index);
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomSliverAppBarWidget(
      title: 'dutySchedule'.menu(),
      pinned: true,
      floating: false,
      toolbarHeight: 56,
      expandedHeight: 80,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(48),
        child: TabBar(
          controller: _tabController,
          isScrollable: true,
          labelStyle: context.titleSmallW(600),
          unselectedLabelStyle: context.titleSmallW(500),
          labelColor: context.primary,
          unselectedLabelColor: context.onSurface.withValues(alpha: 0.6),
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(
              width: 2,
              color: context.primary,
            ),
          ),
          tabs: _days
              .map((day) => Tab(text: 'dutySchedule'.message(day)))
              .toList(),
        ),
      ),
    );
  }
}
