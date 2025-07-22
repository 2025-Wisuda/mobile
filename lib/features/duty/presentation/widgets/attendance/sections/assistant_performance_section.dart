import 'package:flutter/material.dart';
import 'package:mobile/features/duty/domain/_enums/enum.dart';
import 'package:mobile/features/duty/domain/entities/entity.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/card/card.dart';

class AssistantPerformanceSection extends StatefulWidget {
  final List<AttendanceAssistantPerformanceEntity> assistantPerformance;
  const AssistantPerformanceSection(
      {super.key, required this.assistantPerformance});

  @override
  State<AssistantPerformanceSection> createState() =>
      _AssistantPerformanceSectionState();
}

class _AssistantPerformanceSectionState
    extends State<AssistantPerformanceSection> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    final showAssistants = expanded
        ? widget.assistantPerformance
        : widget.assistantPerformance.take(10).toList();

    final String seeMore = 'home'.message('labSchedule.seeMore');
    final String seeLess = 'home'.message('labSchedule.seeLess');

    return CustomCardItemWidget(
      backgroundColor: context.surface,
      showBorder: true,
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
      mainContent: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(context),
          const SizedBox(height: 20),
          ...showAssistants.map((assistant) {
            return _buildAssistantPerformanceItem(context, assistant);
          }).toList(),
          if (widget.assistantPerformance.length > 10) ...[
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () => setState(() => expanded = !expanded),
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: Text(
                  expanded
                      ? seeLess
                      : '$seeMore (${widget.assistantPerformance.length})',
                  style: context.bodyMediumW(500).copyWith(
                        color: context.primary,
                      ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.people_alt_rounded,
          color: context.primary,
          size: 24,
        ),
        const SizedBox(width: 8),
        Text(
          'dutySchedule'.message('assistantPerformance'),
          style: context.bodyLargeW(500),
        ),
      ],
    );
  }

  Widget _buildPercentageBar(
      BuildContext context, AttendanceAssistantPerformanceEntity assistant) {
    final performanceColor =
        AttendanceLevelEnum.fromRate(assistant.attendanceRate)
            .getColor(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          '${assistant.attendanceRate.toStringAsFixed(1)}%',
          style: context.titleMediumW(600).copyWith(
                color: performanceColor,
              ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: 80,
          child: LinearProgressIndicator(
            value: assistant.attendanceRate / 100,
            backgroundColor: context.outline.withValues(alpha: 0.2),
            valueColor: AlwaysStoppedAnimation<Color>(performanceColor),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ],
    );
  }

  Widget _buildAssistantPerformanceName(
      BuildContext context, AttendanceAssistantPerformanceEntity assistant) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            assistant.name,
            style: context.bodyLargeW(500).copyWith(
                  color: context.onSurface,
                ),
          ),
          Text(
            '${assistant.presentCount}/${assistant.totalDuties} duties',
            style: context.bodySmall().copyWith(
                  color: context.onSurfaceVariant,
                ),
          ),
        ],
      ),
    );
  }

  Widget _buildAssistantPerformanceIcon(
      BuildContext context, AttendanceAssistantPerformanceEntity assistant) {
    final performanceColor =
        AttendanceLevelEnum.fromRate(assistant.attendanceRate)
            .getColor(context);
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: performanceColor.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Icon(
        AttendanceLevelEnum.fromRate(assistant.attendanceRate).getIcon(),
        color: performanceColor,
        size: 20,
      ),
    );
  }

  Widget _buildAssistantPerformanceItem(
      BuildContext context, AttendanceAssistantPerformanceEntity assistant) {
    return CustomCardItemWidget(
      backgroundColor: context.surface,
      padding: const EdgeInsets.fromLTRB(8, 4, 8, 8),
      mainContent: Row(
        spacing: 8,
        children: [
          _buildAssistantPerformanceIcon(context, assistant),
          _buildAssistantPerformanceName(context, assistant),
          _buildPercentageBar(context, assistant),
        ],
      ),
    );
  }
}
