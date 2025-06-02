import 'package:get/get.dart';

/// Mixin for comprehensive pagination functionality with load-more support.
///
/// This mixin follows the Single Responsibility Principle by being solely
/// responsible for pagination logic and state management. It provides a
/// complete pagination system commonly needed for list-based screens.
///
/// **Key Features:**
/// - Current page tracking
/// - Total pages and items calculation
/// - Load-more state management
/// - Pagination boundaries validation
/// - Configurable page size
/// - Reset functionality for new searches
///
/// **Usage:**
/// ```dart
/// class CourseListController extends ListBaseController with PaginationMixin {
///   @override
///   Future<void> performFetchList({
///     required CourseFilterParams filterParams,
///     bool isLoadMore = false,
///   }) async {
///     final response = await courseService.getCourses(
///       page: isLoadMore ? currentPage : 1,
///       size: pageSize,
///       filters: filterParams,
///     );
///
///     // Update pagination info from API response
///     updatePagination(
///       currentPage: response.currentPage,
///       totalPages: response.totalPages,
///       totalItems: response.totalItems,
///       isLastPage: response.isLastPage,
///     );
///
///     setSuccess();
///   }
/// }
///
/// // In your widget
/// Obx(() {
///   return ListView.builder(
///     itemCount: controller.entityList?.length ?? 0,
///     itemBuilder: (context, index) {
///       // Show load more indicator at the end
///       if (index == controller.entityList!.length - 1 && controller.canLoadMore) {
///         return LoadMoreWidget(
///           isLoading: controller.isLoadingMore,
///           onLoadMore: () => controller.executeFetchList(
///             filterParams: currentFilters,
///             isLoadMore: true,
///           ),
///         );
///       }
///       return CourseItem(course: controller.entityList![index]);
///     },
///   );
/// });
/// ```
///
/// **Why SRP?**
/// This mixin has only one reason to change: when pagination requirements
/// change. It doesn't handle data fetching, UI rendering, or business logic -
/// those are handled by separate controllers or widgets.
mixin PaginationMixin on GetxController {
  /// Internal reactive current page number
  final _currentPage = RxInt(1);

  /// Internal reactive last page indicator
  final _isLastPage = RxBool(false);

  /// Internal reactive load-more loading state
  final _isLoadingMore = RxBool(false);

  /// Internal reactive total pages count
  final _totalPages = RxInt(0);

  /// Internal reactive total items count
  final _totalItems = RxInt(0);

  /// Internal reactive page size configuration
  final _pageSize = RxInt(10);

  /// Current page number (1-based)
  ///
  /// Use this to determine which page of data is currently being displayed.
  int get currentPage => _currentPage.value;

  /// Whether the current page is the last page
  ///
  /// Use this to determine if load-more functionality should be available.
  bool get isLastPage => _isLastPage.value;

  /// Whether a load-more operation is currently in progress
  ///
  /// Use this to show loading indicators for load-more operations.
  bool get isLoadingMore => _isLoadingMore.value;

  /// Total number of pages available
  ///
  /// Use this for pagination UI components or progress indicators.
  int get totalPages => _totalPages.value;

  /// Total number of items across all pages
  ///
  /// Use this for displaying total count to users.
  int get totalItems => _totalItems.value;

  /// Number of items per page
  ///
  /// Use this when making API calls to specify page size.
  int get pageSize => _pageSize.value;

  /// Sets the current page number
  ///
  /// [page] The page number to set (1-based)
  void setCurrentPage(int page) => _currentPage.value = page;

  /// Sets whether the current page is the last page
  ///
  /// [isLast] True if this is the last page, false otherwise
  void setIsLastPage(bool isLast) => _isLastPage.value = isLast;

  /// Sets the load-more loading state
  ///
  /// [isLoading] True if load-more is in progress, false otherwise
  void setIsLoadingMore(bool isLoading) => _isLoadingMore.value = isLoading;

  /// Sets the total number of pages
  ///
  /// [total] The total number of pages available
  void setTotalPages(int total) => _totalPages.value = total;

  /// Sets the total number of items
  ///
  /// [total] The total number of items across all pages
  void setTotalItems(int total) => _totalItems.value = total;

  /// Sets the page size for pagination
  ///
  /// [size] The number of items per page
  void setPageSize(int size) => _pageSize.value = size;

  /// Resets pagination to initial state
  ///
  /// This method resets all pagination values to their defaults:
  /// - Current page: 1
  /// - Last page: false
  /// - Loading more: false
  /// - Total pages: 0
  /// - Total items: 0
  ///
  /// Use this when starting a new search or filter operation.
  void resetPagination() {
    _currentPage.value = 1;
    _isLastPage.value = false;
    _isLoadingMore.value = false;
    _totalPages.value = 0;
    _totalItems.value = 0;
  }

  /// Moves to the next page if not already on the last page
  ///
  /// This method increments the current page by 1, but only if the current
  /// page is not the last page. Use this for "Next" button functionality.
  ///
  /// **Example:**
  /// ```dart
  /// IconButton(
  ///   onPressed: controller.isLastPage ? null : controller.nextPage,
  ///   icon: Icon(Icons.navigate_next),
  /// )
  /// ```
  void nextPage() {
    if (!_isLastPage.value) {
      _currentPage.value += 1;
    }
  }

  /// Moves to the previous page if not already on the first page
  ///
  /// This method decrements the current page by 1, but only if the current
  /// page is greater than 1. Use this for "Previous" button functionality.
  ///
  /// **Example:**
  /// ```dart
  /// IconButton(
  ///   onPressed: controller.isFirstPage ? null : controller.previousPage,
  ///   icon: Icon(Icons.navigate_before),
  /// )
  /// ```
  void previousPage() {
    if (_currentPage.value > 1) {
      _currentPage.value -= 1;
    }
  }

  /// Navigates directly to a specific page number
  ///
  /// [page] The target page number (1-based)
  ///
  /// This method sets the current page to the specified page number, but only
  /// if the page number is valid (between 1 and totalPages). Use this for
  /// page number selection or jump-to-page functionality.
  ///
  /// **Example:**
  /// ```dart
  /// DropdownButton<int>(
  ///   value: controller.currentPage,
  ///   items: List.generate(controller.totalPages, (index) =>
  ///     DropdownMenuItem(value: index + 1, child: Text('${index + 1}'))
  ///   ),
  ///   onChanged: (page) => page != null ? controller.goToPage(page) : null,
  /// )
  /// ```
  void goToPage(int page) {
    if (page >= 1 && page <= _totalPages.value) {
      _currentPage.value = page;
    }
  }

  /// Determines if more items can be loaded
  ///
  /// Returns `true` if:
  /// - Not currently loading more items
  /// - Not on the last page
  /// - Current page is less than total pages
  ///
  /// Use this property to control load-more functionality and UI indicators.
  ///
  /// **Example:**
  /// ```dart
  /// if (controller.canLoadMore) {
  ///   return LoadMoreButton(
  ///     onPressed: () => controller.loadMore(),
  ///   );
  /// }
  /// return SizedBox.shrink();
  /// ```
  bool get canLoadMore {
    return !_isLoadingMore.value &&
        !_isLastPage.value &&
        _currentPage.value < _totalPages.value;
  }

  /// Updates all pagination metadata from an API response
  ///
  /// [currentPage] The current page number from the API response
  /// [totalPages] The total number of pages from the API response
  /// [totalItems] The total number of items from the API response
  /// [pageSize] Optional page size to update (if different from current)
  ///
  /// This method updates all pagination-related properties based on the API
  /// response. It automatically calculates whether the current page is the
  /// last page. Use this method in your data fetching operations.
  ///
  /// **Example:**
  /// ```dart
  /// final response = await apiService.getItems(page: currentPage);
  /// updatePaginationMeta(
  ///   currentPage: response.pagination.currentPage,
  ///   totalPages: response.pagination.totalPages,
  ///   totalItems: response.pagination.totalItems,
  /// );
  /// ```
  void updatePaginationMeta({
    required int currentPage,
    required int totalPages,
    required int totalItems,
    int? pageSize,
  }) {
    _currentPage.value = currentPage;
    _totalPages.value = totalPages;
    _totalItems.value = totalItems;
    _isLastPage.value = currentPage >= totalPages;

    if (pageSize != null) {
      _pageSize.value = pageSize;
    }
  }

  /// Checks if the current page is the first page
  ///
  /// Returns `true` if the current page is 1, `false` otherwise.
  /// Use this property to control "Previous" button state or first-page UI.
  ///
  /// **Example:**
  /// ```dart
  /// IconButton(
  ///   onPressed: controller.isFirstPage ? null : controller.previousPage,
  ///   icon: Icon(Icons.first_page),
  /// )
  /// ```
  bool get isFirstPage => _currentPage.value == 1;

  /// Generates a human-readable page range text for display
  ///
  /// Returns a string in the format "start-end of total" (e.g., "1-10 of 100")
  /// or "0 items" if there are no items.
  ///
  /// Use this method to display pagination information to users, typically
  /// in a footer or header of lists.
  ///
  /// **Example:**
  /// ```dart
  /// Text(
  ///   controller.getPageRangeText(),
  ///   style: Theme.of(context).textTheme.caption,
  /// )
  /// ```
  ///
  /// **Sample Output:**
  /// - "1-10 of 100" (showing items 1-10 of 100 total)
  /// - "11-20 of 100" (showing items 11-20 of 100 total)
  /// - "91-100 of 100" (showing items 91-100 of 100 total)
  /// - "0 items" (no items to display)
  String getPageRangeText() {
    if (_totalItems.value == 0) return '0 items';

    final start = ((_currentPage.value - 1) * _pageSize.value) + 1;
    final end = (_currentPage.value * _pageSize.value).clamp(
      1,
      _totalItems.value,
    );

    return '$start-$end of ${_totalItems.value}';
  }
}
