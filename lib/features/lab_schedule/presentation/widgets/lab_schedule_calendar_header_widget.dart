import 'package:flutter/material.dart';

import 'package:table_calendar/table_calendar.dart';

import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/helper.dart';

class LabScheduleCalendarHeaderWidget extends StatelessWidget {
  final bool isCalendarExpanded;
  final CalendarFormat calendarFormat;
  final DateTime selectedDate;
  final VoidCallback onToggleExpansion;
  final Function(CalendarFormat) onFormatChanged;

  const LabScheduleCalendarHeaderWidget({
    super.key,
    required this.isCalendarExpanded,
    required this.calendarFormat,
    required this.selectedDate,
    required this.onToggleExpansion,
    required this.onFormatChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: _buildHeaderRow(context),
    );
  }

  Widget _buildHeaderRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: _buildLeftContent(context)),
        _buildToggleButton(context),
      ],
    );
  }

  Widget _buildLeftContent(BuildContext context) {
    if (!isCalendarExpanded) {
      return _buildDateDisplay(context);
    } else {
      return _buildFormatButtons(context);
    }
  }

  Widget _buildDateDisplay(BuildContext context) {
    return Text(
      DateHelper.formatFullDate(date: selectedDate),
      style: context.bodyLargeW(500),
    );
  }

  Widget _buildFormatButtons(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildFormatButton(
          context,
          label: 'Week',
          format: CalendarFormat.week,
        ),
        const SizedBox(width: 8),
        _buildFormatButton(
          context,
          label: 'Month',
          format: CalendarFormat.month,
        ),
      ],
    );
  }

  Widget _buildToggleButton(BuildContext context) {
    return IconButton(
      onPressed: onToggleExpansion,
      icon: Icon(
        isCalendarExpanded
            ? Icons.keyboard_arrow_up
            : Icons.keyboard_arrow_down,
        color: context.onSurface,
      ),
    );
  }

  Widget _buildFormatButton(
    BuildContext context, {
    required String label,
    required CalendarFormat format,
  }) {
    final isSelected = calendarFormat == format;

    return GestureDetector(
      onTap: () => onFormatChanged(format),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected ? context.primary : context.surface,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: context.outline.withValues(alpha: 0.3)),
        ),
        child: Text(
          label,
          style: context.bodySmallW(500).copyWith(
                color: isSelected ? context.onPrimary : context.onSurface,
              ),
        ),
      ),
    );
  }
}
