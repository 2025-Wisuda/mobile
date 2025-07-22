import 'package:flutter/material.dart';
import 'package:mobile/shared/extensions/extension.dart';

enum DutyAttendanceStatusEnum {
  scheduled('Belum Hadir', 'scheduled'),
  present('Hadir', 'present'),
  late('Terlambat', 'late'),
  absent('Tidak Hadir', 'absent'),
  earlyLeave('Pulang Lebih Awal', 'earlyLeave');

  const DutyAttendanceStatusEnum(this.value, this.labelKey);
  final String value;
  final String labelKey;

  static DutyAttendanceStatusEnum? fromString(String? value) {
    if (value == null) return null;
    return values.firstWhere(
      (e) =>
          e.value == value ||
          e.labelKey == value ||
          e.name == value.toLowerCase(),
      orElse: () => scheduled,
    );
  }

  bool get isScheduled => this == DutyAttendanceStatusEnum.scheduled;
  bool get isPresent => this == DutyAttendanceStatusEnum.present;
  bool get isLate => this == DutyAttendanceStatusEnum.late;
  bool get isAbsent => this == DutyAttendanceStatusEnum.absent;
  bool get isEarlyLeave => this == DutyAttendanceStatusEnum.earlyLeave;

  bool get isCompleted => isPresent || isLate || isAbsent || isEarlyLeave;
  bool get canClockIn => isScheduled;
  bool get canClockOut => isPresent || isLate;
  bool get isPresentVariant => isPresent || isLate || isEarlyLeave;

  String getStatusText({required bool isPast}) {
    if (isPast && isScheduled) {
      return 'dutySchedule'.message('absent');
    }

    if (isPresent) return 'dutySchedule'.message('present');
    if (isLate) return 'dutySchedule'.message('late');
    if (isAbsent) return 'dutySchedule'.message('absent');
    if (isEarlyLeave) return 'dutySchedule'.message('earlyLeave');

    return 'dutySchedule'.message('notYetPresent');
  }

  Color getStatusColor(BuildContext context, {required bool isPast}) {
    if (isPast && isScheduled) {
      return context.errorContainer;
    }

    if (isPresent) return Colors.green.shade50;
    if (isLate) return Colors.orange.shade50;
    if (isAbsent) return Colors.red.shade50;
    if (isEarlyLeave) return Colors.blue.shade50;
    if (isScheduled) return Colors.grey.shade50;

    return context.outline;
  }

  Color getStatusTextColor(BuildContext context, {required bool isPast}) {
    if (isPast && isScheduled) {
      return context.error;
    }

    if (isPresent) return Colors.green.shade600;
    if (isLate) return Colors.orange.shade900;
    if (isAbsent) return Colors.red.shade600;
    if (isEarlyLeave) return Colors.blue.shade600;
    if (isScheduled) return Colors.grey.shade600;

    return context.onSurface;
  }
}
