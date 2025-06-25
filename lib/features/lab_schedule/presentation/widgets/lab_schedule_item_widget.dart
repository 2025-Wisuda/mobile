import 'package:flutter/material.dart';

import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';
import 'package:mobile/features/lab_schedule/presentation/widgets/widget.dart';
import 'package:mobile/shared/shared.dart';

class ScheduleStatusInfo {
  final Color color;
  final Color textColor;
  final IconData icon;
  final String label;

  const ScheduleStatusInfo({
    required this.color,
    required this.textColor,
    required this.icon,
    required this.label,
  });
}

class LabScheduleItemWidget extends StatelessWidget {
  final LabScheduleEntity schedule;
  final bool isShowDate;
  final bool isShowDuration;
  final double dividerHeight;

  const LabScheduleItemWidget(
      {super.key,
      required this.schedule,
      this.isShowDate = false,
      this.isShowDuration = false,
      this.dividerHeight = 66});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      onTap: () => detailLabScheduleBottomSheetWidget(context, schedule.idStr),
      leading: _buildTimeAndStatusSection(context),
      title: _buildTitle(context),
      subtitle: _buildSubtitle(context),
      trailing: Icon(
        Icons.chevron_right,
        size: 24,
        color: context.onSurfaceVariant,
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      visualDensity: VisualDensity.standard,
      minTileHeight: 64,
      titleAlignment: ListTileTitleAlignment.center,
      isThreeLine: false,
      dense: false,
    );
  }

  Widget _buildTimeAndStatusSection(BuildContext context) {
    final statusInfo = _getScheduleStatus(context);

    return SizedBox(
      width: 56,
      height: 48,
      child: Container(
        width: 56,
        height: 48,
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
        decoration: BoxDecoration(
          color: statusInfo.color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              schedule.startTimeFormatted,
              style: context.bodyMediumW(600).copyWith(
                    color: statusInfo.textColor,
                    height: 1.1,
                  ),
              textAlign: TextAlign.center,
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Text(
      schedule.typeStr,
      style: context.bodyMediumW(500),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildSubtitle(BuildContext context) {
    final hasDetail = schedule.detail != null;

    if (!hasDetail && !isShowDate && !isShowDuration) {
      return SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (hasDetail) ...[
          Text(
            schedule.detailStr,
            style: context.bodyMediumW(400).copyWith(
                  color: context.onSurfaceVariant,
                ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
        if (isShowDate || isShowDuration) ...[
          if (hasDetail) SizedBox(height: 2),
          Wrap(
            spacing: 8,
            children: [
              if (isShowDate) ...[
                Text(
                  _getSmartDateInfo(),
                  style: context.labelMediumW(500).copyWith(
                        color: context.primary,
                      ),
                ),
              ],
              if (isShowDuration) ...[
                Text(
                  DateHelper.calculateDuration(
                      schedule.startTimeStr, schedule.endTimeStr),
                  style: context.labelMediumW(400).copyWith(
                        color: context.onSurfaceVariant,
                      ),
                ),
              ],
            ],
          ),
        ],
      ],
    );
  }

  ScheduleStatusInfo _getScheduleStatus(BuildContext context) {
    try {
      final now = DateTime.now();
      final currentDate = DateHelper.formatIsoDate(date: now);
      final currentTime = DateHelper.formatTimeString(now);

      final scheduleDate = schedule.dateStr.split('T').first;
      final startTime = schedule.startTimeStr;
      final endTime = schedule.endTimeStr;

      if (currentDate.compareTo(scheduleDate) > 0 ||
          (currentDate == scheduleDate && currentTime.compareTo(endTime) > 0)) {
        return ScheduleStatusInfo(
          color: context.outline.withValues(alpha: 0.4),
          textColor: context.onSurface,
          icon: Icons.history,
          label: 'Past',
        );
      } else if (currentDate == scheduleDate &&
          currentTime.compareTo(startTime) >= 0 &&
          currentTime.compareTo(endTime) <= 0) {
        return ScheduleStatusInfo(
          color: context.tertiaryContainer,
          textColor: context.tertiary,
          icon: Icons.play_circle,
          label: 'Ongoing',
        );
      } else {
        return ScheduleStatusInfo(
          color: context.primaryContainer,
          textColor: context.primary,
          icon: Icons.schedule,
          label: 'Upcoming',
        );
      }
    } catch (_) {
      return ScheduleStatusInfo(
        color: context.primaryContainer,
        textColor: context.primary,
        icon: Icons.schedule,
        label: 'Upcoming',
      );
    }
  }

  String _getSmartDateInfo() {
    try {
      final date = DateTime.parse(schedule.dateStr);
      final now = DateTime.now();
      final today = DateTime(now.year, now.month, now.day);
      final targetDate = DateTime(date.year, date.month, date.day);
      final difference = targetDate.difference(today).inDays;

      if (difference == 0) return 'common'.message('today');
      if (difference == 1) return 'common'.message('tomorrow');
      if (difference == -1) return 'common'.message('yesterday');

      if (difference > 1 && difference <= 7) {
        final weekdays = [
          'common'.message('monday'),
          'common'.message('tuesday'),
          'common'.message('wednesday'),
          'common'.message('thursday'),
          'common'.message('friday'),
          'common'.message('saturday'),
          'common'.message('sunday')
        ];
        return weekdays[date.weekday - 1];
      }

      return DateHelper.formatDateWithYear(date);
    } catch (_) {
      return schedule.dateStr.split('T').first;
    }
  }
}
