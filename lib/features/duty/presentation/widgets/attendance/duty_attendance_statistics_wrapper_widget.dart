import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/duty/presentation/controllers/controller.dart';
import 'package:mobile/features/duty/presentation/widgets/attendance/sections/section.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DutyAttendanceStatisticsWrapperWidget extends StatelessWidget {
  final DutyAttendanceStatisticsController controller;
  const DutyAttendanceStatisticsWrapperWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Obx(() {
        final state = controller.reactiveState.value;
        return customSkeletonizerHandler(
          context: context,
          state: state,
          feature: 'dutySchedule',
          customErrorMessage: controller.errorMessage.value,
          customTitle: 'dutySchedule'.message('attendanceStatisticsEmpty'),
          customIcon:
              state == FetchStateEnum.empty ? Icons.analytics_outlined : null,
          onSuccess: () => SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 16),
            child: _buildStatisticsContent(
              context,
            ),
          ),
        );
      }),
    );
  }

  Widget _buildStatisticsContent(
    BuildContext context,
  ) {
    final statistics = controller.statistics.value;
    if (statistics == null) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        DateRangeFilterSection(controller: controller),
        OverviewCardSection(summary: statistics.summary),
        StatusBreakdownSection(statusBreakdown: statistics.statusBreakdown),
        DailyTrendsSection(dailyTrends: statistics.dailyTrends),
        if (statistics.assistantPerformance.isNotEmpty)
          AssistantPerformanceSection(
            assistantPerformance: statistics.assistantPerformance,
          ),
      ],
    );
  }
}
