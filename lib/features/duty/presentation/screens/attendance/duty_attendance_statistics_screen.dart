import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/bindings/binding.dart';
import 'package:mobile/features/duty/duty.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DutyAttendanceStatisticsScreen extends StatefulWidget {
  const DutyAttendanceStatisticsScreen({super.key});

  @override
  State<DutyAttendanceStatisticsScreen> createState() =>
      _DutyAttendanceStatisticsScreenState();
}

class _DutyAttendanceStatisticsScreenState
    extends State<DutyAttendanceStatisticsScreen> {
  late DutyAttendanceStatisticsController controller;
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    DutyScheduleBinding().registerDutyAttendanceStatistics();
    controller = Get.find<DutyAttendanceStatisticsController>();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    // Handle scroll events if needed
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomRefreshWrapperWidget(
        onRefresh: () async {
          await controller.fetchStatistics();
        },
        child: Scrollbar(
          controller: _scrollController,
          child: CustomScrollView(
            controller: _scrollController,
            slivers: [
              _buildAppBar(),
              DutyAttendanceStatisticsWrapperWidget(
                controller: controller,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return CustomSliverAppBarWithBorder(
      pinned: true,
      title: 'attendanceStatistics'.menu(),
      toolbarHeight: 76,
    );
  }
}
