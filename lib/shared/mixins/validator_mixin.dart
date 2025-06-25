import 'package:easy_localization/easy_localization.dart' as i18n;

import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';
import 'package:mobile/shared/helpers/helper.dart';

/// A mixin that provides common validation methods for form fields.
/// This mixin can be used with any controller that needs form validation.
///
/// Example usage:
/// ```dart
/// class LoginController extends GetxController with ValidatorMixin {
///   String? validateUsername(String? value) => validateRequired(value, 'Username');
///   String? validatePassword(String? value) => validatePasswordField(value);
/// }
/// ```
mixin ValidatorMixin {
  /// Validates that a field is not empty or null.
  ///
  /// Parameters:
  /// - [value]: The value to validate
  /// - [fieldName]: The name of the field for error messages
  /// - [customMessage]: Optional custom error message
  ///
  /// Returns null if valid, error message if invalid.
  String? validateRequired(String? value, String fieldName,
      {String? customMessage}) {
    if (value == null || value.trim().isEmpty) {
      return customMessage ??
          i18n.tr('common.form.validation.field.required', namedArgs: {
            'fieldName': fieldName,
          });
    }
    return null;
  }

  /// Validates username field with common username rules.
  ///
  /// Rules:
  /// - Required field
  /// - Minimum 3 characters
  /// - Maximum 20 characters
  /// - Only alphanumeric characters and underscores allowed
  ///
  /// Returns null if valid, error message if invalid.
  String? validateUsername(String? value, {String? requiredMessage}) {
    // Check if required
    final requiredCheck =
        validateRequired(value, 'Username', customMessage: requiredMessage);
    if (requiredCheck != null) return requiredCheck;

    final username = value!.trim();

    // Check minimum length
    if (username.length < 3) {
      return i18n.tr('common.form.validation.username.minLength');
    }

    // Check maximum length
    if (username.length > 20) {
      return i18n.tr('common.form.validation.username.maxLength');
    }

    // Check valid characters (alphanumeric and underscore only)
    final validPattern = RegExp(r'^[a-zA-Z0-9_]+$');
    if (!validPattern.hasMatch(username)) {
      return i18n.tr('common.form.validation.username.invalidCharacters');
    }

    return null;
  }

  /// Validates password field with security requirements.
  ///
  /// Rules:
  /// - Required field
  /// - Minimum 8 characters
  /// - Must contain at least one uppercase letter
  /// - Must contain at least one lowercase letter
  /// - Must contain at least one number
  /// - Must contain at least one special character
  ///
  /// Returns null if valid, error message if invalid.
  String? validatePassword(String? value, {String? requiredMessage}) {
    // Check if required
    final requiredCheck =
        validateRequired(value, 'Password', customMessage: requiredMessage);
    if (requiredCheck != null) return requiredCheck;

    final password = value!;

    // Check minimum length
    if (password.length < 8) {
      return i18n.tr('common.form.validation.password.minLength');
    }

    // Check for uppercase letter
    if (!RegExp(r'[A-Z]').hasMatch(password)) {
      return i18n.tr('common.form.validation.password.requiresUppercase');
    }

    // Check for lowercase letter
    if (!RegExp(r'[a-z]').hasMatch(password)) {
      return i18n.tr('common.form.validation.password.requiresLowercase');
    }

    // Check for number
    if (!RegExp(r'[0-9]').hasMatch(password)) {
      return i18n.tr('common.form.validation.password.requiresNumber');
    }

    // Check for special character
    if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password)) {
      return i18n.tr('common.form.validation.password.requiresSpecialChar');
    }

    return null;
  }

  /// Validates password confirmation field.
  ///
  /// Parameters:
  /// - [value]: The confirmation password value
  /// - [originalPassword]: The original password to match against
  ///
  /// Returns null if valid, error message if invalid.
  String? validatePasswordConfirmation(String? value, String originalPassword) {
    // Check if required
    final requiredCheck = validateRequired(value, 'Password confirmation');
    if (requiredCheck != null) return requiredCheck;

    // Check if passwords match
    if (value != originalPassword) {
      return i18n.tr('common.form.validation.password.noMatch');
    }

    return null;
  }

  /// Generic method to validate minimum length.
  ///
  /// Parameters:
  /// - [value]: The value to validate
  /// - [minLength]: Minimum required length
  /// - [fieldName]: The name of the field for error messages
  ///
  /// Returns null if valid, error message if invalid.
  String? validateMinLength(String? value, int minLength, String fieldName) {
    final requiredCheck = validateRequired(value, fieldName);
    if (requiredCheck != null) return requiredCheck;

    if (value!.trim().length < minLength) {
      return i18n.tr('common.form.validation.field.minLength', namedArgs: {
        'fieldName': fieldName,
        'minLength': minLength.toString(),
      });
    }
    return null;
  }

  /// Generic method to validate maximum length.
  ///
  /// Parameters:
  /// - [value]: The value to validate
  /// - [maxLength]: Maximum allowed length
  /// - [fieldName]: The name of the field for error messages
  ///
  /// Returns null if valid, error message if invalid.
  String? validateMaxLength(String? value, int maxLength, String fieldName) {
    if (value != null && value.trim().length > maxLength) {
      return i18n.tr('common.form.validation.field.maxLength', namedArgs: {
        'fieldName': fieldName,
        'maxLength': maxLength.toString(),
      });
    }
    return null;
  }

  /// Validates email field with proper email format.
  ///
  /// Rules:
  /// - Required field
  /// - Must be a valid email format
  ///
  /// Returns null if valid, error message if invalid.
  String? validateEmail(String? value, {String? requiredMessage}) {
    // Check if required
    final requiredCheck =
        validateRequired(value, 'Email', customMessage: requiredMessage);
    if (requiredCheck != null) return requiredCheck;

    final email = value!.trim();

    // Check email format
    final emailPattern =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if (!emailPattern.hasMatch(email)) {
      return i18n.tr('common.form.validation.email.invalid');
    }

    return null;
  }

  /// Validates date field to ensure it's not null.
  ///
  /// Parameters:
  /// - [date]: The DateTime value to validate
  /// - [fieldName]: The name of the field for error messages
  /// - [customMessage]: Optional custom error message
  ///
  /// Returns null if valid, error message if invalid.
  String? validateDateRequired(DateTime? date, String fieldName,
      {String? customMessage}) {
    if (date == null) {
      return customMessage ??
          i18n.tr('common.form.validation.field.required', namedArgs: {
            'fieldName': fieldName,
          });
    }
    return null;
  }

  /// Validates that start date is before end date.
  ///
  /// Parameters:
  /// - [startDate]: The start date
  /// - [endDate]: The end date
  /// - [startFieldName]: Name of start date field for error messages
  /// - [endFieldName]: Name of end date field for error messages
  ///
  /// Returns null if valid, error message if invalid.
  String? validateDateRange(DateTime? startDate, DateTime? endDate,
      {String startFieldName = 'Start date',
      String endFieldName = 'End date'}) {
    if (startDate != null && endDate != null) {
      if (startDate.isAfter(endDate)) {
        return i18n.tr('common.form.validation.date.beforeOther', namedArgs: {
          'startFieldName': startFieldName,
          'endFieldName': endFieldName,
        });
      }
    }
    return null;
  }

  /// Validates that a date is not in the past.
  ///
  /// Parameters:
  /// - [date]: The DateTime value to validate
  /// - [fieldName]: The name of the field for error messages
  /// - [allowToday]: Whether today's date is allowed (default: true)
  ///
  /// Returns null if valid, error message if invalid.
  String? validateDateNotPast(DateTime? date, String fieldName,
      {bool allowToday = true}) {
    if (date == null) return null;

    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final dateOnly = DateTime(date.year, date.month, date.day);

    if (allowToday) {
      if (dateOnly.isBefore(today)) {
        return i18n.tr('common.form.validation.date.notPast', namedArgs: {
          'fieldName': fieldName,
        });
      }
    } else {
      if (dateOnly.isBefore(today) || dateOnly.isAtSameMomentAs(today)) {
        return i18n.tr('common.form.validation.date.mustBeFuture', namedArgs: {
          'fieldName': fieldName,
        });
      }
    }
    return null;
  }

  /// Validates that a date is within a specific range.
  ///
  /// Parameters:
  /// - [date]: The DateTime value to validate
  /// - [minDate]: Minimum allowed date
  /// - [maxDate]: Maximum allowed date
  /// - [fieldName]: The name of the field for error messages
  ///
  /// Returns null if valid, error message if invalid.
  String? validateDateInRange(
      DateTime? date, DateTime? minDate, DateTime? maxDate, String fieldName) {
    if (date == null) return null;

    if (minDate != null && date.isBefore(minDate)) {
      return i18n.tr('common.form.validation.date.afterMin', namedArgs: {
        'fieldName': fieldName,
        'minDate': _formatDate(minDate),
      });
    }

    if (maxDate != null && date.isAfter(maxDate)) {
      return i18n.tr('common.form.validation.date.beforeMax', namedArgs: {
        'fieldName': fieldName,
        'maxDate': _formatDate(maxDate),
      });
    }

    return null;
  }

  /// Helper method to format date for error messages.
  String _formatDate(DateTime date) {
    return DateHelper.formatDateWithYear(date);
  }

  /// Validates if selected time range is within available time slots.
  ///
  /// Parameters:
  /// - [selectedStart]: Start time in HH:MM format
  /// - [selectedEnd]: End time in HH:MM format
  /// - [availabilitySlots]: List of available time slots
  ///
  /// Returns null if valid, error message if invalid.
  String? validateTimeSlotAvailability(
    String selectedStart,
    String selectedEnd,
    List<LabAvailabilityEntity> availabilitySlots,
  ) {
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
        return null; // Valid
      }
    }

    return i18n.tr('common.form.validation.time.conflictsWithBookings');
  }

  /// Gets conflict message for invalid time selection.
  ///
  /// Parameters:
  /// - [selectedStart]: Start time in HH:MM format
  /// - [selectedEnd]: End time in HH:MM format
  /// - [availabilitySlots]: List of available time slots
  ///
  /// Returns detailed conflict message.
  String getTimeConflictMessage(
    String selectedStart,
    String selectedEnd,
    List<LabAvailabilityEntity> availabilitySlots,
  ) {
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
      return i18n
          .tr('common.form.validation.time.conflictsWithPeriod', namedArgs: {
        'periods': conflicts.join(', '),
      });
    }

    return i18n.tr('common.form.validation.time.notAvailable');
  }

  /// Gets nearest valid end time for given start time.
  ///
  /// Parameters:
  /// - [startTime]: Start time in HH:MM format
  /// - [availabilitySlots]: List of available time slots
  ///
  /// Returns nearest valid end time or null if none found.
  String? getNearestValidEndTime(
    String startTime,
    List<LabAvailabilityEntity> availabilitySlots,
  ) {
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

  /// Converts time string (HH:MM format) to minutes since midnight.
  int _timeToMinutes(String time) {
    final parts = time.split(':');
    return int.parse(parts[0]) * 60 + int.parse(parts[1]);
  }
}
