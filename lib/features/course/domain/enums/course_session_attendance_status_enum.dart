import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';

enum _InternalCourseSessionAttendanceStatusEnum {
  present('Hadir', 'present'),
  absent('Tidak Hadir', 'absent'),
  late('Terlambat', 'late');

  const _InternalCourseSessionAttendanceStatusEnum(this.value, this.labelKey);
  final String value;
  final String labelKey;

  // ignore: unused_element
  static _InternalCourseSessionAttendanceStatusEnum? fromString(String? value) {
    if (value == null) return null;
    for (_InternalCourseSessionAttendanceStatusEnum status
        in _InternalCourseSessionAttendanceStatusEnum.values) {
      if (status.value == value) return status;
    }
    return null;
  }
}

class CourseSessionAttendanceStatusEnum {
  // ignore: library_private_types_in_public_api
  static _InternalCourseSessionAttendanceStatusEnum? fromString(String? value) {
    return _InternalCourseSessionAttendanceStatusEnum.fromString(value);
  }

  static String getDisplayText(String? status, {required bool isPast}) {
    final enumValue = fromString(status);
    if (enumValue == null) return 'Unknown';
    return enumValue.value;
  }

  static Color getDisplayColor(BuildContext context, String? status,
      {required bool isPast}) {
    final enumValue = fromString(status);
    if (enumValue == null) return context.outline;

    switch (enumValue) {
      case _InternalCourseSessionAttendanceStatusEnum.present:
        return context.tertiary;
      case _InternalCourseSessionAttendanceStatusEnum.absent:
        return context.error;
      case _InternalCourseSessionAttendanceStatusEnum.late:
        return Colors.orange;
    }
  }

  static Color getSimplifiedDisplayTextColor(
      BuildContext context, String? status,
      {required bool isPast}) {
    final enumValue = fromString(status);
    if (enumValue == null) return context.onSurface;

    switch (enumValue) {
      case _InternalCourseSessionAttendanceStatusEnum.present:
        return context.onTertiary;
      case _InternalCourseSessionAttendanceStatusEnum.absent:
        return context.onError;
      case _InternalCourseSessionAttendanceStatusEnum.late:
        return Colors.white;
    }
  }
}
