import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/shared/extensions/extension.dart';

/// A mixin that provides common form handling functionality.
/// This mixin includes text controllers, form state management,
/// and common form operations.
///
/// Example usage:
/// ```dart
/// class LoginController extends GetxController with FormMixin {
///   @override
///   void onInit() {
///     super.onInit();
///     initializeControllers(['username', 'password']);
///   }
///
///   void login() {
///     if (validateForm()) {
///       // Process login with getControllerValue('username') and getControllerValue('password')
///     }
///   }
/// }
/// ```
mixin FormMixin on GetxController {
  /// Global form key for form validation - unique per instance
  late final GlobalKey<FormState> formKey = GlobalKey<FormState>(
      debugLabel:
          'FormKey_${runtimeType}_${hashCode}_${DateTime.now().microsecondsSinceEpoch}_${Random().nextInt(999999)}');

  /// Map to store text editing controllers dynamically
  final Map<String, TextEditingController> _controllers = {};

  /// Map to store focus nodes dynamically
  final Map<String, FocusNode> _focusNodes = {};

  /// Observable form validation state
  final RxBool hasErrors = false.obs;

  /// Map to store form field errors
  final RxMap<String, String?> fieldErrors = <String, String?>{}.obs;

  /// Map to store obscure text states for password fields with unique keys
  final Map<String, RxBool> _obscureTextStates = {};

  /// Map to track which fields have been interacted with (touched)
  final Map<String, bool> _fieldInteractionStates = {};

  /// Initializes text editing controllers for the specified fields.
  ///
  /// Parameters:
  /// - [fieldNames]: List of field names to create controllers for
  /// - [initializeFocusNodes]: Whether to also initialize focus nodes (default: true)
  ///
  /// Example:
  /// ```dart
  /// initializeControllers(['username', 'password', 'email']);
  /// ```
  void initializeControllers(List<String> fieldNames,
      {bool initializeFocusNodes = true}) {
    for (String fieldName in fieldNames) {
      _controllers[fieldName] = TextEditingController();
      if (initializeFocusNodes) {
        _focusNodes[fieldName] = FocusNode();
      }
    }
  }

  /// Gets a text editing controller by field name.
  ///
  /// Parameters:
  /// - [fieldName]: The name of the field
  ///
  /// Returns the TextEditingController for the specified field.
  /// Throws an exception if the controller doesn't exist.
  TextEditingController getController(String fieldName) {
    if (!_controllers.containsKey(fieldName)) {
      throw Exception(fieldName.controllerNotFoundError());
    }
    return _controllers[fieldName]!;
  }

  /// Gets a focus node by field name.
  ///
  /// Parameters:
  /// - [fieldName]: The name of the field
  ///
  /// Returns the FocusNode for the specified field.
  /// If the focus node doesn't exist, creates a new one.
  FocusNode getFocusNode(String fieldName) {
    if (!_focusNodes.containsKey(fieldName)) {
      _focusNodes[fieldName] = FocusNode();
    }
    return _focusNodes[fieldName]!;
  }

  /// Initializes focus nodes for the specified fields.
  ///
  /// Parameters:
  /// - [fieldNames]: List of field names to create focus nodes for
  ///
  /// Example:
  /// ```dart
  /// initializeFocusNodes(['username', 'password', 'email']);
  /// ```
  void initializeFocusNodes(List<String> fieldNames) {
    for (String fieldName in fieldNames) {
      _focusNodes[fieldName] = FocusNode();
    }
  }

  /// Moves focus to the next field in the list.
  ///
  /// Parameters:
  /// - [currentField]: The current field name
  /// - [fieldOrder]: List of field names in order
  void moveToNextField(String currentField, List<String> fieldOrder) {
    final currentIndex = fieldOrder.indexOf(currentField);
    if (currentIndex != -1 && currentIndex < fieldOrder.length - 1) {
      final nextField = fieldOrder[currentIndex + 1];
      getFocusNode(nextField).requestFocus();
    }
  }

  /// Unfocus all fields
  void unfocusAll() {
    for (FocusNode focusNode in _focusNodes.values) {
      focusNode.unfocus();
    }
  }

  /// Gets the current value of a text controller by field name.
  ///
  /// Parameters:
  /// - [fieldName]: The name of the field
  ///
  /// Returns the current text value of the controller.
  String getControllerValue(String fieldName) {
    return getController(fieldName).text;
  }

  /// Sets the value of a text controller by field name.
  ///
  /// Parameters:
  /// - [fieldName]: The name of the field
  /// - [value]: The value to set
  void setControllerValue(String fieldName, String value) {
    getController(fieldName).text = value;
  }

  /// Validates the entire form using the form key.
  ///
  /// Returns true if form is valid, false otherwise.
  bool validateForm() {
    if (formKey.currentState == null) {
      return false;
    }

    final isValid = formKey.currentState!.validate();
    hasErrors.value = !isValid;

    return isValid;
  }

  /// Clears all form fields.
  ///
  /// This method clears all text controllers and resets form state.
  void clearForm() {
    for (TextEditingController controller in _controllers.values) {
      controller.clear();
    }
    clearFormState();
  }

  /// Comprehensive form cleanup method.
  ///
  /// This method performs a complete cleanup of the form including:
  /// - Clearing all text controllers
  /// - Resetting form validation state
  /// - Clearing all field errors
  /// - Resetting obscure text states
  ///
  /// Use this method when you need to completely reset the form to its initial state.
  void cleanForm() {
    // Clear all text controllers
    for (TextEditingController controller in _controllers.values) {
      controller.clear();
    }

    // Clear form validation state
    clearFormState();

    // Reset all obscure text states to true (hidden)
    for (String key in _obscureTextStates.keys) {
      _obscureTextStates[key]!.value = true;
    }

    // Force update to ensure reactive states are properly refreshed
    update();
  }

  /// Clears form validation state and errors.
  void clearFormState() {
    hasErrors.value = false;
    fieldErrors.clear();
    if (formKey.currentState != null) {
      formKey.currentState!.reset();
    }
  }

  /// Sets an error for a specific field.
  ///
  /// Parameters:
  /// - [fieldName]: The name of the field
  /// - [error]: The error message (null to clear error)
  void setFieldError(String fieldName, String? error) {
    fieldErrors[fieldName] = error;
    // Defer reactive state update to prevent setState during build
    Future.microtask(() {
      hasErrors.value = fieldErrors.values.any((error) => error != null);
    });
  }

  /// Gets the error for a specific field.
  ///
  /// Parameters:
  /// - [fieldName]: The name of the field
  ///
  /// Returns the error message for the field, or null if no error.
  String? getFieldError(String fieldName) {
    return fieldErrors[fieldName];
  }

  /// Clears the error for a specific field.
  ///
  /// Parameters:
  /// - [fieldName]: The name of the field
  void clearFieldError(String fieldName) {
    setFieldError(fieldName, null);
  }

  /// Validates a field using a validator function and updates field errors.
  ///
  /// This is a helper method that combines field validation with error state management.
  /// It runs the validator function and automatically updates the field error and hasErrors state.
  ///
  /// Parameters:
  /// - [fieldName]: The name of the field being validated
  /// - [value]: The value to validate
  /// - [validator]: The validator function that returns null if valid or error string if invalid
  ///
  /// Returns the validation result (null if valid, error message if invalid).
  ///
  /// Example:
  /// ```dart
  /// String? validateUsernameField(String? value) {
  ///   return validateAndSetError('username', value, (val) => validateUsername(val));
  /// }
  /// ```
  String? validateAndSetError(
      String fieldName, String? value, String? Function(String?) validator) {
    final error = validator(value);

    // Always update field error for storage, but defer reactive state update
    fieldErrors[fieldName] = error;

    // Defer reactive state update to prevent setState during build
    Future.microtask(() {
      hasErrors.value = fieldErrors.values.any((error) => error != null);
    });

    return error;
  }

  /// Populates form fields with data from a map.
  ///
  /// Parameters:
  /// - [data]: Map containing field names and their values
  ///
  /// Example:
  /// ```dart
  /// populateForm({'username': 'john_doe', 'password': ''});
  /// ```
  void populateForm(Map<String, String> data) {
    data.forEach((fieldName, value) {
      if (_controllers.containsKey(fieldName)) {
        setControllerValue(fieldName, value);
      }
    });
  }

  /// Gets all form data as a map.
  ///
  /// Returns a map containing all field names and their current values.
  Map<String, String> getFormData() {
    final Map<String, String> data = {};
    _controllers.forEach((fieldName, controller) {
      data[fieldName] = controller.text;
    });
    return data;
  }

  /// Gets all initialized controller field names.
  ///
  /// Returns a set of field names that have been initialized.
  /// Useful for mapping operations and field validation.
  ///
  /// Example:
  /// ```dart
  /// final fields = getControllerKeys();
  /// print('Initialized fields: $fields');
  /// ```
  Set<String> getControllerKeys() {
    return _controllers.keys.toSet();
  }

  /// Checks if any form field has been modified.
  ///
  /// Returns true if any field has content, false if all fields are empty.
  bool isFormDirty() {
    return _controllers.values.any((controller) => controller.text.isNotEmpty);
  }

  /// Gets the obscure text state for a specific field.
  ///
  /// Parameters:
  /// - [fieldKey]: The unique key for the password field
  ///
  /// Returns the current obscure state (default: true).
  bool getObscureText(String fieldKey) {
    if (!_obscureTextStates.containsKey(fieldKey)) {
      _obscureTextStates[fieldKey] = true.obs;
    }
    return _obscureTextStates[fieldKey]!.value;
  }

  /// Gets the reactive obscure text state for a specific field.
  ///
  /// Parameters:
  /// - [fieldKey]: The unique key for the password field
  ///
  /// Returns RxBool for reactive UI updates.
  RxBool getReactiveObscureText(String fieldKey) {
    if (!_obscureTextStates.containsKey(fieldKey)) {
      _obscureTextStates[fieldKey] = true.obs;
    }
    return _obscureTextStates[fieldKey]!;
  }

  /// Sets the obscure text state for a specific field.
  ///
  /// Parameters:
  /// - [fieldKey]: The unique key for the password field
  /// - [obscured]: Whether the text should be obscured
  void setObscureText(String fieldKey, bool obscured) {
    if (!_obscureTextStates.containsKey(fieldKey)) {
      _obscureTextStates[fieldKey] = true.obs;
    }
    _obscureTextStates[fieldKey]!.value = obscured;
  }

  /// Toggles the obscure text state for a specific field.
  ///
  /// Parameters:
  /// - [fieldKey]: The unique key for the password field
  ///
  /// Example:
  /// ```dart
  /// toggleObscureText('password');           // For login password
  /// toggleObscureText('currentPassword');    // For change password current
  /// toggleObscureText('newPassword');        // For change password new
  /// toggleObscureText('confirmPassword');    // For change password confirm
  /// ```
  void toggleObscureText(String fieldKey) {
    final currentState = getObscureText(fieldKey);
    setObscureText(fieldKey, !currentState);
  }

  /// Initializes obscure text states for multiple password fields.
  ///
  /// Parameters:
  /// - [fieldKeys]: List of password field keys to initialize
  ///
  /// Example:
  /// ```dart
  /// initializeObscureText(['password', 'currentPassword', 'newPassword']);
  /// ```
  void initializeObscureText(List<String> fieldKeys) {
    for (String fieldKey in fieldKeys) {
      if (!_obscureTextStates.containsKey(fieldKey)) {
        _obscureTextStates[fieldKey] = true.obs;
      }
    }
  }

  /// Disposes all text editing controllers and focus nodes.
  ///
  /// This method should be called in the controller's onClose() method.
  void disposeControllers() {
    for (TextEditingController controller in _controllers.values) {
      controller.dispose();
    }
    _controllers.clear();

    for (FocusNode focusNode in _focusNodes.values) {
      focusNode.dispose();
    }
    _focusNodes.clear();
  }

  @override
  void onClose() {
    disposeControllers();
    super.onClose();
  }

  /// Checks if form is ready for submission (all required fields filled and valid).
  ///
  /// This is a comprehensive check that validates both content and validation rules.
  /// Use this for enabling/disabling submit buttons reactively.
  ///
  /// Parameters:
  /// - [requiredFields]: List of field names that must have content
  ///
  /// Returns true if all required fields have non-empty content and pass validation.
  ///
  /// Example:
  /// ```dart
  /// bool get canSubmit => isFormReady(['username', 'password']);
  /// ```
  bool isFormReady(List<String> requiredFields) {
    for (String fieldName in requiredFields) {
      if (!_controllers.containsKey(fieldName)) return false;

      final value = getControllerValue(fieldName).trim();
      if (value.isEmpty) return false;

      // Also check validation - use validateFieldForSubmission for consistent validation
      final validationError =
          validateFieldForSubmission(fieldName, value, fieldName);
      if (validationError != null) return false;
    }
    return true;
  }

  /// Reactive form ready check with RxBool.
  ///
  /// This creates a reactive boolean that automatically updates when
  /// any of the specified fields change.
  ///
  /// Parameters:
  /// - [requiredFields]: List of field names that must have content
  ///
  /// Returns RxBool that can be used with Obx() for reactive UI.
  ///
  /// Example:
  /// ```dart
  /// final RxBool canSubmit = reactiveFormReady(['username', 'password']);
  /// ```
  RxBool reactiveFormReady(List<String> requiredFields) {
    final RxBool isReady = false.obs;

    void updateReady() {
      // Double protection to prevent setState during build
      if (Get.isDialogOpen != true) {
        Future.microtask(() {
          isReady.value = isFormReady(requiredFields);
        });
      }
    }

    // Defer listener setup to avoid conflicts with build phase
    Future.microtask(() {
      // Add listeners to all required fields
      for (String fieldName in requiredFields) {
        if (_controllers.containsKey(fieldName)) {
          _controllers[fieldName]!.addListener(updateReady);
        }
      }

      // Initial update after listeners are set up
      updateReady();
    });

    return isReady;
  }

  /// Marks a field as interacted (touched by user).
  ///
  /// Parameters:
  /// - [fieldName]: The name of the field that was interacted with
  ///
  /// This method is used to track which fields have been touched by the user
  /// to provide better validation UX (only show errors after interaction).
  void markFieldAsInteracted(String fieldName) {
    _fieldInteractionStates[fieldName] = true;
  }

  /// Checks if a field has been interacted with.
  ///
  /// Parameters:
  /// - [fieldName]: The name of the field to check
  ///
  /// Returns true if the field has been interacted with, false otherwise.
  bool isFieldInteracted(String fieldName) {
    return _fieldInteractionStates[fieldName] ?? false;
  }

  /// Validates a field on demand, only showing errors if the field has been interacted with.
  ///
  /// Parameters:
  /// - [fieldName]: The name of the field being validated
  /// - [value]: The current value of the field
  /// - [displayName]: The display name for error messages (e.g., 'Username')
  ///
  /// Returns the validation error message or null if valid.
  /// Only returns errors if the field has been interacted with.
  String? validateFieldOnDemand(
      String fieldName, String? value, String displayName) {
    // Only show validation error if field has been interacted with
    if (!isFieldInteracted(fieldName)) {
      return null; // Don't show error to user yet
    }

    // Simple required validation - can be extended with ValidatorMixin in controllers
    if (value == null || value.trim().isEmpty) {
      return '$displayName is required';
    }

    return null;
  }

  /// Validates a field for form submission (always validates, regardless of interaction)
  ///
  /// This method is used internally for form validation logic where we need to check
  /// all fields regardless of whether they've been interacted with.
  ///
  /// Parameters:
  /// - [fieldName]: The name of the field being validated
  /// - [value]: The current value of the field
  /// - [displayName]: The display name for error messages
  ///
  /// Returns the validation error message or null if valid.
  String? validateFieldForSubmission(
      String fieldName, String? value, String displayName) {
    // Always validate for form submission
    if (value == null || value.trim().isEmpty) {
      return '$displayName is required';
    }

    return null;
  }
}
