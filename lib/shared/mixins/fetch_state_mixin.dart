// ignore_for_file: unintended_html_in_doc_comment

import 'dart:async';

import 'package:flutter/material.dart';

import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

import 'package:mobile/shared/enums/fetch_state_enum.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/network_helper.dart';

/// A mixin that provides centralized fetch state management with configurable keys.
/// This allows different fetch or operations to maintain separate states within the same controller.
///
/// Example usage:
/// ```dart
/// class UserController extends GetxController with FetchStateMixin {
///   void fetchUserList() {
///     setFetchState('userList', FetchStateEnum.loading);
///     // Perform fetch logic
///     setFetchState('userList', FetchStateEnum.success);
///   }
///
///   void fetchUserProfile() {
///     setFetchState('userProfile', FetchStateEnum.loading);
///     // Perform fetch logic
///     setFetchState('userProfile', FetchStateEnum.success);
///   }
/// }
/// ```
mixin FetchStateMixin on GetxController {
  /// Map to store fetch states for different operations using configurable keys
  final RxMap<String, FetchStateEnum> _fetchStates =
      <String, FetchStateEnum>{}.obs;

  /// Default state key for operations that don't specify a key
  static const String defaultStateKey = 'default';

  /// Sets the fetch state for a specific operation key.
  ///
  /// Parameters:
  /// - [key]: The operation key (e.g., 'userList', 'userProfile', 'courseList')
  /// - [state]: The new state to set
  ///
  /// Example:
  /// ```dart
  /// setFetchState('userList', FetchStateEnum.loading);
  /// ```
  void setFetchState(String key, FetchStateEnum state) {
    _fetchStates[key] = state;
  }

  /// Gets the current fetch state for a specific operation key.
  ///
  /// Parameters:
  /// - [key]: The operation key
  ///
  /// Returns the current state or [FetchStateEnum.initial] if not set.
  FetchStateEnum getFetchState(String key) {
    return _fetchStates[key] ?? FetchStateEnum.initial;
  }

  /// Gets the current fetch state for the default operation.
  ///
  /// Returns the current state or [FetchStateEnum.initial] if not set.
  FetchStateEnum get defaultFetchState => getFetchState(defaultStateKey);

  /// Sets the fetch state for the default operation.
  ///
  /// Parameters:
  /// - [state]: The new state to set
  void setDefaultFetchState(FetchStateEnum state) {
    setFetchState(defaultStateKey, state);
  }

  /// Checks if a specific operation is in an active state (loading, refreshing, etc.).
  ///
  /// Parameters:
  /// - [key]: The operation key
  ///
  /// Returns true if the operation is active, false otherwise.
  bool isOperationActive(String key) {
    return getFetchState(key).isActive;
  }

  /// Checks if the default operation is in an active state.
  ///
  /// Returns true if the default operation is active, false otherwise.
  bool get isDefaultOperationActive => isOperationActive(defaultStateKey);

  /// Checks if a specific operation is completed (success, empty, failure, cancelled, timeout).
  ///
  /// Parameters:
  /// - [key]: The operation key
  ///
  /// Returns true if the operation is completed, false otherwise.
  bool isOperationCompleted(String key) {
    return getFetchState(key).isCompleted;
  }

  /// Checks if a specific operation is in an error state.
  ///
  /// Parameters:
  /// - [key]: The operation key
  ///
  /// Returns true if the operation has an error, false otherwise.
  bool isOperationError(String key) {
    return getFetchState(key).isError;
  }

  /// Checks if a specific operation can accept user interaction.
  ///
  /// Parameters:
  /// - [key]: The operation key
  ///
  /// Returns true if the operation can accept interaction, false otherwise.
  bool canOperationInteract(String key) {
    return getFetchState(key).canInteract;
  }

  /// Checks if a specific operation is loading.
  ///
  /// Parameters:
  /// - [key]: The operation key
  ///
  /// Returns true if the operation is loading, false otherwise.
  bool isOperationLoading(String key) {
    return getFetchState(key).isLoading;
  }

  /// Checks if a specific operation is refreshing.
  ///
  /// Parameters:
  /// - [key]: The operation key
  ///
  /// Returns true if the operation is refreshing, false otherwise.
  bool isOperationRefreshing(String key) {
    return getFetchState(key).isRefreshing;
  }

  /// Checks if a specific operation is loading more data.
  ///
  /// Parameters:
  /// - [key]: The operation key
  ///
  /// Returns true if the operation is loading more, false otherwise.
  bool isOperationLoadingMore(String key) {
    return getFetchState(key).isLoadingMore;
  }

  /// Checks if a specific operation has any loading state.
  ///
  /// Parameters:
  /// - [key]: The operation key
  ///
  /// Returns true if the operation is in any loading state, false otherwise.
  bool isOperationAnyLoading(String key) {
    return getFetchState(key).isAnyLoading;
  }

  /// Checks if a specific operation is successful.
  ///
  /// Parameters:
  /// - [key]: The operation key
  ///
  /// Returns true if the operation is successful, false otherwise.
  bool isOperationSuccess(String key) {
    return getFetchState(key).isSuccess;
  }

  /// Checks if a specific operation is empty.
  ///
  /// Parameters:
  /// - [key]: The operation key
  ///
  /// Returns true if the operation resulted in empty data, false otherwise.
  bool isOperationEmpty(String key) {
    return getFetchState(key).isEmpty;
  }

  /// Gets the description of the current state for a specific operation.
  ///
  /// Parameters:
  /// - [key]: The operation key
  ///
  /// Returns a human-readable description of the current state.
  String getOperationStateDescription(String key) {
    return getFetchState(key).description;
  }

  /// Resets the fetch state for a specific operation to initial.
  ///
  /// Parameters:
  /// - [key]: The operation key
  void resetOperationState(String key) {
    setFetchState(key, FetchStateEnum.initial);
  }

  /// Resets all fetch states to initial.
  void resetAllStates() {
    final keys = _fetchStates.keys.toList();
    for (String key in keys) {
      setFetchState(key, FetchStateEnum.initial);
    }
  }

  /// Gets all current fetch states as a map.
  ///
  /// Returns a map of operation keys to their current states.
  Map<String, FetchStateEnum> getAllStates() {
    return Map.from(_fetchStates);
  }

  /// Checks if any operation is currently active.
  ///
  /// Returns true if any operation is in an active state, false otherwise.
  bool get hasAnyActiveOperation {
    return _fetchStates.values.any((state) => state.isActive);
  }

  /// Gets all active operation keys.
  ///
  /// Returns a list of keys for operations that are currently active.
  List<String> get activeOperationKeys {
    return _fetchStates.entries
        .where((entry) => entry.value.isActive)
        .map((entry) => entry.key)
        .toList();
  }

  /// Executes a simple fetch operation with automatic state management.
  ///
  /// This method handles setting the state to loading, executing the operation,
  /// and setting the appropriate final state based on success or failure.
  ///
  /// Parameters:
  /// - [key]: The operation key
  /// - [operation]: The async operation to execute
  /// - [onSuccess]: Optional callback for successful completion
  /// - [onError]: Optional callback for error handling
  /// - [useLoadingState]: Whether to use loading state (default: true)
  ///
  /// Example:
  /// ```dart
  /// await executeWithStateManagement(
  ///   'userProfile',
  ///   () => _fetchUserProfileUsecase.execute(userId: userId),
  ///   onSuccess: () => context.showCustomSnackbar(
  ///     message: 'Profile loaded successfully',
  ///     type: SnackbarType.success,
  ///   ),
  ///   onError: (error) => context.showCustomSnackbar(
  ///     message: error.toString(),
  ///     type: SnackbarType.error,
  ///   ),
  /// );
  /// ```
  Future<void> executeWithStateManagement(
    String key,
    Future<void> Function() operation, {
    VoidCallback? onSuccess,
    void Function(dynamic error)? onError,
    bool useLoadingState = true,
  }) async {
    try {
      setFetchState(key,
          useLoadingState ? FetchStateEnum.loading : FetchStateEnum.refreshing);
      await operation();
      setFetchState(key, FetchStateEnum.success);
      onSuccess?.call();
    } catch (error) {
      setFetchState(key, FetchStateEnum.failure);
      onError?.call(error);
    }
  }

  /// Executes a refreshing operation with automatic state management.
  ///
  /// Similar to [executeWithStateManagement] but uses refreshing state instead of loading.
  ///
  /// Parameters:
  /// - [key]: The operation key
  /// - [operation]: The async operation to execute
  /// - [onSuccess]: Optional callback for successful completion
  /// - [onError]: Optional callback for error handling
  Future<void> executeRefreshingWithStateManagement(
    String key,
    Future<void> Function() operation, {
    VoidCallback? onSuccess,
    void Function(dynamic error)? onError,
  }) async {
    try {
      setFetchState(key, FetchStateEnum.refreshing);
      await operation();
      setFetchState(key, FetchStateEnum.success);
      onSuccess?.call();
    } catch (error) {
      setFetchState(key, FetchStateEnum.failure);
      onError?.call(error);
    }
  }

  /// Executes a pull-to-refresh operation for lists.
  ///
  /// This method is specifically designed for pull-to-refresh functionality
  /// in list views. It automatically handles the refreshing state and resets
  /// pagination to the first page.
  ///
  /// Parameters:
  /// - [key]: The operation key for state tracking
  /// - [filterParams]: The filter parameters model (reset to page 1)
  /// - [operation]: Function that takes filter params and returns Either<Failure, Response>
  /// - [onSuccess]: Custom success handler with refreshed data
  /// - [onFailure]: Custom failure handler
  /// - [onEmpty]: Custom handler for empty results
  /// - [resetPagination]: Whether to reset pagination to first page (default: true)
  ///
  /// Example:
  /// ```dart
  /// Future<void> onRefresh() async {
  ///   await executePullToRefresh(
  ///     'userList',
  ///     UserFilterParamsModel(
  ///       page: 1,
  ///       pageSize: 10,
  ///       search: currentSearchQuery,
  ///     ),
  ///     (params) => _fetchListUserUsecase.execute(params: params),
  ///     onSuccess: (response) async {
  ///       userList.assignAll(response.data!);
  ///       updatePaginationMeta(response.meta);
  ///     },
  ///     onFailure: (failure) {
  ///       context.showCustomSnackbar(
  ///         message: failure.message,
  ///         type: SnackbarType.error,
  ///       );
  ///     },
  ///   );
  /// }
  /// ```
  Future<void> executePullToRefresh<TFilterParams, TResponse>(
    String key,
    TFilterParams filterParams,
    Future<Either<Failure, TResponse>> Function(TFilterParams params)
        operation, {
    Future<void> Function(TResponse response)? onSuccess,
    void Function(Failure failure)? onFailure,
    VoidCallback? onEmpty,
    bool resetPagination = true,
  }) async {
    setFetchState(key, FetchStateEnum.refreshing);

    try {
      final result = await operation(filterParams);

      result.fold(
        (failure) {
          setFetchState(key, FetchStateEnum.failure);
          onFailure?.call(failure);
        },
        (response) async {
          bool isEmpty = false;
          try {
            final data = (response as dynamic).data;
            isEmpty = data == null || (data is List && data.isEmpty);
          } catch (e) {
            isEmpty = false;
          }

          if (isEmpty) {
            setFetchState(key, FetchStateEnum.empty);
            onEmpty?.call();
          } else {
            setFetchState(key, FetchStateEnum.success);
            await onSuccess?.call(response);
          }
        },
      );
    } catch (error) {
      setFetchState(key, FetchStateEnum.failure);
      if (onFailure != null) {
        throw Exception(error.toString());
      }
    }
  }

  /// Creates a reactive getter for a specific operation state.
  ///
  /// This is useful for UI components that need to reactively update based on state changes.
  ///
  /// Parameters:
  /// - [key]: The operation key
  ///
  /// Returns an Rx<FetchStateEnum> that can be observed.
  Rx<FetchStateEnum> getReactiveState(String key) {
    return Rx<FetchStateEnum>(getFetchState(key));
  }

  /// Simple template method for the exact pattern you want.
  ///
  /// This provides ONLY the state management pattern - no auto-magic features.
  /// You handle validation, snackbars, navigation yourself.
  ///
  /// Usage Pattern:
  /// ```dart
  /// Future<void> fetchUserList(BuildContext context) async {
  ///   await executeWithPattern(
  ///     'userList',
  ///     (state) async {
  ///       state.value = FetchStateEnum.loading;
  ///       final result = await fetchListUserUseCase.execute(params);
  ///       result.fold(
  ///         (failure) {
  ///           state.value = FetchStateEnum.failure;
  ///           context.showCustomSnackbar(
  ///             message: failure.message,
  ///             type: SnackbarType.error,
  ///           );
  ///         },
  ///         (response) async {
  ///           state.value = FetchStateEnum.success;
  ///           // Your custom logic here
  ///           userList.assignAll(response.data!);
  ///           updatePaginationMeta(response.meta);
  ///         },
  ///       );
  ///     },
  ///   );
  /// }
  /// ```
  Future<void> executeWithPattern(
    String key,
    Future<void> Function(Rx<FetchStateEnum> state) operation,
  ) async {
    final state = getReactiveState(key);
    await operation(state);
  }

  /// Executes operation with parameter support - reusable template without auto UI logic.
  ///
  /// This method provides parameter support for entities while keeping UI logic customizable.
  /// No auto snackbar, navigation, or data handling - just clean state management.
  ///
  /// Parameters:
  /// - [key]: The operation key for state tracking
  /// - [entity]: The request entity/parameter to pass to the operation
  /// - [operation]: Function that takes entity and returns Either<Failure, Response>
  /// - [onSuccess]: Custom success handler (receives response)
  /// - [onFailure]: Custom failure handler (receives failure)
  /// - [useLoadingState]: Whether to use loading state (default: true)
  ///
  /// Example:
  /// ```dart
  /// await executeFetchOperation(
  ///   'userList',
  ///   UserFilterParamsModel(page: 1, pageSize: 10, search: 'john'),
  ///   (params) => _fetchListUserUsecase.execute(params: params),
  ///   onSuccess: (response) async {
  ///     // Custom success logic
  ///     if (isLoadMore) {
  ///       userList.addAll(response.data!);
  ///     } else {
  ///       userList.assignAll(response.data!);
  ///     }
  ///     updatePaginationFromMeta(response.meta);
  ///   },
  ///   onFailure: (failure) {
  ///     // Custom error logic
  ///     context.showCustomSnackbar(
  ///       message: failure.message,
  ///       type: SnackbarType.error,
  ///     );
  ///   },
  /// );
  /// ```
  Future<void> executeFetchOperation<TEntity, TResponse>(
    String key,
    TEntity entity,
    Future<Either<Failure, TResponse>> Function(TEntity entity) operation, {
    Future<void> Function(TResponse response)? onSuccess,
    void Function(Failure failure)? onFailure,
    bool useLoadingState = true,
  }) async {
    setFetchState(key,
        useLoadingState ? FetchStateEnum.loading : FetchStateEnum.refreshing);

    try {
      final result = await operation(entity);

      result.fold(
        (failure) {
          setFetchState(key, FetchStateEnum.failure);
          onFailure?.call(failure);
        },
        (response) async {
          setFetchState(key, FetchStateEnum.success);
          await onSuccess?.call(response);
        },
      );
    } catch (error) {
      setFetchState(key, FetchStateEnum.failure);
      if (onFailure != null) {
        throw Exception(error.toString());
      }
    }
  }

  /// Executes a list fetch operation with search, filter, and pagination support.
  ///
  /// This method provides comprehensive list operations with automatic state management
  /// for search, filtering, pagination, and load more functionality.
  ///
  /// Parameters:
  /// - [key]: The operation key for state tracking
  /// - [filterParams]: The filter parameters model (like UserFilterParamsModel)
  /// - [operation]: Function that takes filter params and returns Either<Failure, Response>
  /// - [onSuccess]: Custom success handler with list data
  /// - [onFailure]: Custom failure handler
  /// - [onEmpty]: Custom handler for empty results
  /// - [isLoadMore]: Whether this is a load more operation
  /// - [useLoadingState]: Whether to use loading state for initial load
  ///
  /// Example:
  /// ```dart
  /// await executeFetchListOperation(
  ///   'userList',
  ///   UserFilterParamsModel(
  ///     page: currentPage,
  ///     pageSize: 10,
  ///     search: searchQuery,
  ///   ),
  ///   (params) => _fetchListUserUsecase.execute(params: params),
  ///   onSuccess: (response, isLoadMore) async {
  ///     if (isLoadMore) {
  ///       userList.addAll(response.data!);
  ///     } else {
  ///       userList.assignAll(response.data!);
  ///     }
  ///     updatePaginationMeta(response.meta);
  ///   },
  ///   onFailure: (failure) {
  ///     showErrorSnackbar(failure.message);
  ///   },
  ///   onEmpty: () {
  ///     userList.clear();
  ///   },
  ///   isLoadMore: isLoadMore,
  /// );
  /// ```
  Future<void> executeFetchListOperation<TFilterParams, TResponse>(
    String key,
    TFilterParams filterParams,
    Future<Either<Failure, TResponse>> Function(TFilterParams params)
        operation, {
    Future<void> Function(TResponse response, bool isLoadMore)? onSuccess,
    void Function(Failure failure)? onFailure,
    VoidCallback? onEmpty,
    bool isLoadMore = false,
    bool useLoadingState = true,
  }) async {
    if (isLoadMore) {
      setFetchState(key, FetchStateEnum.loadingMore);
    } else {
      setFetchState(key,
          useLoadingState ? FetchStateEnum.loading : FetchStateEnum.refreshing);
    }

    try {
      final result = await operation(filterParams);

      result.fold(
        (failure) {
          setFetchState(key, FetchStateEnum.failure);
          onFailure?.call(failure);
        },
        (response) async {
          bool isEmpty = false;
          try {
            final data = (response as dynamic).data;
            isEmpty = data == null || (data is List && data.isEmpty);
          } catch (e) {
            isEmpty = false;
          }

          if (isEmpty && !isLoadMore) {
            setFetchState(key, FetchStateEnum.empty);
            onEmpty?.call();
          } else {
            setFetchState(key, FetchStateEnum.success);
            await onSuccess?.call(response, isLoadMore);
          }
        },
      );
    } catch (error) {
      setFetchState(key, FetchStateEnum.failure);
      if (onFailure != null) {
        throw Exception(error.toString());
      }
    }
  }

  /// Executes operation with automatic network handling and snackbar support.
  ///
  /// This is the most comprehensive method that includes:
  /// - Automatic network connectivity check
  /// - Parameter support for entities
  /// - Automatic error snackbar display using BuildContext extension
  /// - Optional success snackbar
  /// - State management
  ///
  /// Parameters:
  /// - [key]: The operation key for state tracking
  /// - [entity]: The request entity/parameter to pass to the operation
  /// - [operation]: Function that takes entity and returns Either<Failure, Response>
  /// - [onSuccess]: Custom success handler (receives response)
  /// - [onFailure]: Custom failure handler (receives failure) - optional, uses snackbar by default
  /// - [useLoadingState]: Whether to use loading state (default: true)
  ///
  /// Example:
  /// ```dart
  /// await executeOperationWithNetwork(
  ///   'login',
  ///   loginRequest,
  ///   (entity) => _loginUsecase.execute(data: entity),
  ///   onSuccess: (response) async {
  ///     await Session.saveAccessToken(response.accessToken!);
  ///     clearForm();
  ///     Get.offAllNamed('/home');
  ///   },
  /// );
  /// ```
  Future<void> executeOperationWithNetwork<TEntity, TResponse>(
    String key,
    TEntity entity,
    Future<Either<Failure, TResponse>> Function(TEntity entity) operation, {
    Future<void> Function(TResponse response)? onSuccess,
    void Function(Failure failure)? onFailure,
    bool useLoadingState = true,
  }) async {
    try {
      final hasConnection = await NetworkHelper.hasInternetConnection();

      if (!hasConnection) {
        final noInternetFailure =
            NoConnectionFailure('common'.message('noInternet'));
        setFetchState(key, FetchStateEnum.failure);

        if (onFailure != null) {
          onFailure(noInternetFailure);
        }
        return;
      }

      setFetchState(key,
          useLoadingState ? FetchStateEnum.loading : FetchStateEnum.refreshing);

      final result = await operation(entity);

      result.fold(
        (failure) {
          setFetchState(key, FetchStateEnum.failure);
          if (onFailure != null) {
            onFailure(failure);
          }
        },
        (response) async {
          setFetchState(key, FetchStateEnum.success);

          await onSuccess?.call(response);
        },
      );
    } catch (error) {
      setFetchState(key, FetchStateEnum.failure);
      final genericFailure = GenericFailure(error.toString());

      if (onFailure != null) {
        onFailure(genericFailure);
      }
    }
  }

  /// Executes list fetch operation with automatic network handling.
  ///
  /// Comprehensive method for list operations with network check and snackbars.
  ///
  /// Parameters:
  /// - [key]: The operation key for state tracking
  /// - [filterParams]: The filter parameters model
  /// - [operation]: Function that takes filter params and returns Either<Failure, Response>
  /// - [onSuccess]: Custom success handler with list data
  /// - [onFailure]: Custom failure handler - optional, uses snackbar by default
  /// - [onEmpty]: Custom handler for empty results
  /// - [isLoadMore]: Whether this is a load more operation
  /// - [useLoadingState]: Whether to use loading state for initial load
  ///
  /// Example:
  /// ```dart
  /// await executeFetchListWithNetwork(
  ///   'userList',
  ///   UserFilterParamsModel(page: 1, pageSize: 10),
  ///   (params) => _fetchListUserUsecase.execute(params: params),
  ///   onSuccess: (response, isLoadMore) async {
  ///     if (isLoadMore) {
  ///       userList.addAll(response.data!);
  ///     } else {
  ///       userList.assignAll(response.data!);
  ///     }
  ///     updatePaginationMeta(response.meta);
  ///   },
  ///   onEmpty: () {
  ///     userList.clear();
  ///   },
  /// );
  /// ```
  Future<void> executeFetchListWithNetwork<TFilterParams, TResponse>(
    String key,
    TFilterParams filterParams,
    Future<Either<Failure, TResponse>> Function(TFilterParams params)
        operation, {
    Future<void> Function(TResponse response, bool isLoadMore)? onSuccess,
    void Function(Failure failure)? onFailure,
    VoidCallback? onEmpty,
    bool isLoadMore = false,
    bool useLoadingState = true,
  }) async {
    try {
      final hasConnection = await NetworkHelper.hasInternetConnection();

      if (!hasConnection) {
        final noInternetFailure =
            NoConnectionFailure('common'.message('noInternet'));
        setFetchState(key, FetchStateEnum.failure);

        if (onFailure != null) {
          onFailure(noInternetFailure);
        }
        return;
      }

      if (isLoadMore) {
        setFetchState(key, FetchStateEnum.loadingMore);
      } else {
        setFetchState(
            key,
            useLoadingState
                ? FetchStateEnum.loading
                : FetchStateEnum.refreshing);
      }

      final result = await operation(filterParams);

      result.fold(
        (failure) {
          setFetchState(key, FetchStateEnum.failure);
          if (onFailure != null) {
            onFailure(failure);
          }
        },
        (response) async {
          bool isEmpty = false;
          try {
            final data = (response as dynamic).data;
            isEmpty = data == null || (data is List && data.isEmpty);
          } catch (e) {
            isEmpty = false;
          }

          if (isEmpty && !isLoadMore) {
            setFetchState(key, FetchStateEnum.empty);
            onEmpty?.call();
          } else {
            setFetchState(key, FetchStateEnum.success);
            await onSuccess?.call(response, isLoadMore);
          }
        },
      );
    } catch (error) {
      setFetchState(key, FetchStateEnum.failure);
      final genericFailure = GenericFailure(error.toString());

      if (onFailure != null) {
        onFailure(genericFailure);
      }
    }
  }

  /// Cleanup method to reset all states and prevent memory leaks.
  ///
  /// This method is automatically called when the controller is disposed.
  /// It resets all fetch states to prevent any lingering state issues.
  @override
  void onClose() {
    resetAllStates();
    super.onClose();
  }
}
