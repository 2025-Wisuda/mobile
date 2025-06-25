import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';

enum TimeSlotStatus {
  available,
  selected,
  booked,
  disabled,
}

extension TimeSlotStatusExtension on TimeSlotStatus {
  String? getTooltip(String timeString) {
    switch (this) {
      case TimeSlotStatus.booked:
        return 'roomBooking'.message('timeSlotBooked');
      case TimeSlotStatus.disabled:
        return 'roomBooking'.message('timeSlotDisabled');
      default:
        return null;
    }
  }

  bool get isSelectable => this == TimeSlotStatus.available;

  Color getSlotColor(BuildContext context, bool isSelected, bool isInRange) {
    if (isSelected) {
      return context.primary;
    } else if (isInRange) {
      return context.primary.withValues(alpha: 0.3);
    }

    switch (this) {
      case TimeSlotStatus.available:
        return context.primary.withValues(alpha: 0.1);
      case TimeSlotStatus.selected:
        return context.primary;
      case TimeSlotStatus.booked:
      case TimeSlotStatus.disabled:
        return context.onSurface.withValues(alpha: 0.05);
    }
  }

  Color getSlotBorderColor(
      BuildContext context, bool isSelected, bool isInRange) {
    if (isSelected) {
      return context.primary;
    } else if (isInRange) {
      return context.primary.withValues(alpha: 0.5);
    }

    switch (this) {
      case TimeSlotStatus.available:
        return context.outline.withValues(alpha: 0.3);
      case TimeSlotStatus.selected:
        return context.primary;
      case TimeSlotStatus.booked:
      case TimeSlotStatus.disabled:
        return context.onSurface.withValues(alpha: 0.15);
    }
  }

  Color getSlotTextColor(
      BuildContext context, bool isSelected, bool isInRange) {
    if (isSelected) {
      return context.onPrimary;
    } else if (isInRange) {
      return context.primary;
    }

    switch (this) {
      case TimeSlotStatus.available:
        return context.onSurface;
      case TimeSlotStatus.selected:
        return context.onPrimary;
      case TimeSlotStatus.booked:
      case TimeSlotStatus.disabled:
        return context.onSurface.withValues(alpha: 0.4);
    }
  }

  String get legendLabel {
    switch (this) {
      case TimeSlotStatus.available:
        return 'common'.message('available');
      case TimeSlotStatus.selected:
        return 'common'.message('selected');
      case TimeSlotStatus.booked:
        return 'common'.message('booked');
      case TimeSlotStatus.disabled:
        return 'common'.message('disabled');
    }
  }

  IconData get legendIcon {
    switch (this) {
      case TimeSlotStatus.available:
        return Icons.schedule;
      case TimeSlotStatus.selected:
        return Icons.check_circle_outline;
      case TimeSlotStatus.booked:
        return Icons.block;
      case TimeSlotStatus.disabled:
        return Icons.remove_circle_outline;
    }
  }

  Color getLegendColor(BuildContext context) {
    switch (this) {
      case TimeSlotStatus.available:
        return context.primary.withValues(alpha: 0.2);
      case TimeSlotStatus.selected:
        return context.primary;
      case TimeSlotStatus.booked:
        return context.error.withValues(alpha: 0.7);
      case TimeSlotStatus.disabled:
        return context.onSurface.withValues(alpha: 0.3);
    }
  }
}
