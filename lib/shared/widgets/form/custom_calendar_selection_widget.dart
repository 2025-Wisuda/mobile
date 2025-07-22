import 'package:flutter/material.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomCalendarSelectionWidget extends StatelessWidget {
  final CalendarFormat calendarFormat;
  final DateTime selectedDate;
  final DateTime focusedDate;
  final Function(CalendarFormat) onFormatChanged;
  final Function(DateTime, DateTime) onDaySelected;
  final bool showAllDays;
  final bool Function(DateTime)? isDateAvailable;
  final List<int>? weekendDays;
  final Map<CalendarFormat, String>? availableCalendarFormats;
  final bool formatButtonVisible;
  final StartingDayOfWeek? startingDayOfWeek;
  final String? locale;
  final DateTime? firstDay;
  final DateTime? lastDay;
  final bool disableFormatButton;

  const CustomCalendarSelectionWidget({
    super.key,
    required this.calendarFormat,
    required this.selectedDate,
    required this.focusedDate,
    required this.onFormatChanged,
    required this.onDaySelected,
    this.showAllDays = true,
    this.isDateAvailable,
    this.weekendDays,
    this.availableCalendarFormats,
    this.formatButtonVisible = false,
    this.startingDayOfWeek,
    this.locale = 'id_ID',
    this.firstDay,
    this.lastDay,
    this.disableFormatButton = false,
  });

  @override
  Widget build(BuildContext context) {
    final todayDate = DateTime.now();
    final effectiveFirstDay =
        firstDay ?? todayDate.subtract(Duration(days: todayDate.day - 1));
    final effectiveLastDay =
        lastDay ?? todayDate.add(const Duration(days: 180));
    final effectiveWeekendDays = showAllDays
        ? (weekendDays ?? [DateTime.saturday, DateTime.sunday])
        : <int>[];
    final effectiveStartingDay = startingDayOfWeek ?? StartingDayOfWeek.monday;
    final effectiveFormats = disableFormatButton
        ? {CalendarFormat.month: 'Month'}
        : (availableCalendarFormats ??
            {
              CalendarFormat.month: 'Month',
              CalendarFormat.week: 'Week',
            });

    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: TableCalendar(
        locale: locale,
        firstDay: effectiveFirstDay,
        lastDay: effectiveLastDay,
        focusedDay: focusedDate,
        calendarFormat: calendarFormat,
        availableCalendarFormats: effectiveFormats,
        onFormatChanged: onFormatChanged,
        selectedDayPredicate: (day) => isSameDay(selectedDate, day),
        onDaySelected: _handleDaySelected,
        enabledDayPredicate: isDateAvailable != null
            ? (day) => _isValidDay(day) && isDateAvailable!(day)
            : _isValidDay,
        calendarStyle: CalendarStyle(
          todayDecoration: BoxDecoration(
            color: context.primaryContainer,
            shape: BoxShape.circle,
          ),
          todayTextStyle: context.bodyMediumW(600),
          selectedDecoration: BoxDecoration(
            color: context.primary,
            shape: BoxShape.circle,
          ),
          selectedTextStyle:
              context.bodyMediumW(600).copyWith(color: context.surface),
          defaultTextStyle: context.bodyMediumW(500),
          weekendTextStyle: context.bodyMediumW(500),
          disabledTextStyle: context.bodyMediumW(500).copyWith(
                color: context.onSurface.withValues(alpha: 0.3),
              ),
        ),
        headerStyle: HeaderStyle(
          formatButtonVisible:
              disableFormatButton ? false : formatButtonVisible,
          titleCentered: true,
          titleTextStyle: context.bodyLargeW(600),
        ),
        weekendDays: effectiveWeekendDays,
        startingDayOfWeek: effectiveStartingDay,
        pageJumpingEnabled: true,
        pageAnimationEnabled: true,
        sixWeekMonthsEnforced: false,
        shouldFillViewport: false,
        calendarBuilders: CalendarBuilders(
          outsideBuilder: (context, day, focusedDay) => Container(),
        ),
      ),
    );
  }

  bool _isValidDay(DateTime day) {
    if (showAllDays) return true;

    return day.weekday >= DateTime.monday && day.weekday <= DateTime.friday;
  }

  void _handleDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!showAllDays && _isWeekend(selectedDay)) {
      final nextMonday = _getNextMonday(selectedDay);
      onDaySelected(nextMonday, nextMonday);
    } else {
      onDaySelected(selectedDay, focusedDay);
    }
  }

  bool _isWeekend(DateTime day) {
    return day.weekday == DateTime.saturday || day.weekday == DateTime.sunday;
  }

  DateTime _getNextMonday(DateTime date) {
    final daysUntilMonday = DateTime.monday - date.weekday;
    final daysToAdd =
        daysUntilMonday <= 0 ? daysUntilMonday + 7 : daysUntilMonday;
    return date.add(Duration(days: daysToAdd));
  }
}
