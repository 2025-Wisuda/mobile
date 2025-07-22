import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/enums/fetch_state_enum.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/mixins/get_mixin.dart';

/// GetX-only Base List Controller: fully reactive, easy to use, and auto-cleanup.
///
/// All main state variables use Rx/obs, with no classic getter/setter and no private (_underscore) fields.
/// You can access, update, and observe state directly from your controller or UI (Obx, ever, etc).
///
/// Example usage:
/// ```dart
/// class UserListController extends GetBaseListController<UserEntity, UserFilterParamsModel> {
///   final FetchUsersUsecase fetchUsersUsecase;
///   UserListController({required this.fetchUsersUsecase});
///   @override
///   String get baseStateKey => 'userList';
///   @override
///   Future<Either<Failure, BaseListResponseEntity<UserEntity>>> executeUsecase(UserFilterParamsModel params) async {
///     return await fetchUsersUsecase.execute(params: params);
///   }
///   @override
///   UserFilterParamsModel createFilterParams({required int page, required int pageSize, String? search, Map<String, dynamic>? filters}) {
///     return UserFilterParamsModel(
///       page: page,
///       pageSize: pageSize,
///       search: search,
///       // ...other fields
///     );
///   }
/// }
/// // In UI:
/// Obx(() => controller.fetchStates['userList'] == FetchStateEnum.loading
///   ? CircularProgressIndicator()
///   : ListView.builder(
///       itemCount: controller.items.length,
///       itemBuilder: (context, index) => ListTile(
///         title: Text(controller.items[index].toString()),
///       ),
///     ),
/// )
/// ```
abstract class GetBaseListController<T, P> extends GetxController
    with GetFetchStateMixin, GetFormMixin, GetDebounceMixin {
  /// Holds the main list of items reactively.
  final RxList<T> items = <T>[].obs;

  /// Holds the current page for pagination.
  final RxInt currentPage = 1.obs;

  /// Holds the total number of pages for pagination.
  final RxInt totalPages = 1.obs;

  /// Holds the total number of items.
  final RxInt totalItems = 0.obs;

  /// Holds the page size for pagination.
  final RxInt pageSize = 10.obs;

  /// Indicates whether search functionality is enabled.
  final RxBool hasSearchEnabled = false.obs;

  /// Indicates whether currently loading more data.
  final RxBool isLoadingMore = false.obs;

  /// Stores current filters for persistence across pagination.
  Map<String, dynamic>? _currentFilters;

  /// Executes the list API call with the given parameters.
  ///
  /// [params] - The parameters for the list fetch operation.
  // ignore: unintended_html_in_doc_comment
  /// Returns an Either containing Failure or BaseListResponseEntity<T>.
  Future<Either<Failure, BaseListResponseEntity<T>>> executeUsecase(P params);

  /// Creates filter parameters from input values.
  ///
  /// [page] - The current page.
  /// [pageSize] - The page size.
  /// [search] - The search query (optional).
  /// [filters] - Additional filters (optional).
  /// Returns a parameter object for the API call.
  P createFilterParams(
      {required int page,
      required int pageSize,
      String? search,
      Map<String, dynamic>? filters});

  /// The unique state key for this controller (used for state tracking).
  String get baseStateKey;

  /// Main method to fetch list data.
  ///
  /// [filters] - Optional map of filters to apply.
  /// Sets state to loading, calls executeUsecase, and updates state based on result.
  /// Usage:
  /// ```dart
  /// await controller.fetchList();
  /// ```
  Future<void> fetchList({Map<String, dynamic>? filters}) async {
    fetchStates[baseStateKey] = FetchStateEnum.loading;

    // Store filters for persistence across pagination
    if (filters != null && filters.isNotEmpty) {
      _currentFilters = Map<String, dynamic>.from(filters);
    } else {
      _currentFilters = null;
    }

    // Get search value from controller or filters
    String? searchQuery;
    if (hasSearchEnabled.value) {
      searchQuery = getControllerValue('${baseStateKey}SearchController');
      // If search is empty but filters contain search, use filters value
      if ((searchQuery.isEmpty || searchQuery == '') &&
          filters != null &&
          filters.containsKey('search')) {
        searchQuery = filters['search'] as String?;
        // Also update the controller value for consistency
        if (searchQuery != null && searchQuery.isNotEmpty) {
          setControllerValue('${baseStateKey}SearchController', searchQuery);
        }
      }
    }

    final params = createFilterParams(
      page: currentPage.value,
      pageSize: pageSize.value,
      search: searchQuery,
      filters: filters,
    );
    final result = await executeUsecase(params);
    result.fold(
      (failure) {
        fetchStates[baseStateKey] = FetchStateEnum.failure;
        errorMessages[baseStateKey] = failure.message;
        onErrorOccurred(failure);
      },
      (response) {
        if (response.data == null || response.data!.isEmpty) {
          fetchStates[baseStateKey] = FetchStateEnum.empty;
          items.clear();
        } else {
          fetchStates[baseStateKey] = FetchStateEnum.success;
          items.assignAll(response.data!);
          totalItems.value = response.meta?.pagination?.totalItems ?? 0;
          totalPages.value = response.meta?.pagination?.totalPages ?? 1;
          onDataReceived(response.data!);
        }
      },
    );
  }

  /// Loads the next page if available.
  ///
  /// [filters] - Optional map of filters to apply.
  /// Uses stored filters if no filters provided for persistence.
  Future<void> loadMore({Map<String, dynamic>? filters}) async {
    if (currentPage.value < totalPages.value) {
      isLoadingMore.value = true;
      currentPage.value++;

      // Use provided filters or stored filters for persistence
      final effectiveFilters = filters ?? _currentFilters;

      final params = createFilterParams(
        page: currentPage.value,
        pageSize: pageSize.value,
        search: hasSearchEnabled.value
            ? getControllerValue('${baseStateKey}SearchController')
            : null,
        filters: effectiveFilters,
      );
      final result = await executeUsecase(params);
      result.fold(
        (failure) {
          isLoadingMore.value = false;
          onErrorOccurred(failure);
        },
        (response) {
          isLoadingMore.value = false;
          if (response.data != null && response.data!.isNotEmpty) {
            items.addAll(response.data!);
            totalItems.value = response.meta?.pagination?.totalItems ?? 0;
            totalPages.value = response.meta?.pagination?.totalPages ?? 1;
            onDataReceived(response.data!);
          }
        },
      );
    }
  }

  /// Pull-to-refresh: resets to first page and fetches data.
  @override
  Future<void> refresh() async {
    currentPage.value = 1;
    await fetchList(filters: _currentFilters);
  }

  /// Clears all data and resets states to initial.
  void clearAll() {
    items.clear();
    currentPage.value = 1;
    totalPages.value = 1;
    totalItems.value = 0;
    isLoadingMore.value = false;
    _currentFilters = null;
    fetchStates[baseStateKey] = FetchStateEnum.initial;
    errorMessages.remove(baseStateKey);
    cleanForm();
  }

  /// Clear all filters and fetch default list (override in subclass for custom filter fields)
  Future<void> clearFilters() async {
    // Reset search query if enabled
    if (hasSearchEnabled.value) {
      setControllerValue('${baseStateKey}SearchController', '');
    }
    // Clear stored filters
    _currentFilters = null;
    // Reset page to 1
    currentPage.value = 1;
    // Fetch list without filters
    await fetchList();
  }

  /// Returns true if the controller is currently loading data.
  bool get isLoading => fetchStates[baseStateKey] == FetchStateEnum.loading;

  /// Returns true if the last fetch resulted in empty data.
  bool get isEmpty => fetchStates[baseStateKey] == FetchStateEnum.empty;

  /// Returns true if the last fetch resulted in an error.
  bool get hasError => fetchStates[baseStateKey] == FetchStateEnum.failure;

  /// Returns true if more pages can be loaded.
  bool get canLoadMore => currentPage.value < totalPages.value;

  /// Returns the current fetch state enum value.
  FetchStateEnum get state =>
      fetchStates[baseStateKey] ?? FetchStateEnum.initial;

  /// Returns the current state description or error message if any.
  String get stateDescription =>
      errorMessages[baseStateKey] ?? state.description;

  /// Returns current stored filters.
  Map<String, dynamic>? get currentFilters => _currentFilters;

  /// Sets current filters and fetches data.
  Future<void> setFilters(Map<String, dynamic> filters) async {
    currentPage.value = 1; // Reset page ke 1 setiap filter berubah
    await fetchList(filters: filters);
  }

  /// Clears current filters and fetches default data.
  Future<void> clearCurrentFilters() async {
    await clearFilters();
  }

  /// Hook: called when data is received (override in subclass if needed).
  void onDataReceived(List<T> data) {}

  /// Hook: called when an error occurs (override in subclass if needed).
  void onErrorOccurred(Failure failure) {}

  @override
  void onClose() {
    clearAll();
    super.onClose();
  }
}
