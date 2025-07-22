import 'package:easy_localization/easy_localization.dart' as i18n;

import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';
import 'package:mobile/shared/helpers/helper.dart';

/// GetX-only Validator Mixin: clean, stateless, and ready for GetxController.
///
/// Use this mixin in your GetxController for form field validation.
/// All methods are stateless helpers, no Rx needed.
///
/// Example usage:
/// ```dart
/// class LoginController extends GetxController with GetValidatorMixin {
///   String? validateUsername(String? value) => validateRequired(value, 'Username');
/// }
/// ```
mixin GetValidatorMixin {
  /// Validate that a field is not empty or null
  String? validateRequired(String? value, String fieldName,
      {String? customMessage}) {
    if (value == null || value.trim().isEmpty) {
      return customMessage ??
          i18n.tr('common.form.validation.field.required',
              namedArgs: {'fieldName': fieldName});
    }
    return null;
  }

  /// Validate username field with common username rules
  String? validateUsername(String? value, {String? requiredMessage}) {
    final requiredCheck =
        validateRequired(value, 'Username', customMessage: requiredMessage);
    if (requiredCheck != null) return requiredCheck;
    final username = value!.trim();
    if (username.length < 3) {
      return i18n.tr('common.form.validation.username.minLength');
    }
    if (username.length > 20) {
      return i18n.tr('common.form.validation.username.maxLength');
    }
    final validPattern = RegExp(r'^[a-zA-Z0-9_]+$');
    if (!validPattern.hasMatch(username)) {
      return i18n.tr('common.form.validation.username.invalidCharacters');
    }
    return null;
  }

  /// Validate password field with security requirements
  String? validatePassword(String? value, {String? requiredMessage}) {
    final requiredCheck =
        validateRequired(value, 'Password', customMessage: requiredMessage);
    if (requiredCheck != null) return requiredCheck;
    final password = value!;
    if (password.length < 8) {
      return i18n.tr('common.form.validation.password.minLength');
    }
    if (!RegExp(r'[A-Z]').hasMatch(password)) {
      return i18n.tr('common.form.validation.password.requiresUppercase');
    }
    if (!RegExp(r'[a-z]').hasMatch(password)) {
      return i18n.tr('common.form.validation.password.requiresLowercase');
    }
    if (!RegExp(r'[0-9]').hasMatch(password)) {
      return i18n.tr('common.form.validation.password.requiresNumber');
    }
    if (!RegExp(r'[!@#\$%^&*(),.?":{}|<>]').hasMatch(password)) {
      return i18n.tr('common.form.validation.password.requiresSpecialChar');
    }
    return null;
  }

  /// Validate password confirmation field
  String? validatePasswordConfirmation(String? value, String originalPassword) {
    final requiredCheck = validateRequired(value, 'Password confirmation');
    if (requiredCheck != null) return requiredCheck;
    if (value != originalPassword) {
      return i18n.tr('common.form.validation.password.noMatch');
    }
    return null;
  }

  /// Validate minimum length
  String? validateMinLength(String? value, int minLength, String fieldName) {
    final requiredCheck = validateRequired(value, fieldName);
    if (requiredCheck != null) return requiredCheck;
    if (value!.trim().length < minLength) {
      return i18n.tr('common.form.validation.field.minLength', namedArgs: {
        'fieldName': fieldName,
        'minLength': minLength.toString()
      });
    }
    return null;
  }

  /// Validate maximum length
  String? validateMaxLength(String? value, int maxLength, String fieldName) {
    if (value != null && value.trim().length > maxLength) {
      return i18n.tr('common.form.validation.field.maxLength', namedArgs: {
        'fieldName': fieldName,
        'maxLength': maxLength.toString()
      });
    }
    return null;
  }

  /// Validate email field with proper email format
  String? validateEmail(String? value, {String? requiredMessage}) {
    final requiredCheck =
        validateRequired(value, 'Email', customMessage: requiredMessage);
    if (requiredCheck != null) return requiredCheck;
    final email = value!.trim();
    final emailPattern =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}');
    if (!emailPattern.hasMatch(email)) {
      return i18n.tr('common.form.validation.email.invalid');
    }
    return null;
  }

  /// Validate date field to ensure it's not null
  String? validateDateRequired(DateTime? date, String fieldName,
      {String? customMessage}) {
    if (date == null) {
      return customMessage ??
          i18n.tr('common.form.validation.field.required',
              namedArgs: {'fieldName': fieldName});
    }
    return null;
  }

  /// Validate that start date is before end date
  String? validateDateRange(DateTime? startDate, DateTime? endDate,
      {String startFieldName = 'Start date',
      String endFieldName = 'End date'}) {
    if (startDate != null && endDate != null) {
      if (startDate.isAfter(endDate)) {
        return i18n.tr('common.form.validation.date.beforeOther', namedArgs: {
          'startFieldName': startFieldName,
          'endFieldName': endFieldName
        });
      }
    }
    return null;
  }

  /// Validate that a date is not in the past
  String? validateDateNotPast(DateTime? date, String fieldName,
      {bool allowToday = true}) {
    if (date == null) return null;
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final dateOnly = DateTime(date.year, date.month, date.day);
    if (allowToday) {
      if (dateOnly.isBefore(today)) {
        return i18n.tr('common.form.validation.date.notPast',
            namedArgs: {'fieldName': fieldName});
      }
    } else {
      if (dateOnly.isBefore(today) || dateOnly.isAtSameMomentAs(today)) {
        return i18n.tr('common.form.validation.date.mustBeFuture',
            namedArgs: {'fieldName': fieldName});
      }
    }
    return null;
  }

  /// Validate that a date is within a specific range
  String? validateDateInRange(
      DateTime? date, DateTime? minDate, DateTime? maxDate, String fieldName) {
    if (date == null) return null;
    if (minDate != null && date.isBefore(minDate)) {
      return i18n.tr('common.form.validation.date.afterMin',
          namedArgs: {'fieldName': fieldName, 'minDate': _formatDate(minDate)});
    }
    if (maxDate != null && date.isAfter(maxDate)) {
      return i18n.tr('common.form.validation.date.beforeMax',
          namedArgs: {'fieldName': fieldName, 'maxDate': _formatDate(maxDate)});
    }
    return null;
  }

  /// Helper method to format date for error messages
  String _formatDate(DateTime date) => DateHelper.formatDateWithYear(date);

  /// Validate if selected time range is within available time slots
  String? validateTimeSlotAvailability(String selectedStart, String selectedEnd,
      List<LabAvailabilityEntity> availabilitySlots) {
    if (selectedStart.isEmpty || selectedEnd.isEmpty) return null;
    final validSlots = availabilitySlots
        .where((slot) =>
            slot.startTime != null &&
            slot.endTime != null &&
            slot.startTime!.isNotEmpty &&
            slot.endTime!.isNotEmpty)
        .toList();
    if (validSlots.isEmpty) return null;
    final selectedStartMinutes = _timeToMinutes(selectedStart);
    final selectedEndMinutes = _timeToMinutes(selectedEnd);
    for (final slot in validSlots) {
      final slotStartMinutes = _timeToMinutes(slot.startTime!);
      final slotEndMinutes = _timeToMinutes(slot.endTime!);
      if (selectedStartMinutes >= slotStartMinutes &&
          selectedEndMinutes <= slotEndMinutes) {
        return null;
      }
    }
    return i18n.tr('common.form.validation.time.conflictsWithBookings');
  }

  /// Get conflict message for invalid time selection
  String getTimeConflictMessage(String selectedStart, String selectedEnd,
      List<LabAvailabilityEntity> availabilitySlots) {
    final validSlots = availabilitySlots
        .where((slot) =>
            slot.startTime != null &&
            slot.endTime != null &&
            slot.startTime!.isNotEmpty &&
            slot.endTime!.isNotEmpty)
        .toList();
    if (validSlots.isEmpty) {
      return i18n.tr('common.form.validation.time.noAvailableSlots');
    }
    final conflicts = <String>[];
    final selectedStartMinutes = _timeToMinutes(selectedStart);
    final selectedEndMinutes = _timeToMinutes(selectedEnd);
    for (int i = 0; i < validSlots.length - 1; i++) {
      final currentSlotEnd = _timeToMinutes(validSlots[i].endTime!);
      final nextSlotStart = _timeToMinutes(validSlots[i + 1].startTime!);
      if (selectedStartMinutes < nextSlotStart &&
          selectedEndMinutes > currentSlotEnd) {
        conflicts
            .add("${validSlots[i].endTime} - ${validSlots[i + 1].startTime}");
      }
    }
    if (conflicts.isNotEmpty) {
      return i18n.tr('common.form.validation.time.conflictsWithPeriod',
          namedArgs: {'periods': conflicts.join(', ')});
    }
    return i18n.tr('common.form.validation.time.notAvailable');
  }

  /// Get nearest valid end time for given start time
  String? getNearestValidEndTime(
      String startTime, List<LabAvailabilityEntity> availabilitySlots) {
    final validSlots = availabilitySlots
        .where((slot) =>
            slot.startTime != null &&
            slot.endTime != null &&
            slot.startTime!.isNotEmpty &&
            slot.endTime!.isNotEmpty)
        .toList();
    final startMinutes = _timeToMinutes(startTime);
    for (final slot in validSlots) {
      final slotStartMinutes = _timeToMinutes(slot.startTime!);
      final slotEndMinutes = _timeToMinutes(slot.endTime!);
      if (startMinutes >= slotStartMinutes && startMinutes < slotEndMinutes) {
        return slot.endTime;
      }
    }
    return null;
  }

  /// Converts time string (HH:MM format) to minutes since midnight
  int _timeToMinutes(String time) {
    final parts = time.split(':');
    return int.parse(parts[0]) * 60 + int.parse(parts[1]);
  }
}
