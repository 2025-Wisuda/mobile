import 'package:get/get.dart';

import 'package:mobile/shared/controllers/base_state_controller.dart';
import 'package:mobile/shared/controllers/mixins/debounce_mixin.dart';
import 'package:mobile/shared/controllers/mixins/pagination_mixin.dart';

/// Specialized base controller for list operations and pagination.
///
/// This controller follows the Single Responsibility Principle by focusing
/// exclusively on list fetching and pagination logic. It's designed for
/// scenarios where you only need to display lists of data without
/// create, update, or delete functionality.
///
/// **Type Parameters:**
// ignore: unintended_html_in_doc_comment
/// - [TListEntity]: The list/collection type (e.g., List<Course>, PaginatedResponse<User>)
/// - [TFilterParams]: The filter parameters for list operations
///
/// **Key Features:**
/// - Reactive list data management
/// - Built-in pagination with load-more functionality
/// - Debounced list operations to prevent rapid successive calls
/// - Separate loading states for initial load and load-more
/// - Automatic pagination state management
/// - Error handling with rollback for failed load-more operations
///
/// **Included Mixins:**
/// - [DebounceMixin]: Debounce functionality for all operations
/// - [PaginationMixin]: Complete pagination logic with load more support
///
/// **Usage:**
/// ```dart
/// class CourseListController extends ListBaseController<List<Course>, CourseFilterParams> {
///   @override
///   Future<void> performFetchList({
///     required CourseFilterParams filterParams,
///     bool isLoadMore = false,
///   }) async {
///     final response = await courseService.getCourses(
///       page: isLoadMore ? currentPage : 1,
///       filters: filterParams,
///     );
///
///     if (isLoadMore) {
///       // Append to existing list
///       final currentList = entityList ?? [];
///       setEntityList([...currentList, ...response.data]);
///     } else {
///       setEntityList(response.data);
///     }
///
///     updatePagination(response.pagination);
///     setSuccess();
///   }
/// }
/// ```
///
/// **When to Use:**
/// - Read-only list screens
/// - Search results
/// - Feed-style interfaces
/// - Any scenario where you only need list display without CRUD operations
///
/// **When NOT to Use:**
/// - If you need create/update/delete functionality (use [CrudBaseController])
/// - If you only need single entity details (use [DetailBaseController])
/// - If you need form handling (use [FormBaseController])
abstract class ListBaseController<TListEntity, TFilterParams>
    extends BaseStateController
    with DebounceMixin, PaginationMixin {
  /// Internal storage for the entity list/collection
  final _entityList = Rxn<TListEntity>();

  /// Current entity list/collection, null if none loaded
  ///
  /// Use this to access the currently loaded list of entities.
  /// This is reactive and will trigger UI updates when changed.
  TListEntity? get entityList => _entityList.value;

  /// Abstract method for fetching the entity list
  ///
  /// Implement this method to define how your controller fetches entity lists.
  /// The method should handle both initial loads and load-more operations.
  ///
  /// **Implementation Guidelines:**
  /// - For initial loads (isLoadMore = false): Replace the entire list
  /// - For load-more (isLoadMore = true): Append to the existing list
  /// - Update pagination information after successful fetch
  /// - Call appropriate state methods (setSuccess, setError, etc.)
  ///
  /// [filterParams] The filter parameters to apply to the list
  /// [isLoadMore] Whether this is a load-more operation for pagination
  Future<void> performFetchList({
    required TFilterParams filterParams,
    bool isLoadMore = false,
  });

  /// Template method for executing list fetch with debounce and state management
  ///
  /// This method handles all the boilerplate for list operations including:
  /// - Debouncing to prevent rapid successive calls
  /// - State management (loading, success, error)
  /// - Pagination logic for load-more operations
  /// - Error handling and recovery with page rollback
  /// - Automatic pagination reset for new searches
  ///
  /// **Usage:**
  /// ```dart
  /// // Initial load
  /// executeFetchList(filterParams: CourseFilterParams(category: 'programming'));
  ///
  /// // Load more with custom debounce
  /// executeFetchList(
  ///   filterParams: currentFilters,
  ///   isLoadMore: true,
  ///   debounceDuration: Duration(milliseconds: 500),
  /// );
  /// ```
  ///
  /// [filterParams] The filter parameters to apply to the list
  /// [isLoadMore] Whether this is a load-more operation for pagination
  /// [debounceDuration] Custom debounce duration, uses default if not provided
  void executeFetchList({
    required TFilterParams filterParams,
    bool isLoadMore = false,
    Duration? debounceDuration,
  }) {
    executeAsyncWithDebounce('fetchList', () async {
      if (isLoadMore) {
        if (!canLoadMore) return;
        setIsLoadingMore(true);
        nextPage();
      } else {
        setLoading();
        resetPagination();
      }

      try {
        await performFetchList(
          filterParams: filterParams,
          isLoadMore: isLoadMore,
        );
      } catch (e) {
        if (isLoadMore) {
          setIsLoadingMore(false);
          previousPage(); // Rollback page increment
        } else {
          setError(e.toString());
        }
      } finally {
        if (isLoadMore) {
          setIsLoadingMore(false);
        }
      }
    }, duration: debounceDuration);
  }

  /// Sets the current entity list/collection
  ///
  /// Use this method to update the currently loaded entity list.
  /// This will trigger reactive updates in any widgets observing the list.
  ///
  /// **Usage:**
  /// ```dart
  /// // Set initial list
  /// setEntityList(response.data);
  ///
  /// // Append to existing list for load-more
  /// final currentList = entityList ?? [];
  /// setEntityList([...currentList, ...newItems]);
  /// ```
  ///
  /// [entityList] The entity list to set, or null to clear
  void setEntityList(TListEntity? entityList) => _entityList.value = entityList;

  /// Clears the list data and resets pagination and state
  ///
  /// This method performs a complete cleanup including:
  /// - Clearing the entity list
  /// - Resetting pagination to initial state
  /// - Resetting fetch state to initial
  ///
  /// Use this when you need to completely reset the list,
  /// such as when applying new filters or navigating away.
  void clearList() {
    _entityList.value = null;
    resetPagination();
    resetState();
  }
}
