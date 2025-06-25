import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';

enum TimeSlotState {
  available,
  selected,
  booked,
  disabled,
}

class TimeSlot {
  final String time;
  final TimeSlotState state;
  final bool isStartSlot;
  final bool isEndSlot;

  const TimeSlot({
    required this.time,
    required this.state,
    this.isStartSlot = false,
    this.isEndSlot = false,
  });

  bool get isAvailable => state == TimeSlotState.available;
  bool get isSelected => state == TimeSlotState.selected;
  bool get isBooked => state == TimeSlotState.booked;
  bool get isDisabled => state == TimeSlotState.disabled;
}

class TimeSlotGridWidget extends StatelessWidget {
  final List<TimeSlot> timeSlots;
  final String? selectedStartTime;
  final String? selectedEndTime;
  final Function(String) onTimeSlotTap;
  final int crossAxisCount;
  final double mainAxisSpacing;
  final double crossAxisSpacing;
  final bool allowRangeSelection;

  const TimeSlotGridWidget({
    super.key,
    required this.timeSlots,
    this.selectedStartTime,
    this.selectedEndTime,
    required this.onTimeSlotTap,
    this.crossAxisCount = 4,
    this.mainAxisSpacing = 8,
    this.crossAxisSpacing = 8,
    this.allowRangeSelection = true,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: mainAxisSpacing,
        crossAxisSpacing: crossAxisSpacing,
        childAspectRatio: 2.5,
      ),
      itemCount: timeSlots.length,
      itemBuilder: (context, index) {
        final timeSlot = timeSlots[index];
        return TimeSlotTile(
          timeSlot: timeSlot,
          isSelected: _isTimeSlotSelected(timeSlot.time),
          isInRange: _isTimeSlotInRange(timeSlot.time),
          onTap: timeSlot.isAvailable || timeSlot.isSelected
              ? () => onTimeSlotTap(timeSlot.time)
              : null,
        );
      },
    );
  }

  bool _isTimeSlotSelected(String time) {
    return time == selectedStartTime || time == selectedEndTime;
  }

  bool _isTimeSlotInRange(String time) {
    if (!allowRangeSelection ||
        selectedStartTime == null ||
        selectedEndTime == null) {
      return false;
    }

    final timeValue = _parseTime(time);
    final startValue = _parseTime(selectedStartTime!);
    final endValue = _parseTime(selectedEndTime!);

    return timeValue > startValue && timeValue < endValue;
  }

  int _parseTime(String time) {
    final parts = time.split(':');
    return int.parse(parts[0]) * 60 + int.parse(parts[1]);
  }
}

class TimeSlotTile extends StatelessWidget {
  final TimeSlot timeSlot;
  final bool isSelected;
  final bool isInRange;
  final VoidCallback? onTap;

  const TimeSlotTile({
    super.key,
    required this.timeSlot,
    required this.isSelected,
    required this.isInRange,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: _getBackgroundColor(context),
          border: Border.all(
            color: _getBorderColor(context),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (timeSlot.isBooked) ...[
                Icon(
                  Icons.lock,
                  size: 12,
                  color: _getTextColor(context),
                ),
                const SizedBox(width: 4),
              ],
              Flexible(
                child: Text(
                  timeSlot.time,
                  style: context.labelSmall().copyWith(
                        color: _getTextColor(context),
                      ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color _getBackgroundColor(BuildContext context) {
    if (isSelected) {
      return context.primary;
    }
    if (isInRange) {
      return context.primary.withValues(alpha: 0.1);
    }
    if (timeSlot.isBooked) {
      return context.errorContainer;
    }
    if (timeSlot.isDisabled) {
      return context.surface.withValues(alpha: 0.3);
    }
    return context.surface;
  }

  Color _getBorderColor(BuildContext context) {
    if (isSelected) {
      return context.primary;
    }
    if (isInRange) {
      return context.primary.withValues(alpha: 0.3);
    }
    if (timeSlot.isBooked) {
      return context.error;
    }
    if (timeSlot.isDisabled) {
      return context.outline.withValues(alpha: 0.3);
    }
    return context.outline.withValues(alpha: 0.5);
  }

  Color _getTextColor(BuildContext context) {
    if (isSelected) {
      return context.onPrimary;
    }
    if (timeSlot.isBooked) {
      return context.onErrorContainer;
    }
    if (timeSlot.isDisabled) {
      return context.onSurface.withValues(alpha: 0.3);
    }
    return context.onSurface;
  }
}
