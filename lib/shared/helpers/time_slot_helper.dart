import 'package:flutter/material.dart';

import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';
import 'package:mobile/shared/helpers/helper.dart';

class TimeSlotHelper {
  /// Generates 30-minute time slots from availability data
  static List<String> generateTimeSlots(
      List<LabAvailabilityEntity> availability) {
    final List<String> timeSlots = [];

    for (final slot in availability) {
      if (slot.startTime != null && slot.endTime != null) {
        final startTime = TimeHelper.parseTimeString(slot.startTime!);
        final endTime = TimeHelper.parseTimeString(slot.endTime!);

        if (startTime != null && endTime != null) {
          timeSlots.addAll(_generateSlotsFromRange(startTime, endTime));
        }
      }
    }

    return timeSlots..sort();
  }

  /// Generates available end time slots based on selected start time
  static List<String> getAvailableEndTimes(
    List<LabAvailabilityEntity> availability,
    String selectedStartTime,
  ) {
    final startTime = TimeHelper.parseTimeString(selectedStartTime);
    if (startTime == null) return [];

    final List<String> endSlots = [];

    for (final slot in availability) {
      if (slot.startTime != null && slot.endTime != null) {
        final slotStart = TimeHelper.parseTimeString(slot.startTime!);
        final slotEnd = TimeHelper.parseTimeString(slot.endTime!);

        if (slotStart != null && slotEnd != null) {
          if (_isTimeInRange(startTime, slotStart, slotEnd)) {
            final startMinutes = startTime.hour * 60 + startTime.minute + 30;
            final endMinutes = slotEnd.hour * 60 + slotEnd.minute;

            for (int minutes = startMinutes;
                minutes <= endMinutes;
                minutes += 30) {
              if (minutes <= 24 * 60) {
                final hour = minutes ~/ 60;
                final minute = minutes % 60;
                final timeString = TimeHelper.formatTimeOfDay(
                    TimeOfDay(hour: hour, minute: minute));
                endSlots.add(timeString);
              }
            }
          }
        }
      }
    }

    return endSlots..sort();
  }

  /// Converts time string (HH:MM format) to minutes since midnight
  ///
  /// Example:
  /// - "07:30" returns 450 (7*60 + 30)
  /// - "12:00" returns 720 (12*60 + 0)
  /// - "18:15" returns 1095 (18*60 + 15)
  ///
  /// This is useful for time calculations and comparisons
  static int timeToMinutes(String time) {
    final parts = time.split(':');
    return int.parse(parts[0]) * 60 + int.parse(parts[1]);
  }

  /// Checks if a specific time falls within a selected time range
  ///
  /// Returns `true` if the given time is between startTime and endTime (exclusive).
  /// This is commonly used to highlight time slots that are part of a selected range.
  ///
  /// Parameters:
  /// - [time]: The time to check (format: "HH:MM")
  /// - [startTime]: The start of the range (format: "HH:MM")
  /// - [endTime]: The end of the range (format: "HH:MM")
  ///
  /// Example:
  /// ```dart
  /// isTimeInRange("09:00", "08:30", "10:00") // returns true
  /// isTimeInRange("08:30", "08:30", "10:00") // returns false (not inclusive)
  /// isTimeInRange("10:00", "08:30", "10:00") // returns false (not inclusive)
  /// ```
  static bool isTimeInRange(String time, String? startTime, String? endTime) {
    if (startTime == null || endTime == null) return false;

    final timeValue = timeToMinutes(time);
    final startValue = timeToMinutes(startTime);
    final endValue = timeToMinutes(endTime);

    return timeValue > startValue && timeValue < endValue;
  }

  /// Checks if a time matches either the selected start time or end time
  ///
  /// This is used to determine if a time slot should be visually marked as selected.
  /// Returns `true` if the time exactly matches either selectedStartTime or selectedEndTime.
  ///
  /// Parameters:
  /// - [time]: The time to check (format: "HH:MM")
  /// - [selectedStartTime]: The selected start time (format: "HH:MM")
  /// - [selectedEndTime]: The selected end time (format: "HH:MM")
  ///
  /// Example:
  /// ```dart
  /// isTimeSelected("09:00", "09:00", "11:00") // returns true (matches start)
  /// isTimeSelected("11:00", "09:00", "11:00") // returns true (matches end)
  /// isTimeSelected("10:00", "09:00", "11:00") // returns false (in range but not selected)
  /// ```
  static bool isTimeSelected(
      String time, String? selectedStartTime, String? selectedEndTime) {
    return time == selectedStartTime || time == selectedEndTime;
  }

  /// Check if a time falls within a range
  static bool _isTimeInRange(
      TimeOfDay time, TimeOfDay rangeStart, TimeOfDay rangeEnd) {
    final timeMinutes = time.hour * 60 + time.minute;
    final startMinutes = rangeStart.hour * 60 + rangeStart.minute;
    final endMinutes = rangeEnd.hour * 60 + rangeEnd.minute;

    return timeMinutes >= startMinutes && timeMinutes < endMinutes;
  }

  /// Generate 30-minute slots from a time range
  static List<String> _generateSlotsFromRange(
      TimeOfDay startTime, TimeOfDay endTime) {
    final List<String> slots = [];

    final startMinutes = startTime.hour * 60 + startTime.minute;
    final endMinutes = endTime.hour * 60 + endTime.minute;

    for (int minutes = startMinutes; minutes < endMinutes; minutes += 30) {
      final hour = minutes ~/ 60;
      final minute = minutes % 60;

      // Skip if hour exceeds 23 (24-hour format)
      if (hour >= 24) break;

      final timeString =
          TimeHelper.formatTimeOfDay(TimeOfDay(hour: hour, minute: minute));
      slots.add(timeString);
    }

    return slots;
  }
}
