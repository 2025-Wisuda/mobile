// ignore_for_file: unintended_html_in_doc_comment

import 'package:flutter/material.dart';

import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/mixins/mixin.dart';

/// A base abstract controller that provides standardized form submission operations for create, update, and other form-based operations.
/// This controller eliminates code duplication for common form operations across different entities while maintaining clean separation from simple post operations like login.
///
/// **Key Features:**
/// - 📝 Form operations with comprehensive validation support
/// - 🎯 Flexible entity parameter system using dynamic types
/// - 📊 Built-in submitting, success, error, and cancelled states
/// - 🧹 Comprehensive form and state management
/// - 🔧 Form, Validator, and SubmitState mixins integration
/// - ♻️ Multiple reset and clear methods
/// - 📝 Support for create, update, and other form modes
/// - ⚡ Auto-validation and reactive form state
/// - 🔄 Optimistic updates with rollback support
///
/// **Type Parameters:**
/// - `[T]`: Request Entity type (e.g., CreateUserEntity, UpdateProductEntity)
/// - `[R]`: Response type (e.g., UserEntity, BaseResponseEntity<UserEntity>, void)
///
/// **Basic Create Implementation Example:**
/// ```dart
/// class CreateUserController extends BaseFormController<CreateUserEntity, UserEntity> {
///   final CreateUserUsecase createUserUsecase;
///
///   CreateUserController({required this.createUserUsecase});
///
///   @override
///   String get baseStateKey => 'createUser';
///
///   @override
///   FormMode get mode => FormMode.create;
///
///   @override
///   List<String> get requiredFields => ['name', 'email', 'password'];
///
///   @override
///   Future<Either<Failure, BaseResponseEntity<UserEntity>>> executeUsecase(
///     CreateUserEntity entity
///   ) async {
///     return await createUserUsecase.execute(data: entity);
///   }
///
///   @override
///   CreateUserEntity buildEntity() {
///     return CreateUserEntity(
///       name: getControllerValue('name'),
///       email: getControllerValue('email'),
///       password: getControllerValue('password'),
///       role: getControllerValue('role'),
///     );
///   }
///
///   @override
///   void onSubmitSuccess(BaseResponseEntity<UserEntity> response) {
///     super.onSubmitSuccess(response);
///     Get.snackbar('Success', 'User created successfully');
///     Get.back(result: response.data);
///   }
/// }
/// ```
///
/// **Advanced Update Implementation Example:**
/// ```dart
/// class UpdateUserController extends BaseFormController<UpdateUserEntity, UserEntity> {
///   final UpdateUserUsecase updateUserUsecase;
///   final String userId;
///
///   UpdateUserController({
///     required this.updateUserUsecase,
///     required this.userId,
///   });
///
///   @override
///   String get baseStateKey => 'updateUser';
///
///   @override
///   FormMode get mode => FormMode.update;
///
///   @override
///   List<String> get requiredFields => ['name', 'email'];
///
///   @override
///   Future<Either<Failure, BaseResponseEntity<UserEntity>>> executeUsecase(
///     UpdateUserEntity entity
///   ) async {
///     return await updateUserUsecase.execute(data: entity);
///   }
///
///   @override
///   UpdateUserEntity buildEntity() {
///     return UpdateUserEntity(
///       id: userId,
///       name: getControllerValue('name'),
///       email: getControllerValue('email'),
///       // Only include fields that have changed
///       bio: hasValueChanged('bio') ? getControllerValue('bio') : null,
///     );
///   }
///
///   @override
///   void populateFormData(UserEntity user) {
///     populateForm({
///       'name': user.name,
///       'email': user.email,
///       'bio': user.bio ?? '',
///     });
///   }
/// }
/// ```
///
/// **Complex Form Implementation Example:**
/// ```dart
/// class CreateOrderController extends BaseFormController<CreateOrderEntity, OrderEntity> {
///   final CreateOrderUsecase createOrderUsecase;
///
///   CreateOrderController({required this.createOrderUsecase});
///
///   @override
///   String get baseStateKey => 'createOrder';
///
///   @override
///   FormMode get mode => FormMode.create;
///
///   @override
///   List<String> get requiredFields => ['customerId', 'products'];
///
///   @override
///   Future<Either<Failure, BaseResponseEntity<OrderEntity>>> executeUsecase(
///     CreateOrderEntity entity
///   ) async {
///     return await createOrderUsecase.execute(data: entity);
///   }
///
///   @override
///   CreateOrderEntity buildEntity() {
///     return CreateOrderEntity(
///       customerId: getControllerValue('customerId'),
///       products: _buildProductList(),
///       notes: getControllerValue('notes'),
///       deliveryDate: _selectedDeliveryDate.value,
///     );
///   }
///
///   @override
///   Map<String, String?> validateAllFields() {
///     final errors = super.validateAllFields();
///
///     // Custom validation
///     if (_selectedProducts.isEmpty) {
///       errors['products'] = 'At least one product is required';
///     }
///
///     return errors;
///   }
/// }
/// ```
///
/// **Usage Examples:**
/// ```dart
/// // Simple create operation
/// await controller.submitForm();
///
/// // Create with custom validation
/// if (controller.validateBeforeSubmit()) {
///   await controller.submitForm();
/// }
///
/// // Update with optimistic UI updates
/// await controller.submitFormOptimistic(
///   optimisticAction: () => updateUserInList(updatedUser),
///   rollbackAction: () => revertUserInList(originalUser),
/// );
///
/// // Submit with confirmation
/// await controller.submitWithConfirmation(
///   confirmationCallback: () async {
///     return await showConfirmDialog('Save changes?');
///   },
/// );
/// ```
///
/// **State Management Examples:**
/// ```dart
/// // Check states
/// if (controller.isSubmitting) {
///   // Show loading indicator
/// }
///
/// if (controller.hasError) {
///   // Show error message
///   print(controller.stateDescription);
/// }
///
/// if (controller.isSuccess) {
///   // Show success message or navigate
/// }
///
/// // Form validation states
/// if (controller.isFormValid) {
///   // Enable submit button
/// }
///
/// if (controller.hasValidationErrors) {
///   // Show field errors
/// }
/// ```
///
/// **UI Integration Examples:**
/// ```dart
/// // Reactive submit button
/// Obx(() => ElevatedButton(
///   onPressed: controller.canSubmit
///     ? () => controller.submitForm()
///     : null,
///   child: controller.isSubmitting
///     ? CircularProgressIndicator()
///     : Text(controller.submitButtonText),
/// ))
///
/// // Form validation display
/// Obx(() => TextFormField(
///   controller: controller.getController('email'),
///   decoration: InputDecoration(
///     errorText: controller.getFieldError('email'),
///   ),
///   onChanged: controller.validateEmailField,
/// ))
///
/// // State-based UI
/// Obx(() {
///   if (controller.isSuccess) {
///     return SuccessWidget();
///   }
///   if (controller.hasError) {
///     return ErrorWidget(controller.errorMessage);
///   }
///   return FormWidget();
/// })
/// ```
///
/// **Available Methods Summary:**
///
/// **Core Submit Methods:**
/// - `submitForm()` - Main method to submit form
/// - `submitWithConfirmation()` - Submit with confirmation dialog
/// - `submitFormOptimistic()` - Optimistic submit with rollback
/// - `submitSilent()` - Submit without UI feedback
///
/// **Validation Methods:**
/// - `validateBeforeSubmit()` - Validate all fields before submit
/// - `validateAllFields()` - Get all validation errors
/// - `isFormValid` - Check if form is valid
/// - `hasValidationErrors` - Check if has validation errors
///
/// **Form Management Methods:**
/// - `buildEntity()` - Build entity from form data (abstract)
/// - `populateFormData()` - Populate form with existing data
/// - `resetForm()` - Reset form to initial state
/// - `clearForm()` - Clear all form data
///
/// **State Management Methods:**
/// - `resetState()` - Reset submit operation state
/// - `clearAll()` - Complete reset (form and state)
/// - `cancelSubmit()` - Cancel ongoing submit operation
///
/// **State Getters:**
/// - `isSubmitting`, `isSuccess`, `hasError`, `isCancelled`
/// - `canSubmit`, `submitButtonText`, `mode`
/// - `stateDescription`, `errorMessage`
///
/// **Helper Methods (Override if needed):**
/// - `onSubmitStarted()` - Called when submit starts
/// - `onSubmitSuccess()` - Called on successful submit
/// - `onSubmitError()` - Called on submit error
/// - `onSubmitCancelled()` - Called when submit is cancelled
/// - `hasValueChanged()` - Check if field value changed (for updates)
abstract class BaseFormController<T, R> extends GetxController
    with FormMixin, ValidatorMixin, SubmitStateMixin {
  // ═══════════════════════════════════════════════════════════════════════════
  // PROPERTIES & FIELDS
  // ═══════════════════════════════════════════════════════════════════════════

  /// Current entity being processed
  T? _currentEntity;

  /// Original form data for comparison (useful for updates)
  Map<String, String> _originalFormData = {};

  /// Flag to track if optimistic submission is enabled
  bool _isOptimisticMode = false;

  /// Callback for optimistic rollback
  VoidCallback? _rollbackCallback;

  /// Reactive form validity state
  RxBool? _canSubmit;
  RxBool get canSubmit => _canSubmit ?? false.obs;

  /// Initialize reactive form validation
  void _initializeCanSubmit() {
    _canSubmit = reactiveFormReady(requiredFields);
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // ABSTRACT METHODS (Must be implemented by subclasses)
  // ═══════════════════════════════════════════════════════════════════════════

  /// Abstract method to execute the form submission API call with the given entity
  ///
  /// This method should implement the actual API call using the provided usecase.
  /// It can return Either<Failure, BaseResponseEntity<R>> for entities or Either<Failure, void> for simple operations.
  ///
  /// Example implementation:
  /// ```dart
  /// @override
  /// Future<Either<Failure, BaseResponseEntity<UserEntity>>> executeUsecase(
  ///   CreateUserEntity entity
  /// ) async {
  ///   return await createUserUsecase.execute(data: entity);
  /// }
  /// ```
  Future<Either<Failure, dynamic>> executeUsecase(T entity);

  /// Abstract getter for the base state key
  ///
  /// This key is used for state management operations. It should be unique
  /// for each controller type to avoid state conflicts.
  ///
  /// Example:
  /// ```dart
  /// @override
  /// String get baseStateKey => 'createUser';
  /// ```
  String get baseStateKey;

  /// Abstract method to build entity from current form data
  ///
  /// This method should create the request entity using form field values.
  /// It's called automatically before form submission.
  ///
  /// Example implementation:
  /// ```dart
  /// @override
  /// CreateUserEntity buildEntity() {
  ///   return CreateUserEntity(
  ///     name: getControllerValue('name'),
  ///     email: getControllerValue('email'),
  ///     password: getControllerValue('password'),
  ///   );
  /// }
  /// ```
  T buildEntity();

  /// Abstract getter for form mode
  ///
  /// Specifies whether this is a create, update, or other operation.
  /// Used for determining UI behavior and validation rules.
  ///
  /// Example:
  /// ```dart
  /// @override
  /// FormMode get mode => FormMode.create;
  /// ```
  FormMode get mode;

  /// Abstract getter for required fields list
  ///
  /// Lists all fields that must have values for the form to be valid.
  /// Used for reactive form validation.
  ///
  /// Example:
  /// ```dart
  /// @override
  /// List<String> get requiredFields => ['name', 'email', 'password'];
  /// ```
  List<String> get requiredFields;

  // ═══════════════════════════════════════════════════════════════════════════
  // GETTERS & STATE KEYS
  // ═══════════════════════════════════════════════════════════════════════════

  /// Current state key for this controller
  String get currentStateKey => baseStateKey;

  /// Current entity being processed
  T? get currentEntity => _currentEntity;

  /// Whether optimistic mode is currently enabled
  bool get isOptimisticMode => _isOptimisticMode;

  /// Form mode description
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

  /// Submit button text based on mode and state
  String get submitButtonText {
    if (isSubmitting) {
      return '${modeDescription}ing...';
    }
    return modeDescription;
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // REACTIVE STATE GETTERS
  // ═══════════════════════════════════════════════════════════════════════════

  /// Gets reactive state for the current operation
  Rx<SubmitStateEnum> get reactiveState => getReactiveState(currentStateKey);

  /// Current state enum value (non-reactive)
  SubmitStateEnum get state => getReactiveState(currentStateKey).value;

  /// State check getters using current state key
  bool get isSubmitting => isOperationLoadingOrSubmitting(currentStateKey);
  bool get isSuccess =>
      getSubmitState(currentStateKey) == SubmitStateEnum.success;
  bool get hasError => isOperationError(currentStateKey);

  /// Current state description (includes error message if any)
  String get stateDescription => getOperationStateDescription(currentStateKey);

  /// Error message if any
  String? get errorMessage => hasError ? stateDescription : null;

  // ═══════════════════════════════════════════════════════════════════════════
  // VALIDATION STATE GETTERS
  // ═══════════════════════════════════════════════════════════════════════════

  /// Whether form has validation errors
  bool get hasValidationErrors => hasErrors.value;

  /// Whether form is valid (no validation errors and required fields filled)
  /// Uses validateAllFields() to check proper validation logic
  bool get isFormValid {
    final errors = validateAllFields();
    return errors.values.every((error) => error == null);
  }

  /// Reactive form validation state for UI bindings
  RxBool get reactiveFormValid {
    return _reactiveFormValid ??= _createReactiveFormValid();
  }

  RxBool? _reactiveFormValid;

  /// Creates reactive form valid state that updates when validation or canSubmit changes
  RxBool _createReactiveFormValid() {
    final reactive = false.obs;

    void updateFormValid() {
      // Double protection to prevent setState during build
      if (Get.isDialogOpen != true) {
        Future.microtask(() {
          reactive.value = isFormValid;
        });
      }
    }

    // Defer listener setup to avoid conflicts with build phase
    Future.microtask(() {
      // Add listeners to all required fields (same as reactiveFormReady)
      for (String fieldName in requiredFields) {
        if (getControllerKeys().contains(fieldName)) {
          getController(fieldName).addListener(updateFormValid);
        }
      }

      // Initial update after listeners are set up
      updateFormValid();
    });

    return reactive;
  }

  /// Error message for display
  String get validationErrorMessage {
    if (!hasValidationErrors) return '';
    final firstError = fieldErrors.values.firstWhere((error) => error != null);
    return firstError ?? '';
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // LIFECYCLE METHODS
  // ═══════════════════════════════════════════════════════════════════════════

  @override
  void onReady() {
    super.onReady();
    // Initialize reactive form validation here when controllers are ready
    _initializeCanSubmit();
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // CORE SUBMIT METHODS
  // ═══════════════════════════════════════════════════════════════════════════

  /// Main method to submit form
  ///
  /// This method handles the form submission with proper state management.
  /// It automatically validates the form, builds the entity, and manages states.
  ///
  /// Example usage:
  /// ```dart
  /// // Simple submit
  /// await controller.submitForm();
  ///
  /// // With validation check
  /// if (controller.isFormValid) {
  ///   await controller.submitForm();
  /// }
  /// ```
  Future<void> submitForm() async {
    if (!validateBeforeSubmit()) return;

    _currentEntity = buildEntity();
    _isOptimisticMode = false;

    onSubmitStarted(_currentEntity as T);

    await executeSubmitWithNetwork<T, dynamic>(
      currentStateKey,
      _currentEntity as T,
      (entity) => executeUsecase(entity),
      onSuccess: (response) async {
        onSubmitSuccess(response);
        update([currentStateKey]);
        // Don't reset state immediately - let UI handle success state first
      },
      onFailure: (failure) {
        onSubmitError(failure, _currentEntity as T);
        update([currentStateKey]);
        // Don't reset state immediately - let UI handle failure state first
      },
    );
  }

  /// Submit with confirmation callback
  ///
  /// This method calls a confirmation callback before proceeding with the form submission.
  /// The UI layer should handle the confirmation dialog/logic.
  ///
  /// Parameters:
  /// - [confirmationCallback]: Function that returns Future<bool> for confirmation
  ///
  /// Example usage:
  /// ```dart
  /// await controller.submitWithConfirmation(
  ///   confirmationCallback: () async {
  ///     return await showDialog<bool>(...) ?? false;
  ///   },
  /// );
  /// ```
  Future<void> submitWithConfirmation({
    required Future<bool> Function() confirmationCallback,
  }) async {
    final confirmed = await confirmationCallback();
    if (confirmed) {
      await submitForm();
    } else {
      onSubmitCancelled();
    }
  }

  /// Optimistic form submission
  ///
  /// This method performs optimistic submission - it assumes the operation will succeed
  /// and immediately applies changes to the UI, then performs the actual submit.
  /// If the submit fails, it rolls back the changes.
  ///
  /// Parameters:
  /// - [optimisticAction]: Function to execute immediately (update UI)
  /// - [rollbackAction]: Function to execute if submit fails (restore UI)
  ///
  /// Example usage:
  /// ```dart
  /// await controller.submitFormOptimistic(
  ///   optimisticAction: () => updateUserInList(updatedUser),
  ///   rollbackAction: () => revertUserInList(originalUser),
  /// );
  /// ```
  Future<void> submitFormOptimistic({
    VoidCallback? optimisticAction,
    VoidCallback? rollbackAction,
  }) async {
    if (!validateBeforeSubmit()) return;

    _currentEntity = buildEntity();
    _isOptimisticMode = true;
    _rollbackCallback = rollbackAction;

    // Execute optimistic action immediately
    optimisticAction?.call();
    onSubmitStarted(_currentEntity as T);

    await executeSubmitWithNetwork<T, dynamic>(
      currentStateKey,
      _currentEntity as T,
      (entity) => executeUsecase(entity),
      onSuccess: (response) async {
        onSubmitSuccess(response);
        update([currentStateKey]);
        resetState();
      },
      onFailure: (failure) {
        rollbackAction?.call();
        onSubmitError(failure, _currentEntity as T);
        resetState();
      },
    );

    _isOptimisticMode = false;
    _rollbackCallback = null;
  }

  /// Silent form submission
  ///
  /// This method performs a form submission without showing loading states
  /// or user feedback. Useful for background operations.
  ///
  /// Example usage:
  /// ```dart
  /// // Silent submit for auto-save
  /// await controller.submitSilent();
  /// ```
  Future<void> submitSilent() async {
    if (!validateBeforeSubmit()) return;

    _currentEntity = buildEntity();
    onSubmitStarted(_currentEntity as T);

    final result = await executeUsecase(_currentEntity as T);
    result.fold(
      (failure) => onSubmitError(failure, _currentEntity as T),
      (response) => onSubmitSuccess(response),
    );
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // VALIDATION METHODS
  // ═══════════════════════════════════════════════════════════════════════════

  /// Validates all fields before form submission
  ///
  /// Returns true if form is valid and ready for submission.
  /// This method validates the form and updates field errors.
  ///
  /// Example:
  /// ```dart
  /// if (controller.validateBeforeSubmit()) {
  ///   // Form is valid, proceed with submission
  /// }
  /// ```
  bool validateBeforeSubmit() {
    // Validate form using FormMixin
    final isFormValid = validateForm();

    // Additional custom validation
    final customErrors = validateAllFields();
    customErrors.forEach((field, error) {
      setFieldError(field, error);
    });

    return isFormValid && customErrors.values.every((error) => error == null);
  }

  /// Validates all fields and returns error map
  ///
  /// Override this method to add custom validation logic.
  /// Returns a map of field names to error messages.
  ///
  /// Example override:
  /// ```dart
  /// @override
  /// Map<String, String?> validateAllFields() {
  ///   final errors = super.validateAllFields();
  ///
  ///   // Custom validation
  ///   if (getControllerValue('password') != getControllerValue('confirmPassword')) {
  ///     errors['confirmPassword'] = 'Passwords do not match';
  ///   }
  ///
  ///   return errors;
  /// }
  /// ```
  Map<String, String?> validateAllFields() {
    final Map<String, String?> errors = {};

    // Validate required fields
    for (String field in requiredFields) {
      final value = getControllerValue(field);
      if (value.trim().isEmpty) {
        errors[field] = '${field.capitalize} is required';
      }
    }

    return errors;
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // FORM MANAGEMENT METHODS
  // ═══════════════════════════════════════════════════════════════════════════

  /// Populates form with existing data (for updates)
  ///
  /// Override this method to populate form fields with entity data.
  ///
  /// Parameters:
  /// - [data]: The entity data to populate form with
  ///
  /// Example override:
  /// ```dart
  /// @override
  /// void populateFormData(UserEntity user) {
  ///   populateForm({
  ///     'name': user.name,
  ///     'email': user.email,
  ///     'bio': user.bio ?? '',
  ///   });
  ///   // Store original data for comparison
  ///   _originalFormData = getFormData();
  /// }
  /// ```
  void populateFormData(dynamic data) {
    // Store original data for comparison
    _originalFormData = getFormData();
  }

  /// Generic method to populate form from entity using reflection-like approach
  ///
  /// This method automatically maps entity properties to form fields based on field names.
  /// It uses a mapping function to extract values from the entity.
  ///
  /// Parameters:
  /// - [entity]: The entity to extract data from
  /// - [fieldMapper]: Function that maps field names to entity property values
  /// - [additionalMappings]: Optional custom field mappings
  ///
  /// Example usage:
  /// ```dart
  /// void loadUserForUpdate(UserEntity user) {
  ///   populateFormFromEntity(
  ///     entity: user,
  ///     fieldMapper: (fieldName) {
  ///       switch (fieldName) {
  ///         case 'name': return user.name;
  ///         case 'email': return user.email;
  ///         case 'bio': return user.bio;
  ///         default: return null;
  ///       }
  ///     },
  ///     additionalMappings: {
  ///       'fullName': '${user.firstName} ${user.lastName}',
  ///     },
  ///   );
  /// }
  /// ```
  void populateFormFromEntity<E>({
    required E entity,
    required String? Function(String fieldName) fieldMapper,
    Map<String, String>? additionalMappings,
  }) {
    final Map<String, String> formData = {};

    // Get all initialized controller field names
    final availableFields = getControllerKeys();

    // Map entity properties to form fields
    for (final fieldName in availableFields) {
      final value = fieldMapper(fieldName);
      if (value != null) {
        formData[fieldName] = value;
      }
    }

    // Add additional custom mappings
    if (additionalMappings != null) {
      formData.addAll(additionalMappings);
    }

    // Populate the form
    populateForm(formData);

    // Store original data for comparison
    _originalFormData = getFormData();
  }

  /// Simplified method to populate form using a map of field-to-value mappings
  ///
  /// This is a cleaner approach when you want explicit control over field mappings.
  ///
  /// Parameters:
  /// - [fieldMappings]: Map of field names to their values
  ///
  /// Example usage:
  /// ```dart
  /// void loadCourseForUpdate(CourseEntity course) {
  ///   populateFormWithMappings({
  ///     'title': course.title ?? '',
  ///     'description': course.description ?? '',
  ///     'enrollKey': course.enrollKey ?? '',
  ///   });
  /// }
  /// ```
  void populateFormWithMappings(Map<String, String> fieldMappings) {
    populateForm(fieldMappings);
    _originalFormData = getFormData();
  }

  /// Auto-populate form from entity using JSON-like approach
  ///
  /// This method attempts to automatically map entity properties to form fields
  /// by converting the entity to a map and matching field names.
  ///
  /// Parameters:
  /// - [entity]: The entity to extract data from
  /// - [entityToMap]: Function to convert entity to Map<String, dynamic>
  /// - [fieldTransformers]: Optional transformers for specific fields
  ///
  /// Example usage:
  /// ```dart
  /// void loadUserForUpdate(UserEntity user) {
  ///   autoPopulateFromEntity(
  ///     entity: user,
  ///     entityToMap: (user) => user.toJson(),
  ///     fieldTransformers: {
  ///       'startDate': (value) => value?.toString() ?? '',
  ///       'endDate': (value) => value?.toString() ?? '',
  ///     },
  ///   );
  /// }
  /// ```
  void autoPopulateFromEntity<E>({
    required E entity,
    required Map<String, dynamic> Function(E entity) entityToMap,
    Map<String, String Function(dynamic)>? fieldTransformers,
  }) {
    final entityMap = entityToMap(entity);
    final Map<String, String> formData = {};

    // Get all initialized controller field names
    final availableFields = getControllerKeys();

    // Map entity properties to form fields
    for (final fieldName in availableFields) {
      if (entityMap.containsKey(fieldName)) {
        final value = entityMap[fieldName];

        if (fieldTransformers?.containsKey(fieldName) == true) {
          // Use custom transformer
          formData[fieldName] = fieldTransformers![fieldName]!(value);
        } else {
          // Default string conversion
          formData[fieldName] = value?.toString() ?? '';
        }
      }
    }

    // Populate the form
    populateForm(formData);

    // Store original data for comparison
    _originalFormData = getFormData();
  }

  /// Auto-populate form directly from entity (requires toJson method)
  ///
  /// This method automatically maps ALL entity properties to form fields
  /// by using the entity's toJson() method and matching field names.
  /// No manual mapping required!
  ///
  /// Parameters:
  /// - [entity]: Any entity with toJson() method
  ///
  /// Example usage:
  /// ```dart
  /// void loadUserForUpdate(UserEntity user) {
  ///   autoPopulateForm(user); // That's it!
  /// }
  /// ```
  void autoPopulateForm(dynamic entity) {
    if (entity == null) return;

    try {
      // Try to get toJson method from entity
      final entityMap = entity.toJson() as Map<String, dynamic>;
      final Map<String, String> formData = {};

      // Get all available form fields
      final availableFields = getControllerKeys();

      // Auto-map all matching fields
      for (final fieldName in availableFields) {
        if (entityMap.containsKey(fieldName)) {
          final value = entityMap[fieldName];
          formData[fieldName] = value?.toString() ?? '';
        }
      }

      // Populate the form
      populateForm(formData);

      // Store original data for comparison
      _originalFormData = getFormData();
    } catch (e) {
      // Fallback: entity doesn't have toJson, do nothing
    }
  }

  /// Checks if a field value has changed from original (useful for updates)
  ///
  /// Parameters:
  /// - [fieldName]: Name of the field to check
  ///
  /// Returns true if value has changed from original.
  bool hasValueChanged(String fieldName) {
    final currentValue = getControllerValue(fieldName);
    final originalValue = _originalFormData[fieldName] ?? '';
    return currentValue != originalValue;
  }

  /// Gets changed fields for partial updates
  ///
  /// Returns a map of only the fields that have changed from original values.
  Map<String, String> getChangedFields() {
    final Map<String, String> changedFields = {};
    final currentData = getFormData();

    currentData.forEach((field, value) {
      final originalValue = _originalFormData[field] ?? '';
      if (value != originalValue) {
        changedFields[field] = value;
      }
    });

    return changedFields;
  }

  /// Resets form to original data
  void resetToOriginal() {
    if (_originalFormData.isNotEmpty) {
      populateForm(_originalFormData);
    }
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // STATE MANAGEMENT METHODS
  // ═══════════════════════════════════════════════════════════════════════════

  /// Cancel ongoing submit operation
  ///
  /// This method cancels the current submit operation and sets the state to cancelled.
  /// If optimistic submission was used, it triggers the rollback.
  ///
  /// Example:
  /// ```dart
  /// // Cancel current submit operation
  /// controller.cancelSubmit();
  /// ```
  void cancelSubmit() {
    if (_currentEntity != null) {
      setSubmitState(currentStateKey, SubmitStateEnum.cancelled);

      // Rollback optimistic changes if applicable
      if (_isOptimisticMode && _rollbackCallback != null) {
        _rollbackCallback!();
      }

      onSubmitCancelled();
      update([currentStateKey]);
    }
  }

  /// Reset submit operation state to initial
  ///
  /// This method resets the submit operation state while keeping
  /// the form data intact.
  ///
  /// Example:
  /// ```dart
  /// // Reset state after handling results
  /// controller.resetState();
  /// ```
  void resetState() {
    resetOperationState(currentStateKey);
  }

  /// Reset form to initial state
  ///
  /// This method resets form fields while keeping state.
  /// Useful for preparing form for new entry.
  ///
  /// Example:
  /// ```dart
  /// // Reset form for new entry
  /// controller.resetForm();
  /// ```
  void resetForm() {
    clearForm();
    _originalFormData.clear();
  }

  /// Clear all data and reset states to initial
  ///
  /// This is a comprehensive reset that clears:
  /// - Form data and validation state
  /// - Submit operation state
  /// - Original form data
  ///
  /// Example:
  /// ```dart
  /// // Complete reset for new operation
  /// controller.clearAll();
  /// ```
  void clearAll() {
    clearForm();
    resetState();
    _originalFormData.clear();
    _currentEntity = null;
    _isOptimisticMode = false;
    _rollbackCallback = null;
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // LIFECYCLE HOOKS (Override if needed)
  // ═══════════════════════════════════════════════════════════════════════════

  /// Called when form submission starts
  ///
  /// Override this method in subclasses to perform additional actions
  /// when submission starts, such as logging, analytics, or UI preparations.
  ///
  /// Parameters:
  /// - [entity]: The entity being submitted
  ///
  /// Example override:
  /// ```dart
  /// @override
  /// void onSubmitStarted(CreateUserEntity entity) {
  ///   super.onSubmitStarted(entity);
  ///   // Log submit action
  ///   analyticsService.logFormSubmit('createUser', entity.name);
  ///   // Show loading toast
  ///   Get.showSnackbar(GetSnackBar(message: 'Creating user...'));
  /// }
  /// ```
  void onSubmitStarted(T entity) {
    // Override in subclasses if needed
  }

  /// Called when form submission succeeds
  ///
  /// Override this method in subclasses to perform additional actions
  /// on successful submission, such as navigation, cache clearing, or notifications.
  ///
  /// Parameters:
  /// - [response]: The response from the API
  ///
  /// Example override:
  /// ```dart
  /// @override
  /// void onSubmitSuccess(BaseResponseEntity<UserEntity> response) {
  ///   super.onSubmitSuccess(response);
  ///   // Show success message
  ///   Get.snackbar('Success', 'User created successfully');
  ///   // Navigate back with result
  ///   Get.back(result: response.data);
  ///   // Clear related caches
  ///   cacheService.clearUserCache();
  /// }
  /// ```
  void onSubmitSuccess(dynamic response) {
    // Override in subclasses if needed
  }

  /// Called when form submission fails
  ///
  /// Override this method in subclasses to handle errors, such as
  /// logging, showing custom error messages, or triggering fallback operations.
  ///
  /// Parameters:
  /// - [failure]: The failure object containing error information
  /// - [entity]: The entity that failed to submit
  ///
  /// Example override:
  /// ```dart
  /// @override
  /// void onSubmitError(Failure failure, CreateUserEntity entity) {
  ///   super.onSubmitError(failure, entity);
  ///   // Log error
  ///   errorLogger.logError('createUser', failure, entity);
  ///   // Show custom error message
  ///   Get.snackbar('Error', getCustomErrorMessage(failure));
  ///   // Trigger fallback action
  ///   saveDraftLocally(entity);
  /// }
  /// ```
  void onSubmitError(Failure failure, T entity) {
    // Override in subclasses if needed
  }

  /// Called when form submission is cancelled
  ///
  /// Override this method in subclasses to handle cancellation,
  /// such as cleanup, logging, or UI state restoration.
  ///
  /// Example override:
  /// ```dart
  /// @override
  /// void onSubmitCancelled() {
  ///   super.onSubmitCancelled();
  ///   // Log cancellation
  ///   analyticsService.logFormCancelled('createUser');
  ///   // Show cancellation message
  ///   Get.showSnackbar(GetSnackBar(message: 'Operation cancelled'));
  /// }
  /// ```
  void onSubmitCancelled() {
    // Override in subclasses if needed
  }
}
