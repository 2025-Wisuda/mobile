// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';

// enum DutyAttendanceStatusEnum {
//   scheduled('Belum Hadir', 'scheduled'),
//   present('Hadir', 'present'),
//   late('Terlambat', 'late'),
//   absent('Tidak Hadir', 'absent'),
//   earlyLeave('Pulang Lebih Awal', 'earlyLeave');

//   const DutyAttendanceStatusEnum(this.value, this.labelKey);
//   final String value;
//   final String labelKey;

//   String getLabel() => tr('features.dutySchedule.status.$labelKey');

//   static DutyAttendanceStatusEnum? fromString(String? value) {
//     if (value == null) return null;
//     for (DutyAttendanceStatusEnum status in DutyAttendanceStatusEnum.values) {
//       if (status.value == value ||
//           status.labelKey == value ||
//           status.name == value.toLowerCase()) {
//         return status;
//       }
//     }
//     return null;
//   }

//   bool get isScheduled => this == DutyAttendanceStatusEnum.scheduled;
//   bool get isPresent => this == DutyAttendanceStatusEnum.present;
//   bool get isLate => this == DutyAttendanceStatusEnum.late;
//   bool get isAbsent => this == DutyAttendanceStatusEnum.absent;
//   bool get isNotYetPresent => this == DutyAttendanceStatusEnum.scheduled;
//   bool get isEarlyLeave => this == DutyAttendanceStatusEnum.earlyLeave;

//   bool get isCompleted => isPresent || isLate || isAbsent || isEarlyLeave;
//   bool get canClockIn => isScheduled;
//   bool get canClockOut => isPresent || isLate;
//   bool get isPresentVariant => isPresent || isLate || isEarlyLeave;

//   Color getBackgroundColor(BuildContext context) {
//     switch (this) {
//       case DutyAttendanceStatusEnum.present:
//         return context.surface.withValues(alpha:0.1);
//       case DutyAttendanceStatusEnum.late:
//         return context.surface.withValues(alpha:0.1);
//       case DutyAttendanceStatusEnum.absent:
//         return Theme.of(context).colorScheme.error.withValues(alpha:0.1);
//       case DutyAttendanceStatusEnum.scheduled:
//         return Theme.of(context).colorScheme.outline.withValues(alpha:0.1);
//       case DutyAttendanceStatusEnum.earlyLeave:
//         return context.surface.withValues(alpha:0.1);
//     }
//   }

//   Color getTextColor(BuildContext context) {
//     switch (this) {
//       case DutyAttendanceStatusEnum.present:
//         return context.surface;
//       case DutyAttendanceStatusEnum.late:
//         return context.surface;
//       case DutyAttendanceStatusEnum.absent:
//         return Theme.of(context).colorScheme.error;
//       case DutyAttendanceStatusEnum.scheduled:
//         return Theme.of(context).colorScheme.onSurface;
//       case DutyAttendanceStatusEnum.earlyLeave:
//         return context.surface;
//     }
//   }

//   Color getContainerColor(BuildContext context) {
//     switch (this) {
//       case DutyAttendanceStatusEnum.present:
//         return Theme.of(context).colorScheme.tertiaryContainer;
//       case DutyAttendanceStatusEnum.late:
//         return context.surface.withValues(alpha:0.2);
//       case DutyAttendanceStatusEnum.absent:
//         return Theme.of(context).colorScheme.errorContainer;
//       case DutyAttendanceStatusEnum.scheduled:
//         return Theme.of(context).colorScheme.outline.withValues(alpha:0.2);
//       case DutyAttendanceStatusEnum.earlyLeave:
//         return context.surface.withValues(alpha:0.2);
//     }
//   }

//   Color getOnContainerColor(BuildContext context) {
//     switch (this) {
//       case DutyAttendanceStatusEnum.present:
//         return Theme.of(context).colorScheme.tertiary;
//       case DutyAttendanceStatusEnum.late:
//         return context.surface.shade700;
//       case DutyAttendanceStatusEnum.absent:
//         return Theme.of(context).colorScheme.error;
//       case DutyAttendanceStatusEnum.scheduled:
//         return Theme.of(context).colorScheme.onSurface;
//       case DutyAttendanceStatusEnum.earlyLeave:
//         return context.surface.shade700;
//     }
//   }
// }
