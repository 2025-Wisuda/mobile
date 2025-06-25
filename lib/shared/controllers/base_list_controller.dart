// ignore_for_file: unintended_html_in_doc_comment

import 'package:flutter/material.dart';

import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/enums/fetch_state_enum.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/mixins/debounce_mixin.dart';
import 'package:mobile/shared/mixins/mixin.dart';

/// A base abstract controller that provides standardized list operations with pagination and filtering.
/// This controller eliminates code duplication for common list operations across different entities.
///
/// **Key Features:**
/// - 🔄 Automatic pagination with load more functionality
/// - 🎯 Flexible filtering system with manual filter control
/// - 📊 Built-in loading, error, empty, and success states
/// - 🔍 Optional search functionality with debounce
/// - 🧹 Comprehensive state and data management
/// - 🔧 Form mixin integration
/// - ♻️ Multiple reset and clear methods
///
/// **Type Parameters:**
/// - `[T]`: Entity type (e.g., LabScheduleEntity, UserEntity, ProductEntity)
/// - `[P]`: Filter params type (e.g., LabScheduleFilterParamsModel, UserFilterParamsModel)
///
/// **Basic Implementation Example:**
/// ```dart
/// class UserListController extends BaseListController<UserEntity, UserFilterParamsModel> {
///   final FetchUsersUsecase fetchUsersUsecase;
///
///   UserListController({required this.fetchUsersUsecase});
///
///   @override
///   String get baseStateKey => 'userList';
///
///   @override
///   Future<Either<Failure, BaseListResponseEntity<UserEntity>>> executeUsecase(
///     UserFilterParamsModel params
///   ) async {
///     return await fetchUsersUsecase.execute(params: params);
///   }
///
///   @override
///   UserFilterParamsModel createFilterParams({
///     required int page,
///     required int pageSize,
///     String? search,
///     Map<String, dynamic>? filters,
///   }) {
///     return UserFilterParamsModel(
///       page: page,
///       pageSize: pageSize,
///       search: search,
///       role: filters?['role'] as String?,
///       startDate: filters?['start_date'] as String?,
///       endDate: filters?['end_date'] as String?,
///       days: filters?['days'] as String?,
///       groups: filters?['groups'] as String?,
///       ordering: filters?['ordering'] as String?,
///     );
///   }
/// }
/// ```
///
/// **Filter System Examples:**
/// ```dart
/// // Pass filters explicitly through fetchList method
/// await controller.fetchList(filters: {
///   'date': '2025-06-17',
///   'status': 'active',
/// });
/// ```
///
/// **State Management Examples:**
/// ```dart
/// // Basic operations
/// await controller.clearAll();
/// controller.resetStateOnly();
/// controller.clearDataOnly();
/// ```
///
/// **UI Integration Examples:**
/// ```dart
/// // Reactive state management
/// Widget build(BuildContext context) {
///   return Obx(() {
///     final state = controller.state.value;
///     return state.toWidget(
///       loadingWidget: CircularProgressIndicator(),
///       loadedWidget: ListView.builder(
///         itemCount: controller.itemsCount,
///         itemBuilder: (context, index) => ListTile(
///           title: Text(controller.items[index].name),
///         ),
///       ),
///       emptyWidget: Text('No data found'),
///       errorWidget: Text('Error occurred'),
///     );
///   });
/// }
///
/// // State indicators
/// if (controller.isLoading) CircularProgressIndicator(),
/// if (controller.isEmpty) Text('No data'),
/// if (controller.hasError) Text('Error: ${controller.errorMessage}'),
/// if (controller.canLoadMore)
///   ElevatedButton(
///     onPressed: controller.loadMore,
///     child: Text('Load More'),
///   ),
///
/// // Info displays
/// Text(controller.pageInfo),    // "Page 1 of 5"
/// Text(controller.itemsInfo),   // "10 of 50 items"
/// ```
///
/// **Note:** Filter parameters are passed explicitly through the `filters` Map in `fetchList()`.
/// All filter formats should match your backend API requirements.
/// The controller provides the flexible structure, but specific filtering logic is handled in concrete implementations.
///
/// **Available Methods Summary:**
///
/// **Core Fetch Methods:**
/// - `fetchList()` - Main method to fetch list data with optional filters
/// - `loadMore()` - Load next page if available
///
/// **Search Methods (if enabled):**
/// - `enableSearch()` - Enable search functionality
/// - `search(query)` - Perform debounced search
/// - `clearSearch()` - Clear search query and refresh
///
/// **Refresh Methods:**
/// - `refresh()` - Pull-to-refresh
///
/// **Clear & Reset Methods:**
/// - `clearAll()` - Complete reset (search, state, data)
/// - `resetStateOnly()` - Reset only loading/error states
/// - `clearDataOnly()` - Clear only data, keep states
///
/// **State Getters:**
/// - `isLoading`, `isRefreshing`, `isLoadingMore`, `isEmpty`, `hasError`
/// - `canLoadMore`, `hasData`
/// - `state`, `reactiveState`, `listReactiveState`, `searchReactiveState`
///
/// **Data Info Getters:**
/// - `itemsCount`, `isFirstPage`, `isLastPage`
/// - `pageInfo`, `itemsInfo`
abstract class BaseListController<T, P> extends GetxController
    with FetchStateMixin, FormMixin, DebounceMixin {
  // ═══════════════════════════════════════════════════════════════════════════
  // PROPERTIES & FIELDS
  // ═══════════════════════════════════════════════════════════════════════════

  /// Main list of items
  final RxList<T> items = <T>[].obs;

  // Core pagination and search properties

  // --- Pagination Properties ---
  int currentPage = 1;
  int totalPages = 1;
  int totalItems = 0;
  int pageSize = 10;

  // --- Internal Properties ---
  /// Whether search functionality is enabled for this controller
  bool _hasSearchEnabled = false;

  // ═══════════════════════════════════════════════════════════════════════════
  // ABSTRACT METHODS (Must be implemented by subclasses)
  // ═══════════════════════════════════════════════════════════════════════════

  /// Abstract method to execute the API call with the given parameters
  ///
  /// This method should implement the actual API call using the provided usecase.
  /// It must return an Either type with Failure on the left and BaseListResponseEntity<T> on the right.
  ///
  /// Example implementation:
  /// ```dart
  /// @override
  /// Future<Either<Failure, BaseListResponseEntity<UserEntity>>> executeUsecase(
  ///   UserFilterParamsModel params
  /// ) async {
  ///   return await fetchUsersUsecase.execute(params: params);
  /// }
  /// ```
  Future<Either<Failure, BaseListResponseEntity<T>>> executeUsecase(P params);

  /// Abstract method to create filter parameters from input values
  ///
  /// This method should convert the generic filter inputs into the specific
  /// filter parameter model required by the API. The page and pageSize are
  /// required for pagination, while search and filters are optional.
  ///
  /// Example implementation:
  /// ```dart
  /// @override
  /// UserFilterParamsModel createFilterParams({
  ///   required int page,
  ///   required int pageSize,
  ///   String? search,
  ///   Map<String, dynamic>? filters,
  /// }) {
  ///   return UserFilterParamsModel(
  ///     page: page,
  ///     pageSize: pageSize,
  ///     search: search,
  ///     startDate: filters?['start_date'] as String?,
  ///     endDate: filters?['end_date'] as String?,
  ///     ordering: filters?['ordering'] as String?,
  ///   );
  /// }
  /// ```
  P createFilterParams({
    required int page,
    required int pageSize,
    String? search,
    Map<String, dynamic>? filters,
  });

  // ═══════════════════════════════════════════════════════════════════════════
  // GETTERS & STATE KEYS
  // ═══════════════════════════════════════════════════════════════════════════

  /// Override untuk custom state keys
  String get baseStateKey;
  String get searchStateKey => '${baseStateKey}Search';
  String get listStateKey => '${baseStateKey}List';
  String get searchControllerKey => '${baseStateKey}SearchController';

  /// Current state key based on search context
  String get currentStateKey {
    final searchQuery =
        hasSearchEnabled ? getControllerValue(searchControllerKey) : '';
    return searchQuery.isNotEmpty ? searchStateKey : listStateKey;
  }

  /// Whether search functionality is enabled for this controller
  bool get hasSearchEnabled => _hasSearchEnabled;

  // ═══════════════════════════════════════════════════════════════════════════
  // LIFECYCLE METHODS
  // ═══════════════════════════════════════════════════════════════════════════

  @override
  void onInit() {
    enableSearch(); // Enable search by default, can be overridden
    super.onInit();
  }

  /// Enable search functionality for this controller
  ///
  /// This method must be called manually in concrete controller's constructor
  /// if search functionality is needed. It initializes the search text controller
  /// and focus node required for search operations.
  ///
  /// **Important:** Search methods will throw exceptions if called before enabling search.
  ///
  /// Example usage:
  /// ```dart
  /// class UserListController extends BaseListController<UserEntity, UserFilterParamsModel> {
  ///   final FetchUsersUsecase fetchUsersUsecase;
  ///
  ///   UserListController({required this.fetchUsersUsecase}) {
  ///     enableSearch(); // Enable search functionality
  ///   }
  ///
  ///   // ... rest of implementation
  /// }
  /// ```
  ///
  /// **Search Methods Available After Enabling:**
  /// - `search(query)` - Perform debounced search
  /// - `clearSearch()` - Clear search query and refresh
  /// - `searchController` - Access to TextEditingController
  /// - `searchFocusNode` - Access to FocusNode
  void enableSearch() {
    _hasSearchEnabled = true;
    initializeControllers([searchControllerKey]);
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // REACTIVE STATE GETTERS
  // ═══════════════════════════════════════════════════════════════════════════

  /// Gets reactive state for the current operation (list or search)
  ///
  /// Returns the appropriate state based on whether user is currently searching or not.
  Rx<FetchStateEnum> get reactiveState {
    return getReactiveState(currentStateKey);
  }

  /// Gets reactive state for list operation specifically
  Rx<FetchStateEnum> get listReactiveState => getReactiveState(listStateKey);

  /// Gets reactive state for search operation specifically
  Rx<FetchStateEnum> get searchReactiveState =>
      getReactiveState(searchStateKey);

  /// Current state enum value (non-reactive)
  FetchStateEnum get state => getReactiveState(currentStateKey).value;

  /// State check getters using current state key
  bool get isLoading => isOperationLoading(currentStateKey);
  bool get isRefreshing => isOperationRefreshing(currentStateKey);
  bool get isLoadingMore => isOperationLoadingMore(currentStateKey);
  bool get isEmpty => isOperationEmpty(currentStateKey);
  bool get hasError => isOperationError(currentStateKey);
  bool get canLoadMore =>
      currentPage < totalPages && !isLoadingMore && !isLoading;
  String get errorMessage => getOperationStateDescription(currentStateKey);

  // ═══════════════════════════════════════════════════════════════════════════
  // SEARCH CONTROLLER GETTERS
  // ═══════════════════════════════════════════════════════════════════════════  /// Gets search text controller if search is enabled
  ///
  /// Returns the TextEditingController for search field.
  /// Throws an exception if search is not enabled.
  TextEditingController get searchController {
    if (!hasSearchEnabled) {
      throw Exception(
          'Search is not enabled for this controller. Call enableSearch() first.');
    }

    try {
      return getController(searchControllerKey);
    } catch (e) {
      // Initialize if not already done
      initializeControllers([searchControllerKey]);
      return getController(searchControllerKey);
    }
  }

  /// Gets search focus node if search is enabled
  ///
  /// Returns the FocusNode for search field.
  /// Throws an exception if search is not enabled.
  FocusNode get searchFocusNode {
    if (!hasSearchEnabled) {
      throw Exception(
          'Search is not enabled for this controller. Call enableSearch() first.');
    }

    // Ensure search focus node is available
    try {
      return getFocusNode(searchControllerKey);
    } catch (e) {
      // Initialize if not already done
      initializeControllers([searchControllerKey]);
      return getFocusNode(searchControllerKey);
    }
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // CORE FETCH METHODS
  // ═══════════════════════════════════════════════════════════════════════════

  /// Main method to fetch list data with optional filters
  Future<void> fetchList({
    bool isLoadMore = false,
    int? page,
    Map<String, dynamic>? filters,
  }) async {
    final searchQuery =
        hasSearchEnabled ? getControllerValue(searchControllerKey) : '';
    final isSearching = searchQuery.isNotEmpty;

    // Start with custom filters
    final mergedFilters = <String, dynamic>{};
    if (filters != null) {
      mergedFilters.addAll(filters);
    }

    // Flexible filter system - all filters are passed explicitly

    final stateKey = isSearching ? searchStateKey : listStateKey;

    final filterParams = createFilterParams(
      page: isLoadMore ? currentPage + 1 : (page ?? 1),
      pageSize: pageSize,
      search: searchQuery,
      filters: mergedFilters.isNotEmpty ? mergedFilters : null,
    );

    await executeFetchListWithNetwork<P, BaseListResponseEntity<T>>(
      stateKey,
      filterParams,
      (params) => executeUsecase(params),
      onSuccess: (response, isLoadMoreOp) async {
        if (isLoadMoreOp) {
          items.addAll(response.data!);
        } else {
          items.assignAll(response.data!);
        }
        _updatePaginationMeta(response.meta);
        update([listStateKey]);
      },
      onEmpty: () {
        items.clear();
        update([listStateKey]);
      },
      isLoadMore: isLoadMore,
    );
  }

  Future<void> loadMore() async {
    if (canLoadMore) {
      await fetchList(isLoadMore: true);
    }
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // SEARCH METHODS
  // ═══════════════════════════════════════════════════════════════════════════

  Future<void> search(String query) async {
    if (!hasSearchEnabled) {
      throw Exception(
          'Search is not enabled for this controller. Call enableSearch() first.');
    }
    setControllerValue(searchControllerKey, query);
    executeAsyncWithDebounce(
      searchStateKey,
      () => fetchList(),
    );
  }

  void clearSearch() {
    if (!hasSearchEnabled) {
      throw Exception(
          'Search is not enabled for this controller. Call enableSearch() first.');
    }
    setControllerValue(searchControllerKey, '');
    fetchList();
  }

  /// Clear search query without refetching data
  ///
  /// This is useful for cleanup scenarios where you want to clear
  /// the search state but don't need to fetch new data.
  void clearSearchOnly() {
    if (!hasSearchEnabled) {
      throw Exception(
          'Search is not enabled for this controller. Call enableSearch() first.');
    }
    setControllerValue(searchControllerKey, '');
    resetOperationState(searchStateKey);
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // REFRESH METHODS
  // ═══════════════════════════════════════════════════════════════════════════

  @override
  Future<void> refresh() async {
    final searchQuery =
        hasSearchEnabled ? getControllerValue(searchControllerKey) : '';
    final isSearching = searchQuery.isNotEmpty;
    final stateKey = isSearching ? searchStateKey : listStateKey;

    await executePullToRefresh<P, BaseListResponseEntity<T>>(
      stateKey,
      createFilterParams(
        page: 1,
        pageSize: pageSize,
        search: searchQuery,
        filters:
            null, // Flexible refresh - override in concrete controllers if needed
      ),
      (params) => executeUsecase(params),
      onSuccess: (response) async {
        items.assignAll(response.data!);
        _updatePaginationMeta(response.meta);
        currentPage = 1;
        update([listStateKey]);
      },
      onFailure: (failure) {},
      onEmpty: () {
        items.clear();
        update([listStateKey]);
      },
    );
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // CLEAR & RESET METHODS
  // ═══════════════════════════════════════════════════════════════════════════

  /// Clear all filters and fetch default list
  Future<void> clearFilters() async {
    if (hasSearchEnabled) {
      clearSearch();
    } else {
      await fetchList();
    }
  }

  /// Clear all state, filters, and reset to initial state
  ///
  /// This is a comprehensive reset that clears:
  /// - Search query (if enabled)
  /// - All operation states (loading, error, etc.)
  /// - Items list
  /// - Pagination meta
  ///
  /// Example:
  /// ```dart
  /// // Complete reset - useful for logout, route changes, etc.
  /// await controller.clearAll();
  /// ```
  Future<void> clearAll() async {
    // Clear search if enabled
    if (hasSearchEnabled) {
      setControllerValue(searchControllerKey, '');
    }

    // Reset all states
    resetState();

    // Clear items and reset pagination
    items.clear();
    currentPage = 1;
    totalPages = 1;
    totalItems = 0;

    // Update UI
    update([listStateKey, searchStateKey]);
  }

  /// Reset only the state without clearing filters or data
  ///
  /// This method only resets the loading/error states while keeping
  /// the current data, filters, and pagination intact.
  ///
  /// Example:
  /// ```dart
  /// // Reset only states after handling errors
  /// controller.resetStateOnly();
  /// ```
  void resetStateOnly() {
    resetState();
  }

  /// Clear only the data without affecting filters or states
  ///
  /// This method clears the items list and resets pagination
  /// while keeping filters and states intact.
  ///
  /// Example:
  /// ```dart
  /// // Clear data before applying new filters
  /// controller.clearDataOnly();
  /// await controller.fetchList(filters: newFilters);
  /// ```
  void clearDataOnly() {
    items.clear();
    currentPage = 1;
    totalPages = 1;
    totalItems = 0;
    update([listStateKey]);
  }

  /// Check if any filters are currently active
  ///
  /// Returns true if there are active search queries.
  /// Concrete controllers can override this method to include
  /// additional filter state checks specific to their implementation.
  ///
  /// Example:
  /// ```dart
  /// if (controller.hasActiveFilters) {
  ///   // Show clear filters button or filter indicator
  /// }
  /// ```
  bool get hasActiveFilters {
    final hasSearchQuery = hasSearchEnabled && currentSearchQuery.isNotEmpty;
    return hasSearchQuery;
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // INTERNAL METHODS & GETTERS
  // ═══════════════════════════════════════════════════════════════════════════

  String get currentSearchQuery =>
      hasSearchEnabled ? getControllerValue(searchControllerKey) : '';

  void _updatePaginationMeta(dynamic meta) {
    if (meta?.pagination != null) {
      final pagination = meta.pagination;
      currentPage = pagination.currentPage ?? 1;
      totalPages = pagination.totalPages ?? 1;
      totalItems = pagination.totalItems ?? 0;
      pageSize = pagination.pageSize ?? 10;
    }
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // UTILITY METHODS
  // ═══════════════════════════════════════════════════════════════════════════

  void resetState() {
    resetOperationState(listStateKey);
    resetOperationState(searchStateKey);
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // DATA INFO GETTERS
  // ═══════════════════════════════════════════════════════════════════════════

  /// Check if controller has any data
  bool get hasData => items.isNotEmpty;

  /// Get current items count
  int get itemsCount => items.length;

  /// Check if list is at the first page
  bool get isFirstPage => currentPage <= 1;

  /// Check if list is at the last page
  bool get isLastPage => currentPage >= totalPages;

  /// Get current page info as formatted string
  String get pageInfo => 'Page $currentPage of $totalPages';

  /// Get items count info as formatted string
  String get itemsInfo => '$itemsCount of $totalItems items';

  // ═══════════════════════════════════════════════════════════════════════════
  // LIFECYCLE CLEANUP
  // ═══════════════════════════════════════════════════════════════════════════

  /// Comprehensive cleanup when controller is disposed
  ///
  /// This method performs complete cleanup of all resources including:
  /// - Cancelling all debounce timers (from DebounceMixin)
  /// - Disposing all text controllers and focus nodes (from FormMixin)
  /// - Resetting all fetch states (from FetchStateMixin)
  /// - Clearing items list and pagination data
  /// - Resetting internal state flags
  ///
  /// This ensures no memory leaks and proper resource disposal.
  @override
  void onClose() {
    // Clear data
    items.clear();

    // Reset pagination
    currentPage = 1;
    totalPages = 1;
    totalItems = 0;

    // Reset internal flags
    _hasSearchEnabled = false;

    // Call parent cleanup methods
    // Note: Each mixin handles its own cleanup in its onClose method:
    // - DebounceMixin: Cancels all debounce timers
    // - FormMixin: Disposes all controllers and focus nodes
    // - FetchStateMixin: Resets all fetch states
    super.onClose();
  }
}
