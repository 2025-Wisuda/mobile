import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:mobile/features/duty/domain/_enums/enum.dart';
import 'package:mobile/features/duty/domain/entities/entity.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/card/card.dart';

class StatusBreakdownSection extends StatelessWidget {
  final List<AttendanceStatusBreakdownEntity> statusBreakdown;
  const StatusBreakdownSection({super.key, required this.statusBreakdown});

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
                Icons.pie_chart_rounded,
                color: context.primary,
                size: 24,
              ),
              const SizedBox(width: 8),
              Text(
                'dutySchedule'.message('statusBreakdown'),
                style: context.bodyLargeW(500),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Column(
            children: [
              // Pie Chart
              SizedBox(
                height: 220,
                child: PieChart(
                  PieChartData(
                    sections: statusBreakdown.map((data) {
                      final color =
                          DutyAttendanceStatusEnum.fromString(data.status)
                                  ?.getStatusTextColor(context,
                                      isPast: false) ??
                              context.outline;
                      return PieChartSectionData(
                        color: color,
                        value: data.percentage,
                        title: '${data.percentage.toStringAsFixed(1)}%',
                        titleStyle: context.labelLargeW(600).copyWith(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                        radius: 70,
                        titlePositionPercentageOffset: 0.6,
                      );
                    }).toList(),
                    sectionsSpace: 3,
                    centerSpaceRadius: 50,
                    startDegreeOffset: -90,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Custom Legend
              Wrap(
                spacing: 16,
                runSpacing: 8,
                alignment: WrapAlignment.center,
                children: statusBreakdown.map((data) {
                  final color = DutyAttendanceStatusEnum.fromString(data.status)
                          ?.getStatusTextColor(context, isPast: false) ??
                      context.outline;
                  final label = DutyAttendanceStatusEnum.fromString(data.status)
                          ?.getStatusText(isPast: false) ??
                      data.status;

                  return customLegendWidget(
                    context,
                    label: label,
                    color: color,
                  );
                }).toList(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
