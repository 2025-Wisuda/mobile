import 'package:easy_localization/easy_localization.dart' as i18n;

/// Mixin for comprehensive form validation logic with internationalization support.
///
/// This mixin follows the Single Responsibility Principle by being solely
/// responsible for validation rules and error message generation. It provides
/// a comprehensive set of validation methods commonly needed in mobile applications.
///
/// **Key Features:**
/// - Internationalized error messages using easy_localization
/// - Common validation patterns (email, password, phone, etc.)
/// - Customizable validation rules
/// - Consistent error message format
/// - Extensible for custom validation logic
///
/// **Usage:**
/// ```dart
/// class LoginController extends FormBaseController with ValidationMixin {
///   void validateLoginForm() {
///     final email = getFieldValue('email');
///     final password = getFieldValue('password');
///
///     final emailError = validateEmail(email);
///     final passwordError = validatePassword(password);
///
///     setFieldError('email', emailError);
///     setFieldError('password', passwordError);
///
///     validateForm(); // Update overall form state
///   }
/// }
/// ```
///
/// **Internationalization:**
/// This mixin relies on easy_localization keys. Ensure your translation files
/// contain the required validation keys:
///
/// ```json
/// {
///   "validator": {
///     "required": "{field} is required",
///     "required.generic": "This field is required",
///     "email": {
///       "required": "Email is required",
///       "invalid": "Please enter a valid email address"
///     },
///     "password": {
///       "required": "Password is required",
///       "minLegth',": "Password must be at least {length} characters",
///       "weak": "Password must contain uppercase, lowercase, number and special character"
///     }
///   }
/// }
/// ```
///
/// **Why SRP?**
/// This mixin has only one reason to change: when validation requirements
/// change. It doesn't handle form management, submission, or UI logic -
/// those are handled by separate mixins or controllers.
mixin ValidationMixin {
  /// Validates that a field is not empty
  ///
  /// This is the most basic validation rule, checking that a required
  /// field has been filled with non-whitespace content.
  ///
  /// **Usage:**
  /// ```dart
  /// final error = validateRequired(nameField.text, fieldName: 'Name');
  /// if (error.isNotEmpty) {
  ///   setFieldError('name', error);
  /// }
  /// ```
  ///
  /// [value] The field value to validate
  /// [fieldName] Optional field name for personalized error messages
  ///
  /// Returns empty string if valid, error message if invalid
  String validateRequired(String value, {String? fieldName}) {
    if (value.trim().isEmpty) {
      return fieldName != null
          ? i18n.tr('validator.required', namedArgs: {'field': fieldName})
          : i18n.tr('validator.requiredGeneric');
    }
    return '';
  }

  /// Validates email format using RFC-compliant regex
  ///
  /// Checks both that the field is not empty and that it matches
  /// a valid email format pattern.
  ///
  /// **Usage:**
  /// ```dart
  /// final emailError = validateEmail(emailController.text);
  /// setFieldError('email', emailError);
  /// ```
  ///
  /// [value] The email value to validate
  ///
  /// Returns empty string if valid, error message if invalid
  String validateEmail(String value) {
    if (value.trim().isEmpty) {
      return i18n.tr('validator.email.required');
    }

    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value.trim())) {
      return i18n.tr('validator.email.invalid');
    }
    return '';
  }

  /// Validates password strength with customizable requirements
  ///
  /// Checks password against multiple criteria:
  /// - Minimum length (default 8 characters)
  /// - Contains uppercase letter
  /// - Contains lowercase letter
  /// - Contains number
  /// - Contains special character
  ///
  /// **Usage:**
  /// ```dart
  /// // Basic validation
  /// final passwordError = validatePassword(passwordController.text);
  ///
  /// // Custom minimum length
  /// final passwordError = validatePassword(passwordController.text, minLength: 12);
  ///
  /// // Skip strength check for simple forms
  /// final passwordError = validatePassword(passwordController.text, requireStrong: false);
  /// ```
  ///
  /// [value] The password value to validate
  /// [minLength] Minimum required length (default: 8)
  /// [requireStrong] Whether to enforce strong password rules (default: true)
  ///
  /// Returns empty string if valid, error message if invalid
  String validatePassword(
    String value, {
    int minLength = 8,
    bool requireStrong = true,
  }) {
    if (value.isEmpty) {
      return i18n.tr('validator.password.required');
    }

    if (value.length < minLength) {
      return i18n.tr(
        'validator.password.minLegth',
        namedArgs: {'length': minLength.toString()},
      );
    }

    if (requireStrong) {
      // Check for at least one uppercase letter
      if (!RegExp(r'[A-Z]').hasMatch(value)) {
        return i18n.tr('validator.password.weak');
      }

      // Check for at least one lowercase letter
      if (!RegExp(r'[a-z]').hasMatch(value)) {
        return i18n.tr('validator.password.weak');
      }

      // Check for at least one digit
      if (!RegExp(r'[0-9]').hasMatch(value)) {
        return i18n.tr('validator.password.weak');
      }

      // Check for at least one special character
      if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
        return i18n.tr('validator.password.weak');
      }
    }

    return '';
  }

  /// Validates password confirmation matches original password
  ///
  /// Ensures that password confirmation field matches the original
  /// password field, commonly used in registration forms.
  ///
  /// **Usage:**
  /// ```dart
  /// final confirmError = validatePasswordConfirmation(
  ///   passwordController.text,
  ///   confirmPasswordController.text,
  /// );
  /// setFieldError('confirmPassword', confirmError);
  /// ```
  ///
  /// [password] The original password value
  /// [confirmation] The password confirmation value
  ///
  /// Returns empty string if valid, error message if invalid
  String validatePasswordConfirmation(String password, String confirmation) {
    if (confirmation.isEmpty) {
      return i18n.tr('validator.passwordConfirmation.required');
    }

    if (password != confirmation) {
      return i18n.tr('validator.passwordConfirmation.notMatch');
    }

    return '';
  }

  /// Validates minimum length requirement
  ///
  /// Checks that a field meets minimum character length requirements.
  ///
  /// **Usage:**
  /// ```dart
  /// final error = validateMinLength(bioController.text, 10, fieldName: 'Bio');
  /// ```
  ///
  /// [value] The field value to validate
  /// [minLength] The minimum required length
  /// [fieldName] Optional field name for personalized error messages
  ///
  /// Returns empty string if valid, error message if invalid
  String validateMinLength(String value, int minLength, {String? fieldName}) {
    if (value.length < minLength) {
      return fieldName != null
          ? i18n.tr(
            'validator.minLength',
            namedArgs: {'field': fieldName, 'length': minLength.toString()},
          )
          : i18n.tr(
            'validator.minLengthGeneric',
            namedArgs: {'length': minLength.toString()},
          );
    }
    return '';
  }

  /// Validates maximum length requirement
  ///
  /// Checks that a field doesn't exceed maximum character length limits.
  ///
  /// **Usage:**
  /// ```dart
  /// final error = validateMaxLength(titleController.text, 100, fieldName: 'Title');
  /// ```
  ///
  /// [value] The field value to validate
  /// [maxLength] The maximum allowed length
  /// [fieldName] Optional field name for personalized error messages
  ///
  /// Returns empty string if valid, error message if invalid
  String validateMaxLength(String value, int maxLength, {String? fieldName}) {
    if (value.length > maxLength) {
      return fieldName != null
          ? i18n.tr(
            'validator.maxLength',
            namedArgs: {'field': fieldName, 'length': maxLength.toString()},
          )
          : i18n.tr(
            'validator.maxLengthGeneric',
            namedArgs: {'length': maxLength.toString()},
          );
    }
    return '';
  }

  /// Validates Indonesian phone number format
  ///
  /// Accepts formats like:
  /// - 08123456789
  /// - +628123456789
  /// - 0812-3456-789 (automatically cleaned)
  ///
  /// **Usage:**
  /// ```dart
  /// final phoneError = validatePhoneNumber(phoneController.text);
  /// setFieldError('phone', phoneError);
  /// ```
  ///
  /// [value] The phone number value to validate
  ///
  /// Returns empty string if valid, error message if invalid
  String validatePhoneNumber(String value) {
    if (value.trim().isEmpty) {
      return i18n.tr('validator.phone.required');
    }

    // Remove all non-digit characters
    final cleanPhone = value.replaceAll(RegExp(r'[^\d]'), '');

    // Check Indonesian phone format (08xxxxxxxxxx or 628xxxxxxxxxx)
    if (!RegExp(r'^(08|628)\d{8,13}$').hasMatch(cleanPhone)) {
      return i18n.tr('validator.phone.invalid');
    }

    return '';
  }

  /// Validates date format (YYYY-MM-DD or ISO 8601)
  ///
  /// Checks that the provided date string can be parsed as a valid date.
  ///
  /// **Usage:**
  /// ```dart
  /// final dateError = validateDate(dateController.text);
  /// setFieldError('birthDate', dateError);
  /// ```
  ///
  /// [value] The date value to validate
  ///
  /// Returns empty string if valid, error message if invalid
  String validateDate(String value) {
    if (value.trim().isEmpty) {
      return i18n.tr('validator.date.required');
    }

    try {
      DateTime.parse(value);
      return '';
    } catch (e) {
      return i18n.tr('validator.date.invalid');
    }
  }

  /// Validates date range (start date should be before end date)
  ///
  /// Ensures that a start date comes before an end date, commonly
  /// used for event scheduling or booking forms.
  ///
  /// **Usage:**
  /// ```dart
  /// final rangeError = validateDateRange(
  ///   startDateController.text,
  ///   endDateController.text,
  /// );
  /// ```
  ///
  /// [startDate] The start date value
  /// [endDate] The end date value
  ///
  /// Returns empty string if valid, error message if invalid
  String validateDateRange(String startDate, String endDate) {
    if (startDate.isEmpty || endDate.isEmpty) {
      return i18n.tr('validator.dateRange.required');
    }

    try {
      final start = DateTime.parse(startDate);
      final end = DateTime.parse(endDate);

      if (start.isAfter(end)) {
        return i18n.tr('validator.dateRange.invalid');
      }

      return '';
    } catch (e) {
      return i18n.tr('validator.dateRange.parseError');
    }
  }

  /// Validates numeric value (integer or decimal)
  ///
  /// Checks that a field contains a valid numeric value.
  ///
  /// **Usage:**
  /// ```dart
  /// final priceError = validateNumeric(priceController.text, fieldName: 'Price');
  /// setFieldError('price', priceError);
  /// ```
  ///
  /// [value] The numeric value to validate
  /// [fieldName] Optional field name for personalized error messages
  ///
  /// Returns empty string if valid, error message if invalid
  String validateNumeric(String value, {String? fieldName}) {
    if (value.trim().isEmpty) {
      return fieldName != null
          ? i18n.tr(
            'validator.numeric.required',
            namedArgs: {'field': fieldName},
          )
          : i18n.tr('validator.numeric.requiredGeneric');
    }

    if (double.tryParse(value) == null) {
      return i18n.tr('validator.numeric.invalid');
    }

    return '';
  }

  /// Validates positive number (greater than zero)
  ///
  /// Checks that a field contains a valid positive numeric value.
  /// Useful for prices, quantities, ages, etc.
  ///
  /// **Usage:**
  /// ```dart
  /// final ageError = validatePositiveNumber(ageController.text, fieldName: 'Age');
  /// setFieldError('age', ageError);
  /// ```
  ///
  /// [value] The numeric value to validate
  /// [fieldName] Optional field name for personalized error messages
  ///
  /// Returns empty string if valid, error message if invalid
  String validatePositiveNumber(String value, {String? fieldName}) {
    final numericError = validateNumeric(value, fieldName: fieldName);
    if (numericError.isNotEmpty) return numericError;

    final number = double.parse(value);
    if (number <= 0) {
      return i18n.tr('validator.positiveNumber.invalid');
    }

    return '';
  }
}
