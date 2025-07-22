import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart' as i18n;

/// Helper class for handling internationalized text and error messages
///
/// This class provides standardized methods for generating localized text
/// based on feature names, actions, and field names. It follows a consistent
/// key structure for easy translation management.
///
/// Key Structure:
/// - Error messages: `features.$feature.$action.error.$code` or `features.$feature.$action.error.default`
/// - Success messages: `features.$feature.$action.success`
/// - Form labels: `features.$feature.form.label.$field`
/// - Form hints: `features.$feature.form.hint.$field`
/// - Form validators: `features.$feature.form.validator.$field.$type`
/// - Feature messages: `features.$feature.text.$message`
/// - Common notes: `common.$note`
///
/// Example usage:
/// ```dart
/// // Get error message for login feature
/// final errorMsg = TextHelper.error(
///   dioException,
///   feature: 'auth',
///   action: 'login'
/// );
///
/// // Get form label
/// final label = TextHelper.label('user', 'email');
///
/// // Get validation message
/// final validation = TextHelper.validator('user', 'password', 'required');
/// ```
class TextHelper {
  /// Generates localized error message from DioException
  ///
  /// This method extracts the status code from the DioException and attempts
  /// to find a specific error message for that code. If no specific message
  /// is found, it falls back to a default error message.
  ///
  /// Parameters:
  /// - [e]: The DioException containing error details
  /// - [feature]: The feature name (e.g., 'auth', 'course', 'user')
  /// - [action]: The action that caused the error (e.g., 'login', 'create', 'update')
  ///
  /// Returns: Localized error message string
  ///
  /// Translation key pattern:
  /// - Specific: `features.$feature.$action.error.$statusCode`
  /// - Fallback: `features.$feature.$action.error.default`
  ///
  /// Example:
  /// ```dart
  /// final error = TextHelper.error(
  ///   dioException,
  ///   feature: 'auth',
  ///   action: 'login'
  /// );
  /// // Looks for: features.auth.login.error.401 or features.auth.login.error.default
  /// ```
  static String error(
    DioException e, {
    required String feature,
    required String action,
  }) {
    final code = e.response?.statusCode;
    final baseKey = 'features.$feature.$action.error';

    // 1. Try specific status code translation
    if (code != null) {
      final key = '$baseKey.${code.toString()}';
      final translation = i18n.tr(key);
      if (translation != key) return translation;
    }

    // 2. Try default translation
    final defaultKey = '$baseKey.default';
    final defaultTranslation = i18n.tr(defaultKey);
    if (defaultTranslation != defaultKey) return defaultTranslation;

    // 3. Fallback to server message if available
    final serverMessage = e.response?.data?['message'];
    if (serverMessage != null && serverMessage.toString().isNotEmpty) {
      return serverMessage.toString();
    }

    // 4. Final fallback to generic error
    return 'An error occurred';
  }

  /// Generates localized success message for completed actions
  ///
  /// This method creates success messages for various feature actions.
  /// It first tries to find a specific success message, then falls back
  /// to a default success message if the specific one doesn't exist.
  ///
  /// Parameters:
  /// - [feature]: The feature name (e.g., 'auth', 'course', 'user')
  /// - [action]: The completed action (e.g., 'login', 'create', 'update', 'delete')
  ///
  /// Returns: Localized success message string
  ///
  /// Translation key pattern:
  /// - Primary: `features.$feature.$action.success`
  /// - Fallback: `features.$feature.$action.success.default`
  ///
  /// Example:
  /// ```dart
  /// final message = TextHelper.success(feature: 'course', action: 'create');
  /// // Looks for: features.course.create.success
  /// ```
  static String success({required String feature, required String action}) {
    final defaultKey = 'features.$feature.$action.success.default';
    return i18n.tr(defaultKey);
  }

  /// Generates localized form field label
  ///
  /// Parameters:
  /// - [feature]: The feature name (e.g., 'auth', 'course', 'user')
  /// - [field]: The field name (e.g., 'email', 'password', 'name')
  ///
  /// Returns: Localized label text
  ///
  /// Translation key: `features.$feature.form.label.$field`
  ///
  /// Example:
  /// ```dart
  /// final label = TextHelper.label('user', 'email'); // "Email Address"
  /// ```
  static String label(String feature, String field) =>
      i18n.tr('features.$feature.form.label.$field');

  /// Generates localized form field hint text
  ///
  /// Parameters:
  /// - [feature]: The feature name (e.g., 'auth', 'course', 'user')
  /// - [field]: The field name (e.g., 'email', 'password', 'name')
  ///
  /// Returns: Localized hint text
  ///
  /// Translation key: `features.$feature.form.hint.$field`
  ///
  /// Example:
  /// ```dart
  /// final hint = TextHelper.hint('user', 'email'); // "Enter your email address"
  /// ```
  static String hint(String feature, String field) =>
      i18n.tr('features.$feature.form.hint.$field');

  /// Generates localized form validation error message
  ///
  /// Parameters:
  /// - [feature]: The feature name (e.g., 'auth', 'course', 'user')
  /// - [field]: The field name (e.g., 'email', 'password', 'name')
  /// - [type]: The validation type (e.g., 'required', 'invalid', 'minLength', 'maxLength')
  ///
  /// Returns: Localized validation error message
  ///
  /// Translation key: `features.$feature.form.validator.$field.$type`
  ///
  /// Example:
  /// ```dart
  /// final error = TextHelper.validator('user', 'email', 'invalid');
  /// // "Please enter a valid email address"
  /// ```
  static String validator(String feature, String field, String type) =>
      i18n.tr('features.$feature.form.validator.$field.$type');

  /// Generates localized feature-specific message
  ///
  /// Parameters:
  /// - [feature]: The feature name (e.g., 'auth', 'course', 'user')
  /// - [message]: The message key (e.g., 'welcome', 'empty_state', 'loading')
  ///
  /// Returns: Localized message text
  ///
  /// Translation key: `features.$feature.text.$message`
  ///
  /// Example:
  /// ```dart
  /// final message = TextHelper.message('course', 'empty_state');
  /// // "No courses available"
  /// ```
  static String message(String feature, String message) =>
      i18n.tr('features.$feature.text.$message');

  /// Generates localized common note or helper text
  ///
  /// Parameters:
  /// - [note]: The note key (e.g., 'required', 'save', 'cancel')
  ///
  /// Returns: Localized note text
  ///
  /// Translation key: `common.$note`
  ///
  /// Example:
  /// ```dart
  /// final note = TextHelper.note('required'); // "* Required fields"
  /// ```
  static String note(String note) => i18n.tr('common.$note');

  /// Generates localized menu-related text
  ///
  /// Parameters:
  /// - [menu]: The menu key (e.g., 'profile', 'settings', 'logout')
  ///
  /// Returns: Localized menu text
  ///
  /// Translation key: `menu.$menu`
  ///
  /// Example:
  /// ```dart
  /// final menuText = TextHelper.menu('profile'); // "Profile"
  /// ```
  static String menu(String menu) => i18n.tr('features.menu.$menu');
}
