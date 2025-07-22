import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/shared/extensions/extension.dart';

/// GetX-only Form Mixin: fully reactive, easy to use, and auto-cleanup.
///
/// All main state variables use Rx/obs, with no classic getter/setter and no private (_underscore) fields.
/// You can access, update, and observe state directly from your controller or UI (Obx, ever, etc).
///
/// Example usage:
/// ```dart
/// class LoginController extends GetxController with GetFormMixin {
///   @override
///   void onInit() {
///     super.onInit();
///     initializeControllers(['username', 'password']);
///   }
/// }
/// // In UI:
/// Obx(() => Text(controller.getController('username').text));
/// ```
mixin GetFormMixin on GetxController {
  /// Global form key for validation
  late final GlobalKey<FormState> formKey = GlobalKey<FormState>(
      debugLabel:
          'FormKey_${runtimeType}_${hashCode}_${DateTime.now().microsecondsSinceEpoch}_${Random().nextInt(999999)}');

  /// Reactive map for text editing controllers
  final Map<String, TextEditingController> _controllers = {};

  /// Reactive map for focus nodes
  final Map<String, FocusNode> _focusNodes = {};

  /// Reactive boolean for form error state
  final RxBool hasErrors = false.obs;

  /// Reactive map for field errors
  final RxMap<String, String?> fieldErrors = <String, String?>{}.obs;

  /// Reactive map for obscure text states (password fields)
  final Map<String, RxBool> _obscureTextStates = {};

  /// Map to track field interaction (touched)
  final Map<String, bool> _fieldInteractionStates = {};

  /// Initialize text controllers for given fields
  void initializeControllers(List<String> fieldNames,
      {bool initializeFocusNodes = true}) {
    for (final fieldName in fieldNames) {
      _controllers[fieldName] = TextEditingController();
      if (initializeFocusNodes) {
        _focusNodes[fieldName] = FocusNode();
      }
    }
  }

  /// Get a text editing controller by field name
  TextEditingController getController(String fieldName) {
    if (!_controllers.containsKey(fieldName)) {
      throw Exception(fieldName.controllerNotFoundError());
    }
    return _controllers[fieldName]!;
  }

  /// Get a focus node by field name
  FocusNode getFocusNode(String fieldName) {
    if (!_focusNodes.containsKey(fieldName)) {
      _focusNodes[fieldName] = FocusNode();
    }
    return _focusNodes[fieldName]!;
  }

  /// Initialize focus nodes for given fields
  void initializeFocusNodes(List<String> fieldNames) {
    for (final fieldName in fieldNames) {
      _focusNodes[fieldName] = FocusNode();
    }
  }

  /// Move focus to the next field in the list
  void moveToNextField(String currentField, List<String> fieldOrder) {
    final currentIndex = fieldOrder.indexOf(currentField);
    if (currentIndex != -1 && currentIndex < fieldOrder.length - 1) {
      final nextField = fieldOrder[currentIndex + 1];
      getFocusNode(nextField).requestFocus();
    }
  }

  /// Unfocus all fields
  void unfocusAll() {
    for (final focusNode in _focusNodes.values) {
      focusNode.unfocus();
    }
  }

  /// Get the current value of a text controller by field name
  String getControllerValue(String fieldName) => getController(fieldName).text;

  /// Set the value of a text controller by field name
  void setControllerValue(String fieldName, String value) =>
      getController(fieldName).text = value;

  /// Validate the entire form using the form key
  bool validateForm() {
    if (formKey.currentState == null) return false;
    final isValid = formKey.currentState!.validate();
    hasErrors.value = !isValid;
    return isValid;
  }

  /// Clear all form fields
  void clearForm() {
    for (final controller in _controllers.values) {
      controller.clear();
    }
    clearFormState();
  }

  /// Comprehensive form cleanup (clear fields, errors, obscure states)
  void cleanForm() {
    for (final controller in _controllers.values) {
      controller.clear();
    }
    clearFormState();
    for (final key in _obscureTextStates.keys) {
      _obscureTextStates[key]!.value = true;
    }
    update();
  }

  /// Clear form validation state and errors
  void clearFormState() {
    hasErrors.value = false;
    fieldErrors.clear();
    if (formKey.currentState != null) formKey.currentState!.reset();
  }

  /// Set an error for a specific field
  void setFieldError(String fieldName, String? error) {
    fieldErrors[fieldName] = error;
    Future.microtask(() {
      hasErrors.value = fieldErrors.values.any((error) => error != null);
    });
  }

  /// Get the error for a specific field
  String? getFieldError(String fieldName) => fieldErrors[fieldName];

  /// Clear the error for a specific field
  void clearFieldError(String fieldName) => setFieldError(fieldName, null);

  /// Validate a field and update field errors
  String? validateAndSetError(
      String fieldName, String? value, String? Function(String?) validator) {
    final error = validator(value);
    fieldErrors[fieldName] = error;
    Future.microtask(() {
      hasErrors.value = fieldErrors.values.any((error) => error != null);
    });
    return error;
  }

  /// Populate form fields with data from a map
  void populateForm(Map<String, String> data) {
    data.forEach((fieldName, value) {
      if (_controllers.containsKey(fieldName)) {
        setControllerValue(fieldName, value);
      }
    });
  }

  /// Get all form data as a map
  Map<String, String> getFormData() {
    final data = <String, String>{};
    _controllers.forEach((fieldName, controller) {
      data[fieldName] = controller.text;
    });
    return data;
  }

  /// Get all initialized controller field names
  Set<String> getControllerKeys() => _controllers.keys.toSet();

  /// Returns true if any form field has been modified
  bool isFormDirty() =>
      _controllers.values.any((controller) => controller.text.isNotEmpty);

  /// Get the obscure text state for a specific field
  bool getObscureText(String fieldKey) {
    if (!_obscureTextStates.containsKey(fieldKey)) {
      _obscureTextStates[fieldKey] = true.obs;
    }
    return _obscureTextStates[fieldKey]!.value;
  }

  /// Get the reactive obscure text state for a specific field
  RxBool getReactiveObscureText(String fieldKey) {
    if (!_obscureTextStates.containsKey(fieldKey)) {
      _obscureTextStates[fieldKey] = true.obs;
    }
    return _obscureTextStates[fieldKey]!;
  }

  /// Set the obscure text state for a specific field
  void setObscureText(String fieldKey, bool obscured) {
    if (!_obscureTextStates.containsKey(fieldKey)) {
      _obscureTextStates[fieldKey] = true.obs;
    }
    _obscureTextStates[fieldKey]!.value = obscured;
  }

  /// Toggle the obscure text state for a specific field
  void toggleObscureText(String fieldKey) {
    final currentState = getObscureText(fieldKey);
    setObscureText(fieldKey, !currentState);
  }

  /// Initialize obscure text states for multiple password fields
  void initializeObscureText(List<String> fieldKeys) {
    for (final fieldKey in fieldKeys) {
      if (!_obscureTextStates.containsKey(fieldKey)) {
        _obscureTextStates[fieldKey] = true.obs;
      }
    }
  }

  /// Dispose all text editing controllers and focus nodes
  void disposeControllers() {
    for (final controller in _controllers.values) {
      controller.dispose();
    }
    _controllers.clear();
    for (final focusNode in _focusNodes.values) {
      focusNode.dispose();
    }
    _focusNodes.clear();
  }

  /// Automatically called when the controller is disposed. Disposes all controllers and focus nodes.
  @override
  void onClose() {
    disposeControllers();
    super.onClose();
  }

  /// Returns true if all required fields are filled and valid
  bool isFormReady(List<String> requiredFields) {
    for (final fieldName in requiredFields) {
      if (!_controllers.containsKey(fieldName)) return false;
      final value = getControllerValue(fieldName).trim();
      if (value.isEmpty) return false;
      final validationError =
          validateFieldForSubmission(fieldName, value, fieldName);
      if (validationError != null) return false;
    }
    return true;
  }

  /// Returns a reactive boolean that updates when any of the required fields change
  RxBool reactiveFormReady(List<String> requiredFields) {
    final RxBool isReady = false.obs;
    void updateReady() {
      if (Get.isDialogOpen != true) {
        Future.microtask(() {
          isReady.value = isFormReady(requiredFields);
        });
      }
    }

    Future.microtask(() {
      for (final fieldName in requiredFields) {
        if (_controllers.containsKey(fieldName)) {
          _controllers[fieldName]!.addListener(updateReady);
        }
      }
      updateReady();
    });
    return isReady;
  }

  /// Mark a field as interacted (touched by user)
  void markFieldAsInteracted(String fieldName) {
    _fieldInteractionStates[fieldName] = true;
  }

  /// Returns true if a field has been interacted with
  bool isFieldInteracted(String fieldName) =>
      _fieldInteractionStates[fieldName] ?? false;

  /// Validate a field on demand, only showing errors if the field has been interacted with
  String? validateFieldOnDemand(
      String fieldName, String? value, String displayName) {
    if (!isFieldInteracted(fieldName)) return null;
    if (value == null || value.trim().isEmpty) {
      return '$displayName is required';
    }
    return null;
  }

  /// Validate a field for form submission (always validates, regardless of interaction)
  String? validateFieldForSubmission(
      String fieldName, String? value, String displayName) {
    if (value == null || value.trim().isEmpty) {
      return '$displayName is required';
    }
    return null;
  }
}
