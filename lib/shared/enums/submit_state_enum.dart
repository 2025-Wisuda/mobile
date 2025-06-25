/// Enumeration representing different states of form submission or data operations.
///
/// This enum provides a centralized way to manage various states that can occur
/// during form submissions, API calls, or other asynchronous operations.
///
/// States:
/// - [initial]: The default state when no operation has been performed yet
/// - [idle]: State when the form is ready for interaction
/// - [loading]: State when data is being fetched or loaded
/// - [submitting]: State when form data is being submitted
/// - [processing]: State when data is being processed
/// - [validating]: State when form validation is in progress
/// - [success]: State when the operation completed successfully
/// - [failure]: State when the operation failed
/// - [cancelled]: State when the operation was cancelled by user
/// - [timeout]: State when the operation timed out
/// - [retry]: State when preparing to retry a failed operation
enum SubmitStateEnum {
  /// Default state when no operation has been performed
  initial,

  /// Form is ready for user interaction
  idle,

  /// Data is being fetched or loaded
  loading,

  /// Form data is being submitted
  submitting,

  /// Data is being processed after submission
  processing,

  /// Form validation is in progress
  validating,

  /// Operation completed successfully
  success,

  /// Operation failed
  failure,

  /// Operation was cancelled by user
  cancelled,

  /// Operation timed out
  timeout,

  /// Preparing to retry a failed operation
  retry,
}

/// Extension methods for SubmitStateEnum to provide additional functionality
extension SubmitStateEnumExtension on SubmitStateEnum {
  /// Returns true if the state indicates an ongoing operation
  bool get isActive {
    return [
      SubmitStateEnum.loading,
      SubmitStateEnum.submitting,
      SubmitStateEnum.processing,
      SubmitStateEnum.validating,
      SubmitStateEnum.retry,
    ].contains(this);
  }

  /// Returns true if the state indicates a completed operation (success or failure)
  bool get isCompleted {
    return [
      SubmitStateEnum.success,
      SubmitStateEnum.failure,
      SubmitStateEnum.cancelled,
      SubmitStateEnum.timeout,
    ].contains(this);
  }

  /// Returns true if the state indicates an error condition
  bool get isError {
    return [
      SubmitStateEnum.failure,
      SubmitStateEnum.timeout,
    ].contains(this);
  }

  /// Returns true if the state indicates the form can accept user input
  bool get canInteract {
    return [
      SubmitStateEnum.initial,
      SubmitStateEnum.idle,
      SubmitStateEnum.success,
      SubmitStateEnum.failure,
      SubmitStateEnum.cancelled,
      SubmitStateEnum.timeout,
    ].contains(this);
  }

  /// Returns true if the state indicates loading or submitting
  bool get isLoadingOrSubmitting {
    return [
      SubmitStateEnum.loading,
      SubmitStateEnum.submitting,
    ].contains(this);
  }

  /// Returns a human-readable description of the state
  String get description {
    switch (this) {
      case SubmitStateEnum.initial:
        return 'Ready to start';
      case SubmitStateEnum.idle:
        return 'Ready for input';
      case SubmitStateEnum.loading:
        return 'Loading...';
      case SubmitStateEnum.submitting:
        return 'Submitting...';
      case SubmitStateEnum.processing:
        return 'Processing...';
      case SubmitStateEnum.validating:
        return 'Validating...';
      case SubmitStateEnum.success:
        return 'Success';
      case SubmitStateEnum.failure:
        return 'Failed';
      case SubmitStateEnum.cancelled:
        return 'Cancelled';
      case SubmitStateEnum.timeout:
        return 'Timed out';
      case SubmitStateEnum.retry:
        return 'Retrying...';
    }
  }
}
