import 'package:get/get.dart';

import 'package:mobile/shared/controllers/base_state_controller.dart';
import 'package:mobile/shared/controllers/mixins/debounce_mixin.dart';

/// Specialized base controller for single entity detail operations.
///
/// This controller follows the Single Responsibility Principle by focusing
/// exclusively on fetching and managing single entity details. It's designed
/// for scenarios where you only need to display detailed information about
/// a specific entity without list operations or CRUD functionality.
///
/// **Type Parameters:**
/// - [TEntity]: The entity type (e.g., Course, User, Product)
///
/// **Key Features:**
/// - Reactive single entity data management
/// - Debounced detail fetching to prevent rapid successive calls
/// - State management for loading, success, and error states
/// - Automatic error handling with user feedback
/// - Memory-efficient single entity storage
///
/// **Included Mixins:**
/// - [DebounceMixin]: Debounce functionality for detail operations
///
/// **Usage:**
/// ```dart
/// class CourseDetailController extends DetailBaseController<Course> {
///   @override
///   Future<void> performFetchDetail({required String id}) async {
///     final course = await courseService.getCourseById(id);
///     setEntity(course);
///     setSuccess();
///   }
/// }
///
/// // In your widget
/// final controller = Get.find<CourseDetailController>();
/// controller.executeFetchDetail(id: '123');
///
/// // Observe the entity
/// Obx(() {
///   if (controller.isLoading) return LoadingWidget();
///   if (controller.isError) return ErrorWidget(controller.errorMessage);
///   if (controller.entity == null) return EmptyWidget();
///   return CourseDetailWidget(course: controller.entity!);
/// });
/// ```
///
/// **When to Use:**
/// - Detail/profile screens
/// - View-only entity pages
/// - Single entity information display
/// - Any scenario where you only need to fetch and display one entity
///
/// **When NOT to Use:**
/// - If you need list operations (use [ListBaseController])
/// - If you need CRUD functionality (use [CrudBaseController])
/// - If you need form handling (use [FormBaseController])
abstract class DetailBaseController<TEntity> extends BaseStateController
    with DebounceMixin {
  /// Internal storage for the entity
  final _entity = Rxn<TEntity>();

  /// Current entity instance, null if none loaded
  ///
  /// Use this to access the currently loaded entity data.
  /// This is reactive and will trigger UI updates when changed.
  TEntity? get entity => _entity.value;

  /// Abstract method for fetching entity details by ID
  ///
  /// Implement this method to define how your controller fetches entity details.
  ///
  /// **Implementation Guidelines:**
  /// - Fetch the entity from your data source (API, database, etc.)
  /// - Call setEntity() with the fetched data
  /// - Call setSuccess() on successful completion
  /// - Let exceptions bubble up for automatic error handling
  ///
  /// **Example:**
  /// ```dart
  /// @override
  /// Future<void> performFetchDetail({required String id}) async {
  ///   final entity = await apiService.getEntityById(id);
  ///   setEntity(entity);
  ///   setSuccess();
  /// }
  /// ```
  ///
  /// [id] The unique identifier of the entity to fetch
  Future<void> performFetchDetail({required String id});

  /// Template method for executing detail fetch with debounce and state management
  ///
  /// This method handles all the boilerplate for detail operations including:
  /// - Debouncing to prevent rapid successive calls with the same ID
  /// - State management (loading, success, error)
  /// - Error handling with user-friendly messages
  /// - Automatic loading state management
  ///
  /// **Usage:**
  /// ```dart
  /// // Basic usage
  /// executeFetchDetail(id: 'entity-123');
  ///
  /// // With custom debounce duration
  /// executeFetchDetail(
  ///   id: 'entity-123',
  ///   debounceDuration: Duration(milliseconds: 300),
  /// );
  /// ```
  ///
  /// [id] The unique identifier of the entity to fetch
  /// [debounceDuration] Custom debounce duration, uses default if not provided
  void executeFetchDetail({required String id, Duration? debounceDuration}) {
    executeAsyncWithDebounce('fetchDetail', () async {
      setLoading();
      try {
        await performFetchDetail(id: id);
      } catch (e) {
        setError(e.toString());
      }
    }, duration: debounceDuration);
  }

  /// Sets the current entity instance
  ///
  /// Use this method to update the currently loaded entity.
  /// This will trigger reactive updates in any widgets observing the entity.
  ///
  /// **Usage:**
  /// ```dart
  /// // Set entity after successful fetch
  /// setEntity(fetchedEntity);
  ///
  /// // Clear entity
  /// setEntity(null);
  /// ```
  ///
  /// [entity] The entity instance to set, or null to clear
  void setEntity(TEntity? entity) => _entity.value = entity;

  /// Clears the entity data and resets state
  ///
  /// This method performs a cleanup including:
  /// - Clearing the entity data
  /// - Resetting fetch state to initial
  ///
  /// Use this when navigating away from a detail page or
  /// when you need to completely reset the controller state.
  void clearEntity() {
    _entity.value = null;
    resetState();
  }
}
