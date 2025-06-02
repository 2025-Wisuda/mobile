import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';

import 'package:mobile/shared/controllers/base_state_controller.dart';
import 'package:mobile/shared/controllers/mixins/debounce_mixin.dart';
import 'package:mobile/shared/controllers/mixins/form_management_mixin.dart';
import 'package:mobile/shared/controllers/mixins/validation_mixin.dart';

/// Specialized base controller for form operations (create/update).
///
/// This controller follows the Single Responsibility Principle by focusing
/// exclusively on form handling and submission. It's designed for scenarios
/// where you need to manage form state, validation, and submission without
/// the complexity of full CRUD operations.
///
/// **Type Parameters:**
/// - [TRequest]: The request model type for form submission
///
/// **Key Features:**
/// - Automatic form field registration and management
/// - Built-in validation with internationalization support
/// - Debounced form submission to prevent double submissions
/// - Reactive form validation state
/// - Automatic text controller and focus node management
/// - Memory leak prevention with automatic disposal
///
/// **Included Mixins:**
/// - [FormManagementMixin]: Automatic form field registration and management
/// - [ValidationMixin]: Comprehensive validation rules and error handling
/// - [DebounceMixin]: Debounce functionality for form submission
///
/// **Usage:**
/// ```dart
/// class CreateCourseController extends FormBaseController<CreateCourseRequest> {
///   @override
///   void onInit() {
///     super.onInit();
///     registerTextField('title');
///     registerTextField('description');
///     registerTextField('price');
///   }
///
///   @override
///   CreateCourseRequest buildRequest() {
///     return CreateCourseRequest(
///       title: getController('title').text,
///       description: getController('description').text,
///       price: double.parse(getController('price').text),
///     );
///   }
///
///   @override
///   Future<void> performSubmit({required CreateCourseRequest request}) async {
///     await courseService.createCourse(request);
///   }
/// }
///
/// // In your widget
/// final controller = Get.find<CreateCourseController>();
///
/// TextFormField(
///   controller: controller.getController('title'),
///   focusNode: controller.getFocusNode('title'),
///   onChanged: (_) => controller.validateForm(),
/// )
///
/// ElevatedButton(
///   onPressed: controller.isFormValid ? controller.executeSubmit : null,
///   child: Text('Submit'),
/// )
/// ```
///
/// **When to Use:**
/// - Create/edit forms
/// - Login/registration forms
/// - Settings forms
/// - Any scenario where you need form handling without read operations
///
/// **When NOT to Use:**
/// - If you need full CRUD operations (use [CrudBaseController])
/// - If you need list operations (use [ListBaseController])
/// - If you only need data fetching (use [DetailBaseController])
abstract class FormBaseController<TRequest> extends BaseStateController
    with FormManagementMixin, ValidationMixin, DebounceMixin {
  /// Internal reactive form validation state
  final _isFormValid = RxBool(false);

  /// Returns true if the form passes all validation rules
  ///
  /// Use this to enable/disable submit buttons and show validation feedback.
  /// This is reactive and will trigger UI updates when validation state changes.
  bool get isFormValid => _isFormValid.value;

  /// Abstract method for building request object from form data
  ///
  /// Implement this method to convert form field values into a request object.
  /// This method is called automatically before form submission.
  ///
  /// **Implementation Guidelines:**
  /// - Extract values from registered text controllers
  /// - Apply any necessary data transformations
  /// - Return a properly typed request object
  ///
  /// **Example:**
  /// ```dart
  /// @override
  /// CreateUserRequest buildRequest() {
  ///   return CreateUserRequest(
  ///     name: getController('name').text.trim(),
  ///     email: getController('email').text.toLowerCase().trim(),
  ///     age: int.tryParse(getController('age').text) ?? 0,
  ///   );
  /// }
  /// ```
  TRequest buildRequest();

  /// Abstract method for submitting the form
  ///
  /// Implement this method to define how your form data is submitted.
  /// The request object will be automatically built from form data.
  ///
  /// **Implementation Guidelines:**
  /// - Call your service/repository method
  /// - Handle any business logic specific to this form
  /// - Let exceptions bubble up for automatic error handling
  ///
  /// **Example:**
  /// ```dart
  /// @override
  /// Future<void> performSubmit({required CreateUserRequest request}) async {
  ///   await userService.createUser(request);
  ///   Get.back(); // Navigate back on success
  /// }
  /// ```
  ///
  /// [request] The request object built from form data
  Future<void> performSubmit(BuildContext context, {required TRequest request});

  /// Template method for form submission with debounce and validation
  ///
  /// This method handles all the boilerplate for form submission including:
  /// - Form validation check before submission
  /// - Debouncing to prevent accidental double submissions
  /// - State management (loading, success, error)
  /// - Automatic request building from form data
  /// - Error handling with user feedback
  ///
  /// **Usage:**
  /// ```dart
  /// // Basic submission
  /// executeSubmit();
  ///
  /// // With custom debounce duration
  /// executeSubmit(debounceDuration: Duration(seconds: 1));
  /// ```
  ///
  /// [debounceDuration] Custom debounce duration, uses default if not provided
  void executeSubmit(BuildContext context, {Duration? debounceDuration}) {
    if (!_isFormValid.value) return;

    executeAsyncWithDebounce('submit', () async {
      setSubmitLoading();
      try {
        final request = buildRequest();
        await performSubmit(context, request: request);
        setSubmitSuccess();
      } catch (e) {
        setSubmitError(e.toString());
      }
    }, duration: debounceDuration);
  }

  /// Validates the form and updates the validation state
  ///
  /// Call this method whenever form field values change to update
  /// the form validation state. This will trigger reactive updates
  /// in any widgets observing [isFormValid].
  ///
  /// **Usage:**
  /// ```dart
  /// TextFormField(
  ///   controller: getController('email'),
  ///   onChanged: (_) => validateForm(), // Validate on every change
  /// )
  ///
  /// // Or validate manually
  /// controller.validateForm();
  /// ```
  void validateForm() {
    _isFormValid.value = _shouldFormBeValid();
  }

  /// Override this method for custom validation logic
  ///
  /// By default, the form is considered valid if:
  /// - All fields are filled (not empty)
  /// - No validation errors exist
  ///
  /// Override this method to implement custom validation rules:
  ///
  /// ```dart
  /// @override
  /// bool _shouldFormBeValid() {
  ///   return super._shouldFormBeValid() &&
  ///          getController('password').text.length >= 8;
  /// }
  /// ```
  bool _shouldFormBeValid() {
    return !hasAnyError && allFieldsFilled;
  }

  /// Sets up form fields - must be called in onInit
  ///
  /// Override this method to register your form fields.
  /// This is automatically called during controller initialization.
  ///
  /// **Example:**
  /// ```dart
  /// @override
  /// void setupFormFields() {
  ///   registerTextField('name');
  ///   registerTextField('email');
  ///   registerTextField('password');
  /// }
  /// ```
  void setupFormFields();

  /// Resets the form to its initial state
  ///
  /// This method performs a complete form reset including:
  /// - Clearing all field values
  /// - Resetting validation state to false
  /// - Resetting submit state to initial
  ///
  /// Use this when you need to completely reset the form,
  /// such as after successful submission or when canceling edits.
  void resetForm() {
    clearAllFields();
    _isFormValid.value = false;
    setSubmitInitial();
  }

  @override
  void onInit() {
    setupFormFields();
    super.onInit();
  }
}
