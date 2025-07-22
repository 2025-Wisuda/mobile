import 'package:flutter/material.dart';

import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/mixins/get_mixin.dart';

/// GetX-only Base Form Controller: 1:1 with legacy base, but all state is Rx/obs, no private fields, and all helpers are overrideable.
abstract class GetBaseFormController<T, R> extends GetxController
    with GetFormMixin, GetValidatorMixin, GetSubmitStateMixin {
  /// Abstract method to execute the form API call with the given entity
  Future<Either<Failure, R>> executeUsecase(T entity);

  /// Abstract getter for the base state key (unique per controller)
  String get baseStateKey;

  /// Abstract getter for form mode (create/update/etc)
  FormMode get mode;

  /// Abstract getter for required fields
  List<String> get requiredFields;

  /// Abstract method to build the entity from form data
  T buildEntity();

  /// Current entity being processed
  T? currentEntity;

  /// Original form data for comparison (for updates)
  Map<String, String> originalFormData = {};

  /// Flag for optimistic mode
  bool isOptimisticMode = false;

  /// Callback for optimistic rollback
  VoidCallback? rollbackCallback;

  /// Field interaction state (public, no underscore)
  final Map<String, bool> fieldInteractionStates = {};

  /// Field focus state tracking for better UX
  final Map<String, bool> fieldFocusStates = {};

  /// --- FORM MANAGEMENT ---
  void populateFormData(dynamic data) {
    originalFormData = getFormData();
  }

  void populateFormFromEntity<E>({
    required E entity,
    required String? Function(String fieldName) fieldMapper,
    Map<String, String>? additionalMappings,
  }) {
    final Map<String, String> formData = {};
    final availableFields = getControllerKeys();
    for (final fieldName in availableFields) {
      final value = fieldMapper(fieldName);
      if (value != null) {
        formData[fieldName] = value;
      }
    }
    if (additionalMappings != null) {
      formData.addAll(additionalMappings);
    }
    populateForm(formData);
    originalFormData = getFormData();
  }

  void populateFormWithMappings(Map<String, String> fieldMappings) {
    populateForm(fieldMappings);
    originalFormData = getFormData();
  }

  void autoPopulateFromEntity<E>({
    required E entity,
    required Map<String, dynamic> Function(E) entityToMap,
    Map<String, String Function(dynamic)>? fieldTransformers,
  }) {
    final entityMap = entityToMap(entity);
    final Map<String, String> formData = {};
    final availableFields = getControllerKeys();
    for (final fieldName in availableFields) {
      if (entityMap.containsKey(fieldName)) {
        final value = entityMap[fieldName];
        if (fieldTransformers != null &&
            fieldTransformers.containsKey(fieldName)) {
          formData[fieldName] = fieldTransformers[fieldName]!(value);
        } else {
          formData[fieldName] = value?.toString() ?? '';
        }
      }
    }
    populateForm(formData);
    originalFormData = getFormData();
  }

  bool hasValueChanged(String fieldName) {
    final currentValue = getControllerValue(fieldName);
    final originalValue = originalFormData[fieldName] ?? '';
    return currentValue != originalValue;
  }

  Map<String, String> getChangedFields() {
    final Map<String, String> changedFields = {};
    final currentData = getFormData();
    currentData.forEach((field, value) {
      final originalValue = originalFormData[field] ?? '';
      if (value != originalValue) {
        changedFields[field] = value;
      }
    });
    return changedFields;
  }

  void resetToOriginal() {
    if (originalFormData.isNotEmpty) {
      populateForm(originalFormData);
    }
  }

  /// Reactive form validation state
  final RxBool _isFormValid = false.obs;

  /// Reactive getter for form validation
  RxBool get isFormValid => _isFormValid;

  /// --- VALIDATION ---
  Map<String, String?> validateAllFields() {
    final Map<String, String?> errors = {};
    for (String field in requiredFields) {
      final value = getControllerValue(field);
      final error = validateFieldForSubmission(field, value, field);
      if (error != null) {
        errors[field] = error;
      }
    }
    return errors;
  }

  /// Update form validation state reactively
  void _updateFormValidation() {
    // Semua required field sudah di-interact
    final allInteracted = requiredFields.every(hasFieldBeenInteracted);
    // Semua validator return null (valid)
    final errors = validateAllFields();
    final allValid = errors.values.every((error) => error == null);
    _isFormValid.value = allInteracted && allValid;
  }

  /// Check if field should show validation errors (only if interacted)
  bool shouldShowValidationError(String fieldName) {
    return hasFieldBeenInteracted(fieldName);
  }

  bool get hasValidationErrors => hasErrors.value;

  /// --- SUBMIT STATE ---
  Future<void> submitForm() async {
    submitStates[baseStateKey] = SubmitStateEnum.submitting;
    currentEntity = buildEntity();
    final result = await executeUsecase(currentEntity as T);
    result.fold(
      (failure) {
        submitStates[baseStateKey] = SubmitStateEnum.failure;
        customMessages[baseStateKey] = failure.message;
        onSubmitError(failure);
      },
      (response) {
        submitStates[baseStateKey] = SubmitStateEnum.success;
        onSubmitSuccess(response);
      },
    );
  }

  Future<void> submitWithConfirmation(
      {required Future<bool> Function() confirmationCallback}) async {
    final confirmed = await confirmationCallback();
    if (confirmed) {
      await submitForm();
    } else {
      submitStates[baseStateKey] = SubmitStateEnum.cancelled;
      onSubmitCancelled();
    }
  }

  Future<void> submitFormOptimistic(
      {VoidCallback? optimisticAction, VoidCallback? rollbackAction}) async {
    optimisticAction?.call();
    await submitForm();
    if (submitStates[baseStateKey] == SubmitStateEnum.failure) {
      rollbackAction?.call();
    }
  }

  Future<void> submitSilent() async {
    currentEntity = buildEntity();
    final result = await executeUsecase(currentEntity as T);
    result.fold(
      (failure) => onSubmitError(failure),
      (response) => onSubmitSuccess(response),
    );
  }

  void cancelSubmit() {
    submitStates[baseStateKey] = SubmitStateEnum.cancelled;
    onSubmitCancelled();
  }

  void resetState() {
    submitStates[baseStateKey] = SubmitStateEnum.initial;
    customMessages.remove(baseStateKey);
  }

  void resetForm() {
    clearForm();
    originalFormData.clear();
  }

  void clearAll() {
    clearForm();
    resetState();
    originalFormData.clear();
    currentEntity = null;
    isOptimisticMode = false;
    rollbackCallback = null;
  }

  /// --- STATE GETTERS ---
  /// Gets reactive state for the current operation
  Rx<SubmitStateEnum> get reactiveState => getReactiveState(baseStateKey);

  bool get isSubmitting =>
      submitStates[baseStateKey] == SubmitStateEnum.submitting;
  bool get isSuccess => submitStates[baseStateKey] == SubmitStateEnum.success;
  bool get hasError => submitStates[baseStateKey] == SubmitStateEnum.failure;
  bool get isCancelled =>
      submitStates[baseStateKey] == SubmitStateEnum.cancelled;
  SubmitStateEnum get state =>
      submitStates[baseStateKey] ?? SubmitStateEnum.initial;
  String get stateDescription =>
      customMessages[baseStateKey] ?? state.description;
  String get submitButtonText {
    if (isSubmitting) {
      return '${modeDescription}ing...';
    }
    return modeDescription;
  }

  String get modeDescription {
    switch (mode) {
      case FormMode.create:
        return 'Create';
      case FormMode.update:
        return 'Update';
      case FormMode.partialUpdate:
        return 'Update';
    }
  }

  /// --- FIELD INTERACTION ---
  bool hasFieldBeenInteracted(String fieldName) {
    return fieldInteractionStates[fieldName] ?? false;
  }

  /// Track field focus state
  void markFieldAsFocused(String fieldName) {
    fieldFocusStates[fieldName] = true;
    _updateFormValidation();
  }

  /// Track field unfocus state
  void markFieldAsUnfocused(String fieldName) {
    fieldFocusStates[fieldName] = false;
    _updateFormValidation();
  }

  /// Check if field is currently focused
  bool isFieldFocused(String fieldName) {
    return fieldFocusStates[fieldName] ?? false;
  }

  /// Override mixin methods to auto-update validation
  @override
  void initializeControllers(List<String> fieldNames,
      {bool initializeFocusNodes = true}) {
    super.initializeControllers(fieldNames,
        initializeFocusNodes: initializeFocusNodes);
    // Add listeners to auto-update validation
    for (final fieldName in fieldNames) {
      getController(fieldName).addListener(() => _updateFormValidation());
    }
    // Don't trigger initial validation to avoid early errors
    // _updateFormValidation(); // Removed to prevent early validation errors
  }

  @override
  void setControllerValue(String fieldName, String value) {
    super.setControllerValue(fieldName, value);
    _updateFormValidation();
  }

  @override
  void populateForm(Map<String, String> data) {
    super.populateForm(data);
    _updateFormValidation();
  }

  @override
  void clearForm() {
    super.clearForm();
    fieldInteractionStates.clear();
    _updateFormValidation();
  }

  @override
  void cleanForm() {
    super.cleanForm();
    fieldInteractionStates.clear();
    fieldFocusStates.clear();
    // Reset all text fields
    for (final key in getControllerKeys()) {
      getController(key).clear();
    }
    // Reset all obscureText fields to true
    for (final key in getControllerKeys()) {
      try {
        getReactiveObscureText(key).value = true;
      } catch (_) {}
    }
    _updateFormValidation();
  }

  @override
  void markFieldAsInteracted(String fieldName) {
    super.markFieldAsInteracted(fieldName);
    fieldInteractionStates[fieldName] = true;
    _updateFormValidation();
  }

  /// --- LIFECYCLE HOOKS ---
  void onSubmitStarted(T entity) {}
  void onSubmitSuccess(R response) {}
  void onSubmitError(Failure failure) {}
  void onSubmitCancelled() {}

  // @override
  // void onInit() {
  //   super.onInit();
  //   // Don't trigger validation on init to avoid early errors
  //   // _updateFormValidation(); // Removed to prevent early validation errors
  // }

  @override
  void onClose() {
    clearAll();
    super.onClose();
  }
}
