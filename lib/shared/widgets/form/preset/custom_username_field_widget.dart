import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

/// A preset username input field widget with standardized behavior and styling.
///
/// This widget provides a pre-configured text field specifically designed for username input
/// with consistent behavior, validation, and theming. It wraps the base CustomTextFormFieldWidget
/// with username-specific defaults and features.
///
/// ## Design Features:
/// - Person outline icon for visual context
/// - Optimized keyboard type for text input
/// - Proper input action for form flow (next field)
/// - Feature-based internationalization support
/// - Consistent styling with design system
///
/// ## Basic Usage:
/// ```dart
/// final usernameController = TextEditingController();
/// final usernameFocus = FocusNode();
///
/// CustomUsernameFieldWidget(
///   controller: usernameController,
///   focusNode: usernameFocus,
/// )
/// ```
///
/// ## With Validation:
/// ```dart
/// CustomUsernameFieldWidget(
///   controller: usernameController,
///   focusNode: usernameFocus,
///   validator: (value) {
///     if (value?.isEmpty == true) return 'Username is required';
///     if (value!.length < 3) return 'Username must be at least 3 characters';
///     return null;
///   },
/// )
/// ```
///
/// ## Custom Configuration:
/// ```dart
/// CustomUsernameFieldWidget(
///   controller: usernameController,
///   focusNode: usernameFocus,
///   feature: 'profile', // Different translation namespace
///   showPersonIcon: false, // Hide icon
///   textInputAction: TextInputAction.done, // Custom action
///   isRequired: false, // Optional field
/// )
/// ```
///
/// ## Form Integration:
/// ```dart
/// Column(
///   children: [
///     CustomUsernameFieldWidget(
///       controller: usernameController,
///       focusNode: usernameFocus,
///       onFieldSubmitted: (_) => passwordFocus.requestFocus(),
///     ),
///     const SizedBox(height: 16),
///     CustomPasswordFieldWidget(
///       controller: passwordController,
///       focusNode: passwordFocus,
///     ),
///   ],
/// )
/// ```
///
/// ## Internationalization:
/// Uses feature-based translation keys:
/// - Label: `{feature}.label.username` (e.g., "auth.label.username")
/// - Hint: `{feature}.hint.username` (e.g., "auth.hint.username")
///
/// ## Accessibility:
/// - Semantic labeling for screen readers
/// - Proper keyboard navigation with TextInputAction
/// - Visual icon provides context for field purpose
/// - Follows accessibility contrast standards
class CustomUsernameFieldWidget extends StatelessWidget {
  /// Controller for managing the username input text
  final TextEditingController controller;

  /// Focus node for managing field focus state and navigation
  final FocusNode focusNode;

  /// Callback fired when the username text changes
  ///
  /// Useful for real-time validation or formatting
  final ValueChanged<String>? onChanged;

  /// Validation function for username input
  ///
  /// Should return null if valid, or error message string if invalid.
  /// Common validations include length, format, and availability checks.
  final FormFieldValidator<String?>? validator;

  /// Callback fired when user submits the field (keyboard action)
  ///
  /// Typically used to move focus to next field or submit form
  final ValueChanged<String>? onFieldSubmitted;

  /// Feature namespace for internationalization
  ///
  /// Determines the translation key prefix for label and hint text.
  /// Examples: 'auth', 'profile', 'registration'
  final String feature;

  /// Whether to show the person outline icon
  ///
  /// When true, displays a person icon as visual context for username field.
  /// Set to false for minimal layouts or when icon is not needed.
  final bool showPersonIcon;

  /// Keyboard action button type
  ///
  /// Defaults to 'next' for typical form flow where username is followed
  /// by other fields. Use 'done' if this is the last field.
  final TextInputAction textInputAction;

  /// Whether the field is enabled for input
  ///
  /// When false, field becomes non-interactive and visually disabled
  final bool enabled;

  /// Whether the field is read-only
  ///
  /// When true, field shows content but prevents editing
  final bool readOnly;

  /// Whether this field is required for form submission
  ///
  /// When true, displays required indicator (*) in the label
  final bool isRequired;

  const CustomUsernameFieldWidget({
    super.key,
    required this.controller,
    required this.focusNode,
    this.onChanged,
    this.validator,
    this.onFieldSubmitted,
    this.feature = 'auth',
    this.showPersonIcon = true,
    this.textInputAction = TextInputAction.next,
    this.enabled = true,
    this.readOnly = false,
    this.isRequired = true,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormFieldWidget(
      controller: controller,
      focusNode: focusNode,
      onChanged: onChanged,
      validator: validator,
      onFieldSubmitted: onFieldSubmitted,
      textInputAction: textInputAction,
      labelText: feature.label('username'),
      hintText: feature.hint('username'),
      keyboardType: TextInputType.text,
      prefixIcon: showPersonIcon ? _buildPersonIcon() : null,
      enabled: enabled,
      readOnly: readOnly,
      requiredField: isRequired,
    );
  }

  /// Builds the person outline icon for username context
  Widget _buildPersonIcon() {
    return const Icon(
      Icons.person_outline,
      size: 24,
    );
  }
}
