import 'package:flutter/material.dart';

import 'package:fl_chart/fl_chart.dart';

import 'package:mobile/features/duty/domain/entities/entity.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/widgets/card/card.dart';

class DailyTrendsSection extends StatelessWidget {
  final List<AttendanceDailyTrendEntity> dailyTrends;

  const DailyTrendsSection({
    super.key,
    required this.dailyTrends,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCardItemWidget(
      backgroundColor: context.surface,
      showBorder: true,
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
      mainContent: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.show_chart_rounded,
                color: context.primary,
                size: 24,
              ),
              const SizedBox(width: 8),
              Text(
                'dutySchedule'.message('dailyAttendanceTrends'),
                style: context.bodyLargeW(500),
              ),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 220,
            child: LineChart(
              LineChartData(
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: false,
                  horizontalInterval: 20,
                  getDrawingHorizontalLine: (value) {
                    return FlLine(
                      color: context.outline.withValues(alpha: 0.2),
                      strokeWidth: 1,
                    );
                  },
                ),
                titlesData: FlTitlesData(
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 40,
                      getTitlesWidget: (value, meta) {
                        return Text(
                          '${value.toInt()}%',
                          style: context.bodySmall().copyWith(
                                color: context.onSurfaceVariant,
                              ),
                        );
                      },
                    ),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 30,
                      getTitlesWidget: (value, meta) {
                        if (value.toInt() >= 0 &&
                            value.toInt() < dailyTrends.length) {
                          final date = DateTime.tryParse(
                              dailyTrends[value.toInt()].date);
                          return Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              date != null
                                  ? DateHelper.formatDayMonth(date: date)
                                  : '',
                              style: context.bodySmall().copyWith(
                                    color: context.onSurfaceVariant,
                                  ),
                            ),
                          );
                        }
                        return const Text('');
                      },
                    ),
                  ),
                  topTitles:
                      AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  rightTitles:
                      AxisTitles(sideTitles: SideTitles(showTitles: false)),
                ),
                borderData: FlBorderData(
                  show: true,
                  border: Border(
                    bottom: BorderSide(
                      color: context.outline.withValues(alpha: 0.2),
                      width: 1,
                    ),
                    left: BorderSide(
                      color: context.outline.withValues(alpha: 0.2),
                      width: 1,
                    ),
                  ),
                ),
                lineBarsData: [
                  LineChartBarData(
                    spots: dailyTrends.asMap().entries.map((entry) {
                      return FlSpot(
                          entry.key.toDouble(), entry.value.attendanceRate);
                    }).toList(),
                    isCurved: true,
                    gradient: LinearGradient(
                      colors: [
                        context.primary,
                        context.primary.withValues(alpha: 0.6),
                      ],
                    ),
                    barWidth: 4,
                    dotData: FlDotData(
                      show: true,
                      getDotPainter: (spot, percent, barData, index) {
                        return FlDotCirclePainter(
                          radius: 4,
                          color: context.primary,
                          strokeWidth: 2,
                          strokeColor: context.surface,
                        );
                      },
                    ),
                    belowBarData: BarAreaData(
                      show: true,
                      gradient: LinearGradient(
                        colors: [
                          context.primary.withValues(alpha: 0.3),
                          context.primary.withValues(alpha: 0.1),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
