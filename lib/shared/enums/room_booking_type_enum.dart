import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';

enum RoomBookingTypeEnum {
  seminar('Seminar', 'seminar', Icons.school),
  course('Kelas Reguler', 'course', Icons.class_);

  const RoomBookingTypeEnum(this.value, this.labelKey, this.icon);

  final String value;
  final String labelKey;
  final IconData icon;

  String getLabel() => 'roomBooking'.message(labelKey);

  static List<RoomBookingTypeEnum> getStudentAllowedTypes() {
    return [RoomBookingTypeEnum.seminar];
  }

  static List<RoomBookingTypeEnum> getStaffAllowedTypes() {
    return [RoomBookingTypeEnum.course];
  }

  static List<RoomBookingTypeEnum> getAllTypes() {
    return RoomBookingTypeEnum.values;
  }

  bool get requiresAcademicDetails => this == RoomBookingTypeEnum.seminar;

  bool get isStudentOnly => getStudentAllowedTypes().contains(this);

  bool get isStaffOnly => getStaffAllowedTypes().contains(this);

  static RoomBookingTypeEnum? fromValue(String? value) {
    if (value == null) return null;
    for (final type in RoomBookingTypeEnum.values) {
      if (type.value == value) {
        return type;
      }
    }
    return null;
  }
}
