import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';

enum AttendanceLevelEnum {
  excellent,
  good,
  poor;

  static AttendanceLevelEnum fromRate(double rate) {
    if (rate >= 80) return AttendanceLevelEnum.excellent;
    if (rate >= 60) return AttendanceLevelEnum.good;
    return AttendanceLevelEnum.poor;
  }

  Color getColor(BuildContext context) {
    switch (this) {
      case AttendanceLevelEnum.excellent:
        return context.tertiary;
      case AttendanceLevelEnum.good:
        return context.onSurfaceVariant;
      case AttendanceLevelEnum.poor:
        return context.error;
    }
  }

  IconData getIcon() {
    switch (this) {
      case AttendanceLevelEnum.excellent:
        return Icons.emoji_events_rounded;
      case AttendanceLevelEnum.good:
        return Icons.trending_up_rounded;
      case AttendanceLevelEnum.poor:
        return Icons.trending_down_rounded;
    }
  }
}
