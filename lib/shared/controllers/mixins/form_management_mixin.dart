import 'package:flutter/material.dart';

import 'package:get/get.dart';

/// Mixin for managing form controllers and form field lifecycle.
///
/// This mixin follows the Single Responsibility Principle by being solely
/// responsible for form field management. It provides automatic registration,
/// access, and disposal of text controllers and focus nodes.
///
/// **Key Features:**
/// - Automatic text controller registration and management
/// - Focus node management for better UX
/// - Field error state tracking
/// - Memory leak prevention with automatic disposal
/// - Type-safe field access with validation
/// - Batch operations for form management
///
/// **Usage:**
/// ```dart
/// class MyFormController extends GetxController with FormManagementMixin {
///   @override
///   void onInit() {
///     super.onInit();
///     registerTextField('email');
///     registerTextField('password');
///     registerTextField('confirmPassword');
///   }
///
///   void validateEmail() {
///     final email = getController('email').text;
///     if (email.isEmpty) {
///       setFieldError('email', 'Email is required');
///     } else {
///       clearFieldError('email');
///     }
///   }
/// }
///
/// // In your widget
/// TextFormField(
///   controller: controller.getController('email'),
///   focusNode: controller.getFocusNode('email'),
///   decoration: InputDecoration(
///     errorText: controller.getFieldError('email'),
///   ),
/// )
/// ```
///
/// **Memory Management:**
/// This mixin automatically disposes all text controllers and focus nodes
/// when the parent controller is disposed, preventing memory leaks.
///
/// **Why SRP?**
/// This mixin has only one reason to change: when form field management
/// requirements change. It doesn't handle validation logic, submission,
/// or business logic - those are handled by separate mixins or controllers.
mixin FormManagementMixin on GetxController {
  /// Internal map storing reactive text controllers
  final Map<String, Rx<TextEditingController>> _textControllers = {};

  /// Internal map storing reactive focus nodes
  final Map<String, Rx<FocusNode>> _focusNodes = {};

  /// Internal map storing field error messages
  final Map<String, RxString> _fieldErrors = {};

  /// Read-only access to text controllers map
  ///
  /// Use this for advanced operations like iterating over all controllers.
  Map<String, Rx<TextEditingController>> get textControllers =>
      _textControllers;

  /// Read-only access to focus nodes map
  ///
  /// Use this for advanced operations like iterating over all focus nodes.
  Map<String, Rx<FocusNode>> get focusNodes => _focusNodes;

  /// Read-only access to field errors map
  ///
  /// Use this for advanced operations like checking overall form error state.
  Map<String, RxString> get fieldErrors => _fieldErrors;

  /// Registers a text field with automatic controller and focus node creation
  ///
  /// This method creates and stores reactive text controller and focus node
  /// for the specified field. It also initializes error state tracking.
  ///
  /// **Usage:**
  /// ```dart
  /// // Basic registration
  /// registerTextField('username');
  ///
  /// // With initial value
  /// registerTextField('bio', initialValue: 'Tell us about yourself...');
  /// ```
  ///
  /// [fieldName] Unique identifier for the field
  /// [initialValue] Optional initial value for the text field
  void registerTextField(String fieldName, {String? initialValue}) {
    _textControllers[fieldName] = Rx<TextEditingController>(
      TextEditingController(text: initialValue),
    );
    _focusNodes[fieldName] = Rx<FocusNode>(FocusNode());
    _fieldErrors[fieldName] = RxString('');
  }

  /// Gets the text controller for a specific field
  ///
  /// Returns the TextEditingController associated with the field name.
  /// Throws an exception if the field hasn't been registered.
  ///
  /// **Usage:**
  /// ```dart
  /// final emailController = getController('email');
  /// String email = emailController.text;
  /// emailController.text = 'new@email.com';
  /// ```
  ///
  /// [fieldName] The name of the field to get controller for
  ///
  /// Throws [Exception] if field is not registered
  TextEditingController getController(String fieldName) {
    if (!_textControllers.containsKey(fieldName)) {
      throw Exception(
        'Field $fieldName not registered. Call registerTextField first.',
      );
    }
    return _textControllers[fieldName]!.value;
  }

  /// Gets the focus node for a specific field
  ///
  /// Returns the FocusNode associated with the field name.
  /// Throws an exception if the field hasn't been registered.
  ///
  /// **Usage:**
  /// ```dart
  /// final emailFocus = getFocusNode('email');
  /// emailFocus.requestFocus(); // Focus the field
  /// ```
  ///
  /// [fieldName] The name of the field to get focus node for
  ///
  /// Throws [Exception] if field is not registered
  FocusNode getFocusNode(String fieldName) {
    if (!_focusNodes.containsKey(fieldName)) {
      throw Exception(
        'Field $fieldName not registered. Call registerTextField first.',
      );
    }
    return _focusNodes[fieldName]!.value;
  }

  /// Sets an error message for a specific field
  ///
  /// Use this to display validation errors for individual fields.
  /// The error will be reactive and trigger UI updates.
  ///
  /// **Usage:**
  /// ```dart
  /// setFieldError('email', 'Please enter a valid email address');
  /// setFieldError('password', ''); // Clear error
  /// ```
  ///
  /// [fieldName] The name of the field to set error for
  /// [error] The error message to display, empty string to clear
  void setFieldError(String fieldName, String error) {
    if (_fieldErrors.containsKey(fieldName)) {
      _fieldErrors[fieldName]!.value = error;
    }
  }

  /// Gets the error message for a specific field
  ///
  /// Returns the current error message for the field,
  /// or empty string if no error exists.
  ///
  /// **Usage:**
  /// ```dart
  /// final errorText = getFieldError('email');
  /// if (errorText.isNotEmpty) {
  ///   // Show error in UI
  /// }
  /// ```
  ///
  /// [fieldName] The name of the field to get error for
  String getFieldError(String fieldName) {
    return _fieldErrors[fieldName]?.value ?? '';
  }

  /// Clears error message for a specific field
  ///
  /// Use this to remove validation errors when the field becomes valid.
  ///
  /// **Usage:**
  /// ```dart
  /// clearFieldError('email');
  /// ```
  ///
  /// [fieldName] The name of the field to clear error for
  void clearFieldError(String fieldName) {
    setFieldError(fieldName, '');
  }

  /// Clears the value and error for a specific field
  ///
  /// This method resets both the text content and error state
  /// for the specified field.
  ///
  /// **Usage:**
  /// ```dart
  /// clearField('password'); // Clear password field
  /// ```
  ///
  /// [fieldName] The name of the field to clear
  void clearField(String fieldName) {
    if (_textControllers.containsKey(fieldName)) {
      _textControllers[fieldName]!.value.clear();
      _fieldErrors[fieldName]!.value = '';
    }
  }

  /// Clears all registered fields and their errors
  ///
  /// This method resets all text controllers and error states
  /// to their initial empty state.
  ///
  /// **Usage:**
  /// ```dart
  /// clearAllFields(); // Reset entire form
  /// ```
  void clearAllFields() {
    for (var controller in _textControllers.values) {
      controller.value.clear();
    }
    for (var error in _fieldErrors.values) {
      error.value = '';
    }
  }

  /// Gets the text value from a specific field
  ///
  /// Convenience method to get the current text value without
  /// accessing the controller directly.
  ///
  /// **Usage:**
  /// ```dart
  /// String email = getFieldValue('email');
  /// ```
  ///
  /// [fieldName] The name of the field to get value from
  String getFieldValue(String fieldName) {
    return getController(fieldName).text;
  }

  /// Sets the text value for a specific field
  ///
  /// Convenience method to set the text value without
  /// accessing the controller directly.
  ///
  /// **Usage:**
  /// ```dart
  /// setFieldValue('email', 'user@example.com');
  /// ```
  ///
  /// [fieldName] The name of the field to set value for
  /// [value] The text value to set
  void setFieldValue(String fieldName, String value) {
    getController(fieldName).text = value;
  }

  /// Returns true if any field currently has an error
  ///
  /// Use this to check overall form error state.
  ///
  /// **Usage:**
  /// ```dart
  /// if (hasAnyError) {
  ///   // Disable submit button or show global error
  /// }
  /// ```
  bool get hasAnyError {
    return _fieldErrors.values.any((error) => error.value.isNotEmpty);
  }

  /// Returns true if all registered fields have non-empty values
  ///
  /// Use this for basic form completion validation.
  ///
  /// **Usage:**
  /// ```dart
  /// if (allFieldsFilled && !hasAnyError) {
  ///   // Enable submit button
  /// }
  /// ```
  bool get allFieldsFilled {
    return _textControllers.values.every(
      (controller) => controller.value.text.isNotEmpty,
    );
  }

  @override
  void onClose() {
    // Dispose all controllers to prevent memory leaks
    for (var controller in _textControllers.values) {
      controller.value.dispose();
    }
    for (var focusNode in _focusNodes.values) {
      focusNode.value.dispose();
    }
    super.onClose();
  }
}
