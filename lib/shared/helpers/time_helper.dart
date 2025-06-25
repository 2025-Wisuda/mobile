import 'package:flutter/material.dart';

class TimeHelper {
  static const TimeOfDay labStartTime = TimeOfDay(hour: 7, minute: 30);
  static const TimeOfDay labEndTime = TimeOfDay(hour: 18, minute: 0);

  static String formatTimeOfDay(TimeOfDay time) {
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }

  static TimeOfDay? parseTimeString(String timeString) {
    try {
      final parts = timeString.split(':');
      if (parts.length >= 2) {
        final hour = int.parse(parts[0]);
        final minute = int.parse(parts[1]);
        return TimeOfDay(hour: hour, minute: minute);
      }
    } catch (e) {
      return null;
    }
    return null;
  }

  static bool isTimeWithinLabHours(TimeOfDay time) {
    final timeInMinutes = time.hour * 60 + time.minute;
    final startInMinutes = labStartTime.hour * 60 + labStartTime.minute;
    final endInMinutes = labEndTime.hour * 60 + labEndTime.minute;

    return timeInMinutes >= startInMinutes && timeInMinutes <= endInMinutes;
  }

  static bool isValidTimeFormat(String timeString) {
    final regex = RegExp(r'^\d{2}:\d{2}$');
    return regex.hasMatch(timeString);
  }

  static bool isEndTimeAfterStartTime(String startTime, String endTime) {
    final start = parseTimeString(startTime);
    final end = parseTimeString(endTime);

    if (start == null || end == null) return false;

    final startInMinutes = start.hour * 60 + start.minute;
    final endInMinutes = end.hour * 60 + end.minute;

    return endInMinutes > startInMinutes;
  }

  static TimeOfDay constrainToLabHours(TimeOfDay time) {
    final timeInMinutes = time.hour * 60 + time.minute;
    final startInMinutes = labStartTime.hour * 60 + labStartTime.minute;
    final endInMinutes = labEndTime.hour * 60 + labEndTime.minute;

    if (timeInMinutes < startInMinutes) {
      return labStartTime;
    } else if (timeInMinutes > endInMinutes) {
      return labEndTime;
    }

    return time;
  }
}
