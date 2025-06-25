// ignore_for_file: unintended_html_in_doc_comment

import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/enums/fetch_state_enum.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/mixins/mixin.dart';

/// A base abstract controller that provides standardized detail operations with fetch and refresh functionality.
/// This controller eliminates code duplication for common detail operations across different entities.
///
/// **Key Features:**
/// - 🔄 Fetch and refresh operations with separate state management
/// - 🎯 Flexible parameter system using dynamic types
/// - 📊 Built-in loading, error, empty, and success states
/// - 🧹 Comprehensive state and data management
/// - 🔧 FetchStateMixin integration for consistent state handling
/// - ♻️ Multiple reset and clear methods
/// - 📝 Support for single or multiple parameters
///
/// **Type Parameters:**
/// - `[T]`: Entity type (e.g., LabScheduleEntity, UserEntity, ProductEntity)
/// - `[P]`: Parameter type (e.g., String, int, Map<String, dynamic>, custom model)
///
/// **Basic Implementation Example:**
/// ```dart
/// class UserDetailController extends BaseDetailController<UserEntity, String> {
///   final FetchUserDetailUsecase fetchUserDetailUsecase;
///
///   UserDetailController({required this.fetchUserDetailUsecase});
///
///   @override
///   String get baseStateKey => 'userDetail';
///
///   @override
///   Future<Either<Failure, BaseResponseEntity<UserEntity>>> executeUsecase(
///     String userId
///   ) async {
///     return await fetchUserDetailUsecase.execute(userId: userId);
///   }
/// }
/// ```
///
/// **Advanced Implementation Example (Multiple Parameters):**
/// ```dart
/// class OrderDetailController extends BaseDetailController<OrderEntity, Map<String, dynamic>> {
///   final FetchOrderDetailUsecase fetchOrderDetailUsecase;
///
///   OrderDetailController({required this.fetchOrderDetailUsecase});
///
///   @override
///   String get baseStateKey => 'orderDetail';
///
///   @override
///   Future<Either<Failure, BaseResponseEntity<OrderEntity>>> executeUsecase(
///     Map<String, dynamic> params
///   ) async {
///     return await fetchOrderDetailUsecase.execute(
///       orderId: params['orderId'] as String,
///       customerId: params['customerId'] as String,
///     );
///   }
///
///   // Convenience method
///   Future<void> fetchOrderDetail(String orderId, String customerId) async {
///     await fetchDetail({'orderId': orderId, 'customerId': customerId});
///   }
/// }
/// ```
///
/// **Usage Examples:**
/// ```dart
/// // Simple single parameter
/// await userController.fetchDetail('user123');
///
/// // Multiple parameters with Map
/// await orderController.fetchDetail({
///   'orderId': 'order123',
///   'customerId': 'customer456',
/// });
///
/// // Custom parameter model
/// final params = UserDetailParams(userId: 'user123', includeProfile: true);
/// await userController.fetchDetail(params);
/// /// // Refresh operations
/// await controller.refreshDetail('user123');
/// await controller.forceRefresh('user123');
/// ```
///
/// **State Management Examples:**
/// ```dart
/// // Check states
/// if (controller.isLoading) {
///   // Show loading indicator
/// }
/// /// if (controller.hasError) {
///   // Show error message
///   print(controller.stateDescription);
/// }
///
/// if (controller.hasData) {
///   // Show data
///   final entity = controller.entity.value;
/// }
///
/// // Clear operations
/// controller.clearEntity();       // Clear only data
/// controller.clearAll();         // Clear data and reset states
/// controller.resetStateOnly();   // Reset only states
/// ```
///
/// **UI Integration Examples:**
/// ```dart
/// Widget build(BuildContext context) {
///   return Obx(() {
///     final state = controller.reactiveState.value;
///     return state.toWidget(
///       loadingWidget: CircularProgressIndicator(),
///       loadedWidget: DetailWidget(entity: controller.entity.value),
///       emptyWidget: Text('No data found'),
///       errorWidget: Text('Error: ${controller.stateDescription}'),
///     );
///   });
/// }
/// /// // Refresh indicator
/// RefreshIndicator(
///   onRefresh: () => controller.refreshDetail(currentParams),
///   child: DetailContent(),
/// )
/// /// // Error handling
/// if (controller.hasError) {
///   ScaffoldMessenger.of(context).showSnackBar(
///     SnackBar(content: Text(controller.stateDescription)),
///   );
/// }
/// ```
///
/// **Available Methods Summary:**
/// /// **Core Fetch Methods:**
/// - `fetchDetail(P params)` - Main method to fetch detail data
/// - `refreshDetail(P params)` - Pull-to-refresh with parameters
/// - `forceRefresh(P params)` - Force refresh without pull-to-refresh
/// - `reload(P params)` - Reload with parameters
///
/// **Clear & Reset Methods:**
/// - `clearEntity()` - Clear only entity data
/// - `clearAll()` - Complete reset (data and states)
/// - `resetStateOnly()` - Reset only loading/error states
/// /// **State Getters:**
/// - `isLoading`, `isRefreshing`, `isEmpty`, `hasError`
/// - `hasData`, `state`, `reactiveState`
/// - `stateDescription`
///
/// **Helper Methods (Override if needed):**
/// - `onDataReceived(T data)` - Called when data is successfully fetched
/// - `onDataCleared()` - Called when data is cleared
/// - `onErrorOccurred(Failure failure)` - Called when error occurs
abstract class BaseDetailController<T, P> extends GetxController
    with FetchStateMixin {
  // ═══════════════════════════════════════════════════════════════════════════
  // PROPERTIES & FIELDS
  // ═══════════════════════════════════════════════════════════════════════════

  /// Main entity data holder
  final Rx<T?> entity = Rx<T?>(null);

  /// Current parameters used for the last fetch operation
  P? _currentParams;

  // ═══════════════════════════════════════════════════════════════════════════
  // ABSTRACT METHODS (Must be implemented by subclasses)
  // ═══════════════════════════════════════════════════════════════════════════

  /// Abstract method to execute the API call with the given parameters
  ///
  /// This method should implement the actual API call using the provided usecase.
  /// It must return an Either type with Failure on the left and BaseResponseEntity<T> on the right.
  ///
  /// Example implementation:
  /// ```dart
  /// @override
  /// Future<Either<Failure, BaseResponseEntity<UserEntity>>> executeUsecase(
  ///   String userId
  /// ) async {
  ///   return await fetchUserDetailUsecase.execute(userId: userId);
  /// }
  /// ```
  Future<Either<Failure, BaseResponseEntity<T>>> executeUsecase(P params);

  /// Abstract getter for the base state key
  ///
  /// This key is used for state management operations. It should be unique
  /// for each controller type to avoid state conflicts.
  ///
  /// Example:
  /// ```dart
  /// @override
  /// String get baseStateKey => 'userDetail';
  /// ```
  String get baseStateKey;

  // ═══════════════════════════════════════════════════════════════════════════
  // GETTERS & STATE KEYS
  // ═══════════════════════════════════════════════════════════════════════════

  /// Current state key for this controller
  String get currentStateKey => baseStateKey;

  /// Current parameters used for the last operation
  P? get currentParams => _currentParams;

  // ═══════════════════════════════════════════════════════════════════════════
  // REACTIVE STATE GETTERS
  // ═══════════════════════════════════════════════════════════════════════════

  /// Gets reactive state for the current operation
  Rx<FetchStateEnum> get reactiveState => getReactiveState(currentStateKey);

  /// Current state enum value (non-reactive)
  FetchStateEnum get state => getReactiveState(currentStateKey).value;

  /// State check getters using current state key
  bool get isLoading => isOperationLoading(currentStateKey);
  bool get isRefreshing => isOperationRefreshing(currentStateKey);
  bool get isEmpty => isOperationEmpty(currentStateKey);
  bool get hasError => isOperationError(currentStateKey);
  bool get hasData => entity.value != null;

  /// Current state description (includes error message if any)
  String get errorMessage => getOperationStateDescription(currentStateKey);

  // ═══════════════════════════════════════════════════════════════════════════
  // CORE FETCH METHODS
  // ═══════════════════════════════════════════════════════════════════════════

  /// Main method to fetch detail data
  ///
  /// This method handles the detail fetching operation with proper state management.
  /// It automatically manages loading, success, error, and empty states.
  ///
  /// Parameters:
  /// - [params]: Parameters required for the fetch operation
  ///
  /// Example usage:
  /// ```dart
  /// // Single parameter
  /// await controller.fetchDetail('user123');
  ///
  /// // Multiple parameters
  /// await controller.fetchDetail({
  ///   'userId': 'user123',
  ///   'includeProfile': true,
  /// });
  ///
  /// // Custom parameter model
  /// final params = UserDetailParams(userId: 'user123');
  /// await controller.fetchDetail(params);
  /// ```
  Future<void> fetchDetail(P params) async {
    _currentParams = params;

    await executeOperationWithNetwork<P, BaseResponseEntity<T>>(
      currentStateKey,
      params,
      (p) => executeUsecase(p),
      onSuccess: (response) async {
        entity.value = response.data;
        if (response.data != null) {
          onDataReceived(response.data as T);
        }
        update([currentStateKey]);
      },
      onFailure: (failure) {
        entity.value = null;
        onErrorOccurred(failure);
      },
    );
  }

  /// Refresh detail data using pull-to-refresh mechanism
  ///
  /// This method performs a refresh operation with the provided parameters.
  /// It uses the pull-to-refresh state management for proper UI feedback.
  ///
  /// Parameters:
  /// - [params]: Parameters required for the refresh operation
  ///
  /// Example usage:
  /// ```dart
  /// // In RefreshIndicator
  /// RefreshIndicator(
  ///   onRefresh: () => controller.refreshDetail('user123'),
  ///   child: DetailContent(),
  /// )
  /// ```
  Future<void> refreshDetail(P params) async {
    _currentParams = params;

    await executePullToRefresh<P, BaseResponseEntity<T>>(
      currentStateKey,
      params,
      (p) => executeUsecase(p),
      onSuccess: (response) async {
        entity.value = response.data;
        if (response.data != null) {
          onDataReceived(response.data as T);
        }
        update([currentStateKey]);
      },
      onFailure: (failure) {
        onErrorOccurred(failure);
      },
      onEmpty: () {
        entity.value = null;
        update([currentStateKey]);
      },
    );
  }

  /// Force refresh without pull-to-refresh gesture
  ///
  /// This method performs a force refresh by clearing current data
  /// and fetching fresh data from the server. Unlike refresh(), this
  /// doesn't use pull-to-refresh mechanism.
  ///
  /// Parameters:
  /// - [params]: Parameters required for the refresh operation
  ///
  /// Example:
  /// ```dart
  /// // Force refresh after data change
  /// await controller.forceRefresh('user123');
  /// ```
  Future<void> forceRefresh(P params) async {
    entity.value = null;
    await fetchDetail(params);
  }

  /// Reload with the same parameters used in the last fetch
  ///
  /// This method reloads the detail using the parameters from the last
  /// successful fetch operation. Useful for refreshing data after external changes.
  ///
  /// Example:
  /// ```dart
  /// // Reload with last used parameters
  /// await controller.reloadWithLastParams();
  /// ```
  Future<void> reloadWithLastParams() async {
    if (_currentParams != null) {
      await fetchDetail(_currentParams as P);
    }
  }

  /// Reload with new parameters
  ///
  /// This method reloads the detail with new parameters.
  ///
  /// Parameters:
  /// - [params]: New parameters for the reload operation
  ///
  /// Example:
  /// ```dart
  /// // Reload with new parameters
  /// await controller.reload(newParams);
  /// ```
  Future<void> reload(P params) async {
    await fetchDetail(params);
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // CLEAR & RESET METHODS
  // ═══════════════════════════════════════════════════════════════════════════

  /// Clear only the entity data without affecting states
  ///
  /// This method clears the entity data while keeping the current state
  /// and parameters intact. Useful when you want to hide data but keep
  /// the loading/error states.
  ///
  /// Example:
  /// ```dart
  /// // Clear data but keep states
  /// controller.clearEntity();
  /// ```
  void clearEntity() {
    entity.value = null;
    onDataCleared();
    update([currentStateKey]);
  }

  /// Clear all data and reset states to initial
  ///
  /// This is a comprehensive reset that clears:
  /// - Entity data
  /// - Current parameters
  /// - All operation states (loading, error, etc.)
  ///
  /// Example:
  /// ```dart
  /// // Complete reset - useful for logout, route changes, etc.
  /// controller.clearAll();
  /// ```
  void clearAll() {
    entity.value = null;
    _currentParams = null;
    resetOperationState(currentStateKey);
    onDataCleared();
    update([currentStateKey]);
  }

  /// Reset only the state without clearing data or parameters
  ///
  /// This method only resets the loading/error states while keeping
  /// the current data and parameters intact.
  ///
  /// Example:
  /// ```dart
  /// // Reset only states after handling errors
  /// controller.resetStateOnly();
  /// ```
  void resetStateOnly() {
    resetOperationState(currentStateKey);
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // LIFECYCLE HOOKS (Override in subclasses if needed)
  // ═══════════════════════════════════════════════════════════════════════════

  /// Called when data is successfully received
  ///
  /// Override this method in subclasses to perform additional actions
  /// when data is successfully fetched, such as caching, logging, or
  /// triggering other operations.
  ///
  /// Parameters:
  /// - [data]: The entity data that was received
  ///
  /// Example override:
  /// ```dart
  /// @override
  /// void onDataReceived(UserEntity data) {
  ///   super.onDataReceived(data);
  ///   // Log user access
  ///   analyticsService.logUserViewed(data.id);
  ///   // Cache user data
  ///   cacheService.cacheUser(data);
  /// }
  /// ```
  void onDataReceived(T data) {
    // Override in subclasses if needed
  }

  /// Called when data is cleared
  ///
  /// Override this method in subclasses to perform cleanup actions
  /// when data is cleared, such as clearing caches or stopping timers.
  ///
  /// Example override:
  /// ```dart
  /// @override
  /// void onDataCleared() {
  ///   super.onDataCleared();
  ///   // Clear related caches
  ///   cacheService.clearUserCache();
  ///   // Stop timers
  ///   refreshTimer?.cancel();
  /// }
  /// ```
  void onDataCleared() {
    // Override in subclasses if needed
  }

  /// Called when an error occurs during fetch operations
  ///
  /// Override this method in subclasses to handle errors, such as
  /// logging, showing custom error messages, or triggering fallback operations.
  ///
  /// Parameters:
  /// - [failure]: The failure object containing error information
  ///
  /// Example override:
  /// ```dart
  /// @override
  /// void onErrorOccurred(Failure failure) {
  ///   super.onErrorOccurred(failure);
  ///   // Log error
  ///   logger.error('Failed to fetch user detail: ${failure.message}');
  ///   // Show error to user
  ///   Get.snackbar('Error', failure.message ?? 'Unknown error occurred');
  /// }
  /// ```
  void onErrorOccurred(Failure failure) {
    // Override in subclasses if needed
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // UTILITY METHODS
  // ═══════════════════════════════════════════════════════════════════════════

  /// Check if controller has valid parameters for operations
  ///
  /// Returns true if current parameters are not null, false otherwise.
  bool get hasValidParams => _currentParams != null;

  /// Get formatted string representation of current parameters
  ///
  /// Useful for debugging and logging purposes.
  String get paramsString => _currentParams?.toString() ?? 'null';

  /// Check if the entity data is available and not null
  ///
  /// Returns true if entity data exists, false otherwise.
  bool get isDataAvailable => entity.value != null;

  /// Get the entity data or throw an exception if null
  ///
  /// Use this method when you're certain that data should be available.
  /// Throws an exception if data is null.
  T get requireData {
    final data = entity.value;
    if (data == null) {
      throw Exception(
          'Entity data is null. Make sure to call fetchDetail() first and check hasData.');
    }
    return data;
  }

  /// Get the entity data or return a default value if null
  ///
  /// Parameters:
  /// - [defaultValue]: Value to return if entity data is null
  ///
  /// Returns the entity data or the default value.
  T getDataOrDefault(T defaultValue) {
    return entity.value ?? defaultValue;
  }
}
