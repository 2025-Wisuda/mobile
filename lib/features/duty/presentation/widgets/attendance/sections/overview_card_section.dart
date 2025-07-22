import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/duty/domain/entities/entity.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/card/card.dart';

class OverviewCardSection extends StatelessWidget {
  final AttendanceStatisticsSummaryEntity summary;

  const OverviewCardSection({
    super.key,
    required this.summary,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'overview'.note(),
              style: context.bodyLargeW(500).copyWith(
                    color: context.onSurface,
                  ),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed(AppRoute.listAttendanceRecords);
              },
              style: TextButton.styleFrom(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: Text(
                'dutySchedule'.message('attendanceRecords'),
                style: context.bodyLargeW(500).copyWith(color: context.primary),
              ),
            ),
          ],
        ),
        Row(
          spacing: 12,
          children: [
            Expanded(
              child: CustomSummaryCardWidget(
                title: 'dutySchedule'.message('totalDuties'),
                value: summary.totalDuties.toString(),
                icon: Icons.assignment_rounded,
                gradient: LinearGradient(
                  colors: [
                    context.primary,
                    context.primary.withValues(alpha: 0.8),
                  ],
                ),
              ),
            ),
            Expanded(
              child: CustomSummaryCardWidget(
                title: 'dutySchedule'.message('attendanceRate'),
                value: '${summary.overallAttendanceRate.toStringAsFixed(1)}%',
                icon: Icons.trending_up_rounded,
                gradient: LinearGradient(
                  colors: [
                    context.tertiary,
                    context.tertiary.withValues(alpha: 0.8),
                  ],
                ),
              ),
            ),
            Expanded(
              child: CustomSummaryCardWidget(
                title: 'dutySchedule'.message('days'),
                value: summary.dateRange.daysCount.toString(),
                icon: Icons.calendar_month_rounded,
                gradient: LinearGradient(
                  colors: [
                    context.primary,
                    context.primary.withValues(alpha: 0.8),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
