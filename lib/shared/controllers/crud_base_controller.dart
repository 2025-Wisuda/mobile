import 'dart:async';

import 'package:get/get.dart';

import 'package:mobile/core/enums/enum.dart';
import 'package:mobile/shared/controllers/base_state_controller.dart';
import 'package:mobile/shared/controllers/mixins/debounce_mixin.dart';
import 'package:mobile/shared/controllers/mixins/form_management_mixin.dart';
import 'package:mobile/shared/controllers/mixins/pagination_mixin.dart';
import 'package:mobile/shared/controllers/mixins/validation_mixin.dart';

/// Comprehensive base controller for full CRUD (Create, Read, Update, Delete) operations.
///
/// This controller provides a complete template for managing entities that require
/// all CRUD operations. It follows the Single Responsibility Principle by focusing
/// solely on CRUD operation patterns and coordination between different mixins.
///
/// **Type Parameters:**
/// - [TEntity]: The main entity type (e.g., Course, User)
// ignore: unintended_html_in_doc_comment
/// - [TListEntity]: The list/collection type (e.g., List<Course>, PaginatedCourses)
/// - [TCreateRequest]: The request model for creating new entities
/// - [TUpdateRequest]: The request model for updating existing entities
/// - [TFilterParams]: The filter parameters for list operations
///
/// **Key Features:**
/// - Separate state tracking for each CRUD operation
/// - Built-in form management with automatic cleanup
/// - Input validation with internationalization support
/// - Debounced operations to prevent rapid successive calls
/// - Pagination support for list operations
/// - Type-safe request/response handling
///
/// **Included Mixins:**
/// - [FormManagementMixin]: Automatic form field registration and management
/// - [ValidationMixin]: Comprehensive validation rules and error handling
/// - [DebounceMixin]: Debounce functionality for all operations
/// - [PaginationMixin]: Complete pagination logic with load more support
///
/// **Usage:**
/// ```dart
/// class CourseController extends CrudBaseController<
///   Course,
///   List<Course>,
///   CreateCourseRequest,
///   UpdateCourseRequest,
///   CourseFilterParams
/// > {
///   @override
///   Future<void> performFetchList({required CourseFilterParams filterParams, bool isLoadMore = false}) async {
///     // Implementation
///   }
///
///   @override
///   Future<void> performCreate({required CreateCourseRequest request}) async {
///     // Implementation
///   }
/// }
/// ```
///
/// **Why Use This?**
/// When you need a controller that handles complete CRUD functionality for an entity.
/// If you only need specific operations, consider using more focused controllers:
/// - [ListBaseController] for read-only lists
/// - [DetailBaseController] for single entity details
/// - [FormBaseController] for form-only operations
abstract class CrudBaseController<
  TEntity,
  TListEntity,
  TCreateRequest,
  TUpdateRequest,
  TFilterParams
>
    extends BaseStateController
    with FormManagementMixin, ValidationMixin, DebounceMixin, PaginationMixin {
  /// Internal storage for the current entity
  final _entity = Rxn<TEntity>();

  /// Internal storage for the entity list/collection
  final _entityList = Rxn<TListEntity>();

  /// Separate state tracking for create operations
  final _createState = Rx<SubmitStateEnum>(SubmitStateEnum.initial);

  /// Separate state tracking for update operations
  final _updateState = Rx<SubmitStateEnum>(SubmitStateEnum.initial);

  /// Separate state tracking for delete operations
  final _deleteState = Rx<SubmitStateEnum>(SubmitStateEnum.initial);

  /// Current entity instance, null if none loaded
  ///
  /// Use this to access the currently loaded entity data.
  TEntity? get entity => _entity.value;

  /// Current entity list/collection, null if none loaded
  ///
  /// Use this to access the currently loaded list of entities.
  TListEntity? get entityList => _entityList.value;

  /// Current state of create operations
  SubmitStateEnum get createState => _createState.value;

  /// Current state of update operations
  SubmitStateEnum get updateState => _updateState.value;

  /// Current state of delete operations
  SubmitStateEnum get deleteState => _deleteState.value;

  /// Returns true if a create operation is currently in progress
  ///
  /// Useful for disabling create buttons and showing loading indicators.
  bool get isCreating => _createState.value == SubmitStateEnum.loading;

  /// Returns true if an update operation is currently in progress
  ///
  /// Useful for disabling update buttons and showing loading indicators.
  bool get isUpdating => _updateState.value == SubmitStateEnum.loading;

  /// Returns true if a delete operation is currently in progress
  ///
  /// Useful for disabling delete buttons and showing loading indicators.
  bool get isDeleting => _deleteState.value == SubmitStateEnum.loading;

  /// Abstract method for fetching a list of entities with optional pagination
  ///
  /// Implement this method to define how your controller fetches entity lists.
  /// The method should handle both initial loads and load-more operations.
  ///
  /// [filterParams] The filter parameters to apply to the list
  /// [isLoadMore] Whether this is a load-more operation for pagination
  Future<void> performFetchList({
    required TFilterParams filterParams,
    bool isLoadMore = false,
  });

  /// Abstract method for fetching a single entity by ID
  ///
  /// Implement this method to define how your controller fetches entity details.
  ///
  /// [id] The unique identifier of the entity to fetch
  Future<void> performFetchDetail({required String id});

  /// Abstract method for creating a new entity
  ///
  /// Implement this method to define how your controller creates new entities.
  ///
  /// [request] The create request containing the new entity data
  Future<void> performCreate({required TCreateRequest request});

  /// Abstract method for updating an existing entity
  ///
  /// Implement this method to define how your controller updates entities.
  ///
  /// [id] The unique identifier of the entity to update
  /// [request] The update request containing the modified entity data
  Future<void> performUpdate({
    required String id,
    required TUpdateRequest request,
  });

  /// Abstract method for deleting an entity
  ///
  /// Implement this method to define how your controller deletes entities.
  ///
  /// [id] The unique identifier of the entity to delete
  Future<void> performDelete({required String id});

  /// Template method for fetching entity lists with debounce and state management
  ///
  /// This method handles all the boilerplate for list operations including:
  /// - Debouncing to prevent rapid successive calls
  /// - State management (loading, success, error)
  /// - Pagination logic for load-more operations
  /// - Error handling and recovery
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
          previousPage(); // Rollback page
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

  /// Template method for fetching entity details with debounce and state management
  ///
  /// This method handles all the boilerplate for detail operations including:
  /// - Debouncing to prevent rapid successive calls
  /// - State management (loading, success, error)
  /// - Error handling and user feedback
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

  /// Template method for creating entities with debounce and state management
  ///
  /// This method handles all the boilerplate for create operations including:
  /// - Debouncing to prevent accidental double submissions
  /// - Separate create state tracking
  /// - Error handling specific to create operations
  ///
  /// [request] The create request containing the new entity data
  /// [debounceDuration] Custom debounce duration, uses default if not provided
  void executeCreate({
    required TCreateRequest request,
    Duration? debounceDuration,
  }) {
    executeAsyncWithDebounce('create', () async {
      _createState.value = SubmitStateEnum.loading;
      try {
        await performCreate(request: request);
        _createState.value = SubmitStateEnum.success;
      } catch (e) {
        _createState.value = SubmitStateEnum.failure;
        setSubmitError(e.toString());
      }
    }, duration: debounceDuration);
  }

  /// Template method for updating entities with debounce and state management
  ///
  /// This method handles all the boilerplate for update operations including:
  /// - Debouncing to prevent accidental double submissions
  /// - Separate update state tracking
  /// - Error handling specific to update operations
  ///
  /// [id] The unique identifier of the entity to update
  /// [request] The update request containing the modified entity data
  /// [debounceDuration] Custom debounce duration, uses default if not provided
  void executeUpdate({
    required String id,
    required TUpdateRequest request,
    Duration? debounceDuration,
  }) {
    executeAsyncWithDebounce('update', () async {
      _updateState.value = SubmitStateEnum.loading;
      try {
        await performUpdate(id: id, request: request);
        _updateState.value = SubmitStateEnum.success;
      } catch (e) {
        _updateState.value = SubmitStateEnum.failure;
        setSubmitError(e.toString());
      }
    }, duration: debounceDuration);
  }

  /// Template method for deleting entities with debounce and state management
  ///
  /// This method handles all the boilerplate for delete operations including:
  /// - Debouncing to prevent accidental double deletions
  /// - Separate delete state tracking
  /// - Error handling specific to delete operations
  ///
  /// [id] The unique identifier of the entity to delete
  /// [debounceDuration] Custom debounce duration, uses default if not provided
  void executeDelete({required String id, Duration? debounceDuration}) {
    executeAsyncWithDebounce('delete', () async {
      _deleteState.value = SubmitStateEnum.loading;
      try {
        await performDelete(id: id);
        _deleteState.value = SubmitStateEnum.success;
      } catch (e) {
        _deleteState.value = SubmitStateEnum.failure;
        setSubmitError(e.toString());
      }
    }, duration: debounceDuration);
  }

  /// Sets the current entity instance
  ///
  /// Use this method to update the currently loaded entity.
  /// This will trigger reactive updates in any widgets observing the entity.
  ///
  /// [entity] The entity instance to set, or null to clear
  void setEntity(TEntity? entity) => _entity.value = entity;

  /// Sets the current entity list/collection
  ///
  /// Use this method to update the currently loaded entity list.
  /// This will trigger reactive updates in any widgets observing the list.
  ///
  /// [entityList] The entity list to set, or null to clear
  void setEntityList(TListEntity? entityList) => _entityList.value = entityList;

  /// Resets all CRUD operation states to their initial values
  ///
  /// This method resets both the base state (fetch/submit) and all
  /// CRUD-specific states (create, update, delete) to initial.
  /// Useful when starting fresh or handling navigation changes.
  void resetCrudStates() {
    resetState();
    _createState.value = SubmitStateEnum.initial;
    _updateState.value = SubmitStateEnum.initial;
    _deleteState.value = SubmitStateEnum.initial;
  }

  /// Clears all data and resets the controller to initial state
  ///
  /// This method performs a complete cleanup including:
  /// - Clearing entity and entity list data
  /// - Clearing all form fields
  /// - Resetting pagination
  /// - Resetting all CRUD states
  ///
  /// Use this when navigating away from a page or when you need
  /// to completely reset the controller state.
  void clearData() {
    _entity.value = null;
    _entityList.value = null;
    clearAllFields();
    resetPagination();
    resetCrudStates();
  }
}
