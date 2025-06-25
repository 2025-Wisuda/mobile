import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/shared/enums/password_type_enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

/// A preset password input field widget with visibility toggle and standardized security features.
///
/// This widget provides a pre-configured password field with built-in visibility toggle,
/// lock icon indicators, and reactive state management using GetX. It supports different
/// password types and maintains consistent security UX patterns throughout the application.
///
/// ## Security Features:
/// - Automatic text obscuring with toggle visibility
/// - Dynamic lock icon (locked/unlocked) based on visibility state
/// - Secure keyboard type for password input
/// - Support for different password types (regular, confirm, new, etc.)
/// - Reactive state management with GetX
///
/// ## Basic Usage:
/// ```dart
/// final passwordController = TextEditingController();
/// final passwordFocus = FocusNode();
/// final obscurePassword = true.obs;
///
/// CustomPasswordFieldWidget(
///   controller: passwordController,
///   focusNode: passwordFocus,
///   obscureText: obscurePassword,
///   onToggleVisibility: () => obscurePassword.toggle(),
/// )
/// ```
///
/// ## Different Password Types:
/// ```dart
/// // Regular password
/// CustomPasswordFieldWidget(
///   controller: passwordController,
///   focusNode: passwordFocus,
///   obscureText: obscurePassword,
///   passwordType: PasswordTypeEnum.regular,
///   onToggleVisibility: () => obscurePassword.toggle(),
/// )
///
/// // Confirm password
/// CustomPasswordFieldWidget(
///   controller: confirmPasswordController,
///   focusNode: confirmPasswordFocus,
///   obscureText: obscureConfirmPassword,
///   passwordType: PasswordTypeEnum.confirm,
///   onToggleVisibility: () => obscureConfirmPassword.toggle(),
/// )
/// ```
///
/// ## With Validation:
/// ```dart
/// CustomPasswordFieldWidget(
///   controller: passwordController,
///   focusNode: passwordFocus,
///   obscureText: obscurePassword,
///   onToggleVisibility: () => obscurePassword.toggle(),
///   validator: (value) {
///     if (value?.isEmpty == true) return 'Password is required';
///     if (value!.length < 8) return 'Password must be at least 8 characters';
///     return null;
///   },
/// )
/// ```
///
/// ## Custom Configuration:
/// ```dart
/// CustomPasswordFieldWidget(
///   controller: passwordController,
///   focusNode: passwordFocus,
///   obscureText: obscurePassword,
///   onToggleVisibility: () => obscurePassword.toggle(),
///   feature: 'registration', // Different translation namespace
///   showLockIcon: false, // Hide lock icon
///   showVisibilityToggle: false, // Hide visibility toggle
///   textInputAction: TextInputAction.next, // Custom action
///   isRequired: true, // Required field
/// )
/// ```
///
/// ## Complete Form Example:
/// ```dart
/// class LoginForm extends StatelessWidget {
///   final usernameController = TextEditingController();
///   final passwordController = TextEditingController();
///   final usernameFocus = FocusNode();
///   final passwordFocus = FocusNode();
///   final obscurePassword = true.obs;
///
///   Widget build(BuildContext context) {
///     return Column(
///       children: [
///         CustomUsernameFieldWidget(
///           controller: usernameController,
///           focusNode: usernameFocus,
///           onFieldSubmitted: (_) => passwordFocus.requestFocus(),
///         ),
///         const SizedBox(height: 16),
///         CustomPasswordFieldWidget(
///           controller: passwordController,
///           focusNode: passwordFocus,
///           obscureText: obscurePassword,
///           onToggleVisibility: () => obscurePassword.toggle(),
///           textInputAction: TextInputAction.done,
///         ),
///       ],
///     );
///   }
/// }
/// ```
///
/// ## Password Types Support:
/// The widget supports different password contexts through PasswordTypeEnum:
/// - `PasswordTypeEnum.regular` - Standard password field
/// - `PasswordTypeEnum.confirm` - Password confirmation field
/// - `PasswordTypeEnum.new` - New password creation
/// - `PasswordTypeEnum.current` - Current password verification
///
/// ## Internationalization:
/// Uses feature-based translation keys with password type:
/// - Label: `{feature}.label.{passwordType}` (e.g., "auth.label.password")
/// - Hint: `{feature}.hint.{passwordType}` (e.g., "auth.hint.password")
///
/// ## Reactive State Management:
/// Built with GetX for reactive updates:
/// - Uses `RxBool` for obscureText state
/// - Automatically rebuilds when visibility changes
/// - Efficient reactive UI updates
///
/// ## Accessibility:
/// - Proper semantic labeling for password fields
/// - Screen reader support for visibility state
/// - High contrast icons for visual clarity
/// - Touch target optimization for visibility toggle
class CustomPasswordFieldWidget extends StatelessWidget {
  /// Controller for managing the password input text
  final TextEditingController controller;

  /// Focus node for managing field focus state and navigation
  final FocusNode focusNode;

  /// Callback fired when the password text changes
  ///
  /// Useful for real-time validation, strength checking, or form state updates
  final ValueChanged<String>? onChanged;

  /// Validation function for password input
  ///
  /// Should return null if valid, or error message string if invalid.
  /// Common validations include length, complexity, and matching requirements.
  final FormFieldValidator<String?>? validator;

  /// Callback fired when user submits the field (keyboard action)
  ///
  /// Typically used to move focus to next field or submit form
  final ValueChanged<String>? onFieldSubmitted;

  /// Keyboard action button type
  ///
  /// Defaults to 'done' for password fields as they're often the last field.
  /// Use 'next' if there are additional fields after password.
  final TextInputAction textInputAction;

  /// Type of password field for appropriate labeling and behavior
  ///
  /// Determines the translation keys and potentially validation rules.
  /// Examples: regular, confirm, new, current
  final PasswordTypeEnum passwordType;

  /// Reactive boolean for controlling text visibility
  ///
  /// Uses GetX RxBool for automatic UI updates when visibility changes.
  /// Should be toggled via onToggleVisibility callback.
  final RxBool obscureText;

  /// Callback fired when visibility toggle button is pressed
  ///
  /// Typically toggles the obscureText RxBool value.
  /// Required if showVisibilityToggle is true.
  final VoidCallback? onToggleVisibility;

  /// Feature namespace for internationalization
  ///
  /// Determines the translation key prefix for label and hint text.
  /// Examples: 'auth', 'registration', 'profile'
  final String feature;

  /// Whether to show the lock icon indicator
  ///
  /// When true, displays a lock icon that changes based on visibility state.
  /// Lock appears closed when obscured, open when visible.
  final bool showLockIcon;

  /// Whether to show the visibility toggle button
  ///
  /// When true, displays an eye icon button to toggle password visibility.
  /// Requires onToggleVisibility callback to function properly.
  final bool showVisibilityToggle;

  /// Whether this field is required for form submission
  ///
  /// When true, displays required indicator (*) in the label.
  /// Note: Uses nullable bool for backward compatibility.
  final bool isRequired;

  const CustomPasswordFieldWidget({
    super.key,
    required this.controller,
    required this.focusNode,
    this.onChanged,
    this.validator,
    this.onFieldSubmitted,
    this.textInputAction = TextInputAction.done,
    this.passwordType = PasswordTypeEnum.regular,
    required this.obscureText,
    this.onToggleVisibility,
    this.feature = 'auth',
    this.showLockIcon = true,
    this.showVisibilityToggle = true,
    this.isRequired = false,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final isObscure = obscureText.value;
      return CustomTextFormFieldWidget(
        controller: controller,
        focusNode: focusNode,
        onChanged: onChanged,
        validator: validator,
        labelText: feature.label(passwordType.labelKey),
        hintText: feature.hint(passwordType.hintKey),
        keyboardType: TextInputType.visiblePassword,
        textInputAction: textInputAction,
        obscureText: isObscure,
        prefixIcon: showLockIcon ? _buildLockIcon(isObscure) : null,
        suffixIcon:
            showVisibilityToggle ? _buildVisibilityToggle(isObscure) : null,
        onFieldSubmitted: onFieldSubmitted,
        requiredField: isRequired,
        reserveErrorSpace: passwordType == PasswordTypeEnum.confirmation,
      );
    });
  }

  /// Builds the lock icon that reflects current visibility state
  ///
  /// Shows locked icon when password is obscured, unlocked when visible.
  /// Provides visual feedback about the current security state.
  Widget _buildLockIcon(bool isObscure) {
    return Icon(
      isObscure ? Icons.lock_outline : Icons.lock_open_outlined,
      size: 24,
    );
  }

  /// Builds the visibility toggle button
  ///
  /// Shows eye-off icon when password is obscured, eye icon when visible.
  /// Allows users to toggle between secure and readable password display.
  Widget _buildVisibilityToggle(bool isObscure) {
    return IconButton(
      onPressed: onToggleVisibility,
      icon: Icon(
        isObscure ? Icons.visibility_off_outlined : Icons.visibility_outlined,
        size: 24,
      ),
    );
  }
}
