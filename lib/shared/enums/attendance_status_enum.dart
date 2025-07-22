import 'package:easy_localization/easy_localization.dart';

enum AttendanceStatusEnum {
  scheduled('Terjadwal', 'scheduled'),
  present('Hadir', 'present'),
  late('Terlambat', 'late'),
  absent('Tidak Hadir', 'absent');

  const AttendanceStatusEnum(this.value, this.labelKey);
  final String value;
  final String labelKey;

  String getLabel() => tr('features.duty.attendance.status.$labelKey');

  static AttendanceStatusEnum? fromString(String? value) {
    if (value == null) return null;
    for (AttendanceStatusEnum status in AttendanceStatusEnum.values) {
      if (status.value == value ||
          status.labelKey == value ||
          status.name == value.toLowerCase()) {
        return status;
      }
    }
    return null;
  }

  bool get isScheduled => this == AttendanceStatusEnum.scheduled;
  bool get isPresent => this == AttendanceStatusEnum.present;
  bool get isLate => this == AttendanceStatusEnum.late;
  bool get isAbsent => this == AttendanceStatusEnum.absent;

  bool get isCompleted => isPresent || isLate || isAbsent;
  bool get canClockIn => isScheduled;
}
