import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart' as i18n;

import 'package:mobile/shared/helpers/text_helper.dart';

/// Extension on String to provide shorter method calls for TextHelper
///
/// This extension allows you to call TextHelper methods directly on strings
/// representing feature names, making the code more concise and readable.
///
/// Example usage:
/// ```dart
/// // Instead of: TextHelper.label('user', 'email')
/// final label = 'user'.label('email');
///
/// // Instead of: TextHelper.error(exception, feature: 'auth', action: 'login')
/// final error = 'auth'.error(exception, action: 'login');
///
/// // Instead of: TextHelper.success(feature: 'course', action: 'create')
/// final success = 'course'.success('create');
/// ```
extension TextHelperExtension on String {
  /// Generates localized form field label
  ///
  /// Usage: `'featureName'.label('fieldName')`
  ///
  /// Example:
  /// ```dart
  /// final emailLabel = 'user'.label('email'); // "Email Address"
  /// final nameLabel = 'profile'.label('name'); // "Full Name"
  /// ```
  String label(String field) => TextHelper.label(this, field);

  /// Generates localized form field hint
  ///
  /// Usage: `'featureName'.hint('fieldName')`
  ///
  /// Example:
  /// ```dart
  /// final emailHint = 'user'.hint('email'); // "Enter your email address"
  /// final passwordHint = 'auth'.hint('password'); // "Enter your password"
  /// ```
  String hint(String field) => TextHelper.hint(this, field);

  /// Generates localized form validation error message
  ///
  /// Usage: `'featureName'.validator('fieldName', 'validationType')`
  ///
  /// Example:
  /// ```dart
  /// final emailError = 'user'.validator('email', 'invalid');
  /// // "Please enter a valid email address"
  ///
  /// final passwordError = 'auth'.validator('password', 'min_length');
  /// // "Password must be at least 8 characters"
  /// ```
  String validator(String field, String type) =>
      TextHelper.validator(this, field, type);

  /// Generates localized feature-specific message
  ///
  /// Usage: `'featureName'.message('messageKey')` or with args: `'featureName'.message('messageKey', args: {...})`
  ///
  /// Example:
  /// ```dart
  /// // Simple message
  /// final emptyState = 'course'.message('empty_state');
  /// // "No courses available"
  ///
  /// final welcome = 'auth'.message('welcome');
  /// // "Welcome back!"
  ///
  /// // Message with args
  /// final itemCount = 'course'.message('itemCount', args: {'count': '5'});
  /// // "Found 5 courses"
  ///
  /// final userGreeting = 'auth'.message('greeting', args: {'name': 'John'});
  /// // "Hello, John!"
  /// ```
  String message(String messageKey, {Map<String, String>? args}) {
    if (args != null && args.isNotEmpty) {
      return i18n.tr('features.$this.text.$messageKey', namedArgs: args);
    }
    return TextHelper.message(this, messageKey);
  }

  /// Generates localized feature-specific message with dynamic arguments
  ///
  /// Usage: `'featureName'.messageWith('messageKey', {...})`
  ///
  /// Example:
  /// ```dart
  /// // With mixed types (automatically converted to strings)
  /// final itemCount = 'course'.messageWith('itemCount', {'count': 5, 'type': 'active'});
  /// // "Found 5 active courses"
  ///
  /// final progress = 'upload'.messageWith('progress', {'current': 3, 'total': 10});
  /// // "Uploading 3 of 10 files"
  /// ```
  String messageWith(String messageKey, Map<String, dynamic> args) {
    final stringArgs =
        args.map((key, value) => MapEntry(key, value.toString()));
    return i18n.tr('features.$this.text.$messageKey', namedArgs: stringArgs);
  }

  /// Generates localized success message
  ///
  /// Usage: `'featureName'.success('actionName')`
  ///
  /// Example:
  /// ```dart
  /// final createSuccess = 'course'.success('create');
  /// // "Course created successfully"
  ///
  /// final loginSuccess = 'auth'.success('login');
  /// // "Login successful"
  /// ```
  String success(String action) =>
      TextHelper.success(feature: this, action: action);

  /// Generates localized error message from DioException
  ///
  /// Usage: `'featureName'.error(dioException, action: 'actionName')`
  ///
  /// Example:
  /// ```dart
  /// final loginError = 'auth'.error(dioException, action: 'login');
  /// // "Invalid credentials" (for 401) or "Login failed" (default)
  ///
  /// final createError = 'course'.error(dioException, action: 'create');
  /// // "Failed to create course" or specific error based on status code
  /// ```
  String error(DioException exception, {required String action}) =>
      TextHelper.error(exception, feature: this, action: action);
}

/// Extension on String for common note messages
///
/// This extension provides quick access to common note messages
/// that are used across the application.
///
/// Example usage:
/// ```dart
/// // Instead of: TextHelper.note('required')
/// final note = 'required'.note();
///
/// // Instead of: TextHelper.note('save')
/// final saveNote = 'save'.note();
/// ```
extension TextNoteExtension on String {
  /// Generates localized common note
  ///
  /// Usage: `'noteKey'.note()`
  ///
  /// Example:
  /// ```dart
  /// final requiredNote = 'required'.note(); // "* Required fields"
  /// final saveNote = 'save'.note(); // "Don't forget to save your changes"
  /// final cancelNote = 'cancel'.note(); // "Cancel"
  /// ```
  String note() => TextHelper.note(this);
}

/// Additional helper extensions for form handling
///
/// These extensions provide even more convenient methods for common
/// form-related text operations, especially useful in form builders.
extension FormTextExtension on String {
  /// Generates both label and hint for a field
  ///
  /// Returns a record with label and hint
  ///
  /// Usage: `'featureName'.fieldTexts('fieldName')`
  ///
  /// Example:
  /// ```dart
  /// final (label, hint) = 'user'.fieldTexts('email');
  /// // label: "Email Address", hint: "Enter your email address"
  /// ```
  ({String label, String hint}) fieldTexts(String field) => (
        label: TextHelper.label(this, field),
        hint: TextHelper.hint(this, field),
      );

  /// Generates a complete set of validation messages for a field
  ///
  /// Returns a map of validation types to messages
  ///
  /// Usage: `'featureName'.validationMessages('fieldName', ['required', 'invalid'])`
  ///
  /// Example:
  /// ```dart
  /// final validations = 'user'.validationMessages('email', ['required', 'invalid']);
  /// // {
  /// //   'required': 'Email is required',
  /// //   'invalid': 'Please enter a valid email address'
  /// // }
  /// ```
  Map<String, String> validationMessages(String field, List<String> types) {
    return Map.fromEntries(
      types.map(
        (type) => MapEntry(type, TextHelper.validator(this, field, type)),
      ),
    );
  }
}

/// Extension on String for menu-related text
///
/// This extension provides quick access to localized menu text.
///
/// Example usage:
/// ```dart
/// final profileMenu = 'profile'.menu(); // "Profile"
/// final settingsMenu = 'settings'.menu(); // "Settings"
/// ```
extension MenuTextExtension on String {
  /// Generates localized menu text
  ///
  /// Usage: `'menuKey'.menu()`
  ///
  /// Example:
  /// ```dart
  /// final profileMenu = 'profile'.menu(); // "Profile"
  /// final logoutMenu = 'logout'.menu(); // "Logout"
  /// ```
  String menu() => TextHelper.menu(this);
}

/// Extension on String for common form error messages
///
/// This extension provides quick access to common form error messages
/// that are used across the application.
///
/// Example usage:
/// ```dart
/// final controllerError = 'username'.controllerNotFoundError();
/// // "Controller for field "username" not found. Make sure to call initializeControllers() first."
/// ```
extension FormErrorExtension on String {
  /// Generates localized controller not found error message
  ///
  /// Usage: `'fieldName'.controllerNotFoundError()`
  ///
  /// Example:
  /// ```dart
  /// final error = 'username'.controllerNotFoundError();
  /// // "Controller for field "username" not found. Make sure to call initializeControllers() first."
  /// ```
  String controllerNotFoundError() =>
      i18n.tr('common.form.error.controllerNotFound',
          namedArgs: {'fieldName': this});
}

/// Extension on String for course validation error messages
///
/// This extension provides quick access to course validation error messages
/// that are used specifically for course-related validation.
///
/// Example usage:
/// ```dart
/// final timeError = 'time'.courseValidationError('required');
/// // "Time is required"
///
/// final dateError = 'date'.courseValidationError('outsideRange');
/// // "Session date must be within course date range"
/// ```
extension CourseValidationExtension on String {
  /// Generates localized course validation error message
  ///
  /// Usage: `'validationType'.courseValidationError('errorType')`
  ///
  /// Example:
  /// ```dart
  /// final timeRequiredError = 'time'.courseValidationError('required');
  /// final timeFormatError = 'time'.courseValidationError('invalidFormat');
  /// final dateRangeError = 'date'.courseValidationError('outsideRange');
  /// ```
  String courseValidationError(String errorType) =>
      i18n.tr('features.course.form.validator.$this.$errorType');
}
