import 'package:flutter/material.dart';

/// Enumeration representing different states of fetch operations.
///
/// This enum provides a centralized way to manage various states that can occur
/// during data fetching operations, both for simple fetch and list operations
/// with pagination, search, and filtering capabilities.
///
/// States:
/// - [initial]: The default state when no operation has been performed yet
/// - [idle]: State when ready for new fetch operation
/// - [loading]: State when data is being fetched
/// - [refreshing]: State when data is being refreshed (pull-to-refresh)
/// - [loadingMore]: State when more data is being loaded (pagination)
/// - [searching]: State when search operation is in progress
/// - [filtering]: State when filter operation is in progress
/// - [success]: State when the operation completed successfully
/// - [empty]: State when the operation completed but returned no data
/// - [failure]: State when the operation failed
/// - [cancelled]: State when the operation was cancelled
/// - [timeout]: State when the operation timed out
/// - [retry]: State when preparing to retry a failed operation
enum FetchStateEnum {
  /// Default state when no operation has been performed
  initial,

  /// Ready for new fetch operation
  idle,

  /// Data is being fetched
  loading,

  /// Data is being refreshed (pull-to-refresh)
  refreshing,

  /// More data is being loaded (pagination)
  loadingMore,

  /// Search operation is in progress
  searching,

  /// Filter operation is in progress
  filtering,

  /// Operation completed successfully
  success,

  /// Operation completed but returned no data
  empty,

  /// Operation failed
  failure,

  /// Operation was cancelled
  cancelled,

  /// Operation timed out
  timeout,

  /// Preparing to retry a failed operation
  retry,
}

/// Extension methods for FetchStateEnum to provide additional functionality
extension FetchStateEnumExtension on FetchStateEnum {
  /// Returns true if the state indicates an ongoing operation
  bool get isActive {
    return [
      FetchStateEnum.loading,
      FetchStateEnum.refreshing,
      FetchStateEnum.loadingMore,
      FetchStateEnum.searching,
      FetchStateEnum.filtering,
      FetchStateEnum.retry,
    ].contains(this);
  }

  /// Returns true if the state indicates a completed operation
  bool get isCompleted {
    return [
      FetchStateEnum.success,
      FetchStateEnum.empty,
      FetchStateEnum.failure,
      FetchStateEnum.cancelled,
      FetchStateEnum.timeout,
    ].contains(this);
  }

  /// Returns true if the state indicates an error condition
  bool get isError {
    return [
      FetchStateEnum.failure,
      FetchStateEnum.timeout,
    ].contains(this);
  }

  /// Returns true if the state indicates successful completion with data
  bool get isSuccess {
    return this == FetchStateEnum.success;
  }

  /// Returns true if the state indicates successful completion but no data
  bool get isEmpty {
    return this == FetchStateEnum.empty;
  }

  /// Returns true if the state indicates the operation can accept new requests
  bool get canInteract {
    return [
      FetchStateEnum.initial,
      FetchStateEnum.idle,
      FetchStateEnum.success,
      FetchStateEnum.empty,
      FetchStateEnum.failure,
      FetchStateEnum.cancelled,
      FetchStateEnum.timeout,
    ].contains(this);
  }

  /// Returns true if the state indicates initial loading
  bool get isLoading {
    return [
      FetchStateEnum.loading,
      FetchStateEnum.searching,
      FetchStateEnum.filtering,
    ].contains(this);
  }

  /// Returns true if the state indicates refreshing data
  bool get isRefreshing {
    return this == FetchStateEnum.refreshing;
  }

  /// Returns true if the state indicates loading more data (pagination)
  bool get isLoadingMore {
    return this == FetchStateEnum.loadingMore;
  }

  /// Returns true if any loading operation is in progress
  bool get isAnyLoading {
    return [
      FetchStateEnum.loading,
      FetchStateEnum.refreshing,
      FetchStateEnum.loadingMore,
      FetchStateEnum.searching,
      FetchStateEnum.filtering,
    ].contains(this);
  }

  /// Returns a human-readable description of the state
  String get description {
    switch (this) {
      case FetchStateEnum.initial:
        return 'Ready to fetch';
      case FetchStateEnum.idle:
        return 'Ready for new request';
      case FetchStateEnum.loading:
        return 'Loading...';
      case FetchStateEnum.refreshing:
        return 'Refreshing...';
      case FetchStateEnum.loadingMore:
        return 'Loading more...';
      case FetchStateEnum.searching:
        return 'Searching...';
      case FetchStateEnum.filtering:
        return 'Filtering...';
      case FetchStateEnum.success:
        return 'Success';
      case FetchStateEnum.empty:
        return 'No data found';
      case FetchStateEnum.failure:
        return 'Failed to fetch';
      case FetchStateEnum.cancelled:
        return 'Cancelled';
      case FetchStateEnum.timeout:
        return 'Request timed out';
      case FetchStateEnum.retry:
        return 'Retrying...';
    }
  }
}

/// UI extension methods for FetchStateEnum to standardize state presentations
extension FetchStateEnumUIExtension on FetchStateEnum {
  /// Returns the appropriate icon for the state
  IconData get defaultIcon {
    switch (this) {
      case FetchStateEnum.loading:
      case FetchStateEnum.refreshing:
      case FetchStateEnum.loadingMore:
      case FetchStateEnum.searching:
      case FetchStateEnum.filtering:
      case FetchStateEnum.retry:
        return Icons.refresh;
      case FetchStateEnum.failure:
      case FetchStateEnum.cancelled:
      case FetchStateEnum.timeout:
        return Icons.error_outline;
      case FetchStateEnum.empty:
        return Icons.inbox_outlined;
      case FetchStateEnum.success:
        return Icons.check_circle_outline;
      default:
        return Icons.help_outline;
    }
  }

  /// Returns the icon size based on state importance
  double get defaultIconSize {
    switch (this) {
      case FetchStateEnum.loading:
      case FetchStateEnum.refreshing:
      case FetchStateEnum.loadingMore:
      case FetchStateEnum.searching:
      case FetchStateEnum.filtering:
        return 32;
      case FetchStateEnum.failure:
      case FetchStateEnum.timeout:
      case FetchStateEnum.empty:
        return 48;
      default:
        return 40;
    }
  }

  /// Returns default loading message key for i18n
  String getDefaultMessageKey(String feature) {
    switch (this) {
      case FetchStateEnum.loading:
        return '$feature.loading';
      case FetchStateEnum.refreshing:
        return '$feature.refreshing';
      case FetchStateEnum.searching:
        return '$feature.searching';
      case FetchStateEnum.filtering:
        return '$feature.filtering';
      case FetchStateEnum.empty:
        return '$feature.empty';
      case FetchStateEnum.failure:
        return '$feature.error';
      case FetchStateEnum.timeout:
        return '$feature.timeout';
      default:
        return '$feature.loading';
    }
  }

  /// Returns whether this state should show loading indicator
  bool get shouldShowLoadingIndicator {
    return [
      FetchStateEnum.loading,
      FetchStateEnum.refreshing,
      FetchStateEnum.searching,
      FetchStateEnum.filtering,
    ].contains(this);
  }
}
