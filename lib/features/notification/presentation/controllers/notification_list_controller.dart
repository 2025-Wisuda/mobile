import 'package:get/get.dart';
import 'package:mobile/features/notification/data/models/notification_filter_params_model.dart';
import 'package:mobile/features/notification/domain/entities/notification_entity.dart';
import 'package:mobile/features/notification/domain/usecases/fetch_notifications_usecase.dart';
import 'package:mobile/features/notification/domain/usecases/fetch_unread_count_notification_usecase.dart';
import 'package:mobile/features/notification/domain/usecases/mark_all_as_read_notification_usecase.dart';
import 'package:mobile/features/notification/domain/usecases/mark_as_read_notification_usecase.dart';
import 'package:mobile/shared/enums/fetch_state_enum.dart';
import 'package:mobile/shared/enums/submit_state_enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/mixins/get_mixin.dart';

class NotificationListController extends GetxController
    with GetFetchStateMixin {
  final FetchNotificationsUsecase _fetchNotificationsUsecase;
  final FetchUnreadCountNotificationUsecase
      _fetchUnreadCountNotificationUsecase;
  final MarkAsReadNotificationUsecase _markAsReadNotificationUsecase;
  final MarkAllAsReadNotificationUsecase _markAllAsReadNotificationUsecase;

  NotificationListController(
    this._fetchNotificationsUsecase,
    this._fetchUnreadCountNotificationUsecase,
    this._markAsReadNotificationUsecase,
    this._markAllAsReadNotificationUsecase,
  );

  final RxList<NotificationEntity> items = <NotificationEntity>[].obs;
  final RxInt unreadCount = 0.obs;
  final RxBool isLoadingUnreadCount = false.obs;
  final RxString unreadCountError = ''.obs;

  final Rx<SubmitStateEnum> submitState = SubmitStateEnum.initial.obs;
  final RxString submitError = ''.obs;

  // Infinity load variables
  final RxInt currentPage = 1.obs;
  final RxBool hasMoreData = true.obs;
  final RxBool isLoadingMore = false.obs;
  final RxString stateDescription = ''.obs;

  // Filter variables
  final RxString searchQuery = ''.obs;
  final RxString selectedType = ''.obs;
  final RxString selectedReadStatus = ''.obs;
  final RxString selectedOrdering = '-sent_at'.obs;
  final RxBool hasFiltersApplied = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchList();
    fetchUnreadCount();
  }

  String get baseStateKey => 'notificationList';

  String get filtersDescription {
    final filters = <String>[];
    if (searchQuery.value.isNotEmpty) {
      filters.add('${'notification'.message('search')}: ${searchQuery.value}');
    }
    if (selectedType.value.isNotEmpty) {
      filters.add(
          '${'notification'.message('type')}: ${_getTypeLabel(selectedType.value)}');
    }
    if (selectedReadStatus.value.isNotEmpty) {
      filters.add(
          '${'notification'.message('status')}: ${_getStatusLabel(selectedReadStatus.value)}');
    }
    if (selectedOrdering.value != '-sent_at') {
      filters.add(
          '${'notification'.message('ordering')}: ${_getOrderingLabel(selectedOrdering.value)}');
    }
    return filters.join(', ');
  }

  String _getTypeLabel(String type) {
    switch (type) {
      case 'room_booking':
        return 'notification'.message('roomBooking');
      case 'course_session':
        return 'notification'.message('courseSession');
      case 'lab_allocation':
        return 'notification'.message('labAllocation');
      case 'duty_schedule':
        return 'notification'.message('dutySchedule');
      default:
        return type;
    }
  }

  String _getStatusLabel(String status) {
    switch (status) {
      case 'true':
        return 'notification'.message('read');
      case 'false':
        return 'notification'.message('unread');
      default:
        return status;
    }
  }

  String _getOrderingLabel(String ordering) {
    switch (ordering) {
      case '-sent_at':
        return 'notification'.message('newestFirst');
      case 'sent_at':
        return 'notification'.message('oldestFirst');
      default:
        return ordering;
    }
  }

  Future<void> fetchList({
    int page = 1,
    int pageSize = 10,
    String? search,
    Map<String, dynamic>? filters,
    bool isLoadMore = false,
  }) async {
    if (isLoadMore) {
      isLoadingMore.value = true;
    } else {
      fetchStates[baseStateKey] = FetchStateEnum.loading;
      currentPage.value = 1;
      hasMoreData.value = true;
    }

    final params = NotificationFilterParamsModel(
      page: page,
      pageSize: pageSize,
      search: search ?? searchQuery.value,
      type: filters?['type'] as String? ??
          (selectedType.value.isNotEmpty ? selectedType.value : null),
      isRead: filters?['is_read'] as bool? ??
          _parseReadStatus(selectedReadStatus.value),
      ordering: filters?['ordering'] as String? ?? selectedOrdering.value,
    );

    final result = await _fetchNotificationsUsecase.execute(params: params);
    result.fold(
      (failure) {
        if (isLoadMore) {
          isLoadingMore.value = false;
        } else {
          fetchStates[baseStateKey] = FetchStateEnum.failure;
          errorMessages[baseStateKey] = failure.message;
        }
        stateDescription.value = failure.message;
      },
      (response) {
        final data = response.data ?? [];
        final pagination = response.meta?.pagination;

        if (isLoadMore) {
          isLoadingMore.value = false;
          if (data.isNotEmpty) {
            items.addAll(data);
            currentPage.value = (pagination?.currentPage ?? 1) + 1;
            hasMoreData.value = pagination?.next != null;
          } else {
            hasMoreData.value = false;
          }
        } else {
          if (data.isEmpty) {
            fetchStates[baseStateKey] = FetchStateEnum.empty;
          } else {
            fetchStates[baseStateKey] = FetchStateEnum.success;
            items.assignAll(data);
            currentPage.value = (pagination?.currentPage ?? 1) + 1;
            hasMoreData.value = pagination?.next != null;
          }
        }
      },
    );
  }

  bool? _parseReadStatus(String status) {
    switch (status) {
      case 'true':
        return true;
      case 'false':
        return false;
      default:
        return null;
    }
  }

  Future<void> loadMore() async {
    if (!isLoadingMore.value && hasMoreData.value) {
      await fetchList(
        page: currentPage.value,
        isLoadMore: true,
      );
    }
  }

  @override
  Future<void> refresh() async {
    currentPage.value = 1;
    hasMoreData.value = true;
    await fetchList();
  }

  void setSearchFilter(String query) {
    searchQuery.value = query;
    hasFiltersApplied.value = true;
    resetAll();
    fetchList();
  }

  void setTypeFilter(String type) {
    selectedType.value = type;
    hasFiltersApplied.value = true;
    resetAll();
    fetchList();
  }

  void setReadStatusFilter(String status) {
    selectedReadStatus.value = status;
    hasFiltersApplied.value = true;
    resetAll();
    fetchList();
  }

  void setOrderingFilter(String ordering) {
    selectedOrdering.value = ordering;
    hasFiltersApplied.value = true;
    resetAll();
    fetchList();
  }

  void clearFilters() {
    searchQuery.value = '';
    selectedType.value = '';
    selectedReadStatus.value = '';
    selectedOrdering.value = '-sent_at';
    hasFiltersApplied.value = false;
    resetAll();
    fetchList();
  }

  Future<void> markAsRead(String notificationId) async {
    submitState.value = SubmitStateEnum.submitting;
    submitError.value = '';
    final result = await _markAsReadNotificationUsecase.execute(
        notificationId: notificationId);
    result.fold(
      (failure) {
        submitState.value = SubmitStateEnum.failure;
        submitError.value = failure.message;
      },
      (response) {
        submitState.value = SubmitStateEnum.success;
        final index = items.indexWhere((n) => n.id == notificationId);
        if (index != -1 && response.data?.id != null) {
          final updatedNotification = items[index].copyWith(isRead: true);
          items[index] = updatedNotification;
          // Update unread count
          if (unreadCount.value > 0) {
            unreadCount.value--;
          }
        }
      },
    );
  }

  Future<void> markAllAsRead() async {
    submitState.value = SubmitStateEnum.submitting;
    submitError.value = '';
    final result = await _markAllAsReadNotificationUsecase.execute();
    result.fold(
      (failure) {
        submitState.value = SubmitStateEnum.failure;
        submitError.value = failure.message;
      },
      (response) {
        submitState.value = SubmitStateEnum.success;
        if ((response.data?.updatedCount ?? 0) > 0) {
          final updatedNotifications =
              items.map((n) => n.copyWith(isRead: true)).toList();
          items.assignAll(updatedNotifications);
          unreadCount.value = 0;
        }
        // Refresh list and unread count after mark all as read
        refresh();
        fetchUnreadCount();
      },
    );
  }

  Future<void> fetchUnreadCount() async {
    isLoadingUnreadCount.value = true;
    unreadCountError.value = '';
    final result = await _fetchUnreadCountNotificationUsecase.execute();
    result.fold(
      (failure) => unreadCountError.value = failure.message,
      (response) => unreadCount.value = response.data?.unreadCount ?? 0,
    );
    isLoadingUnreadCount.value = false;
    // Trigger GetBuilder rebuild
    update();
  }

  void clearSubmitError() {
    submitError.value = '';
  }

  void clearFetchError() {
    errorMessages.remove(baseStateKey);
  }

  void resetAll() {
    currentPage.value = 1;
    hasMoreData.value = true;
    isLoadingMore.value = false;
    items.clear();
    fetchStates[baseStateKey] = FetchStateEnum.initial;
    errorMessages.remove(baseStateKey);
  }

  FetchStateEnum get fetchState =>
      fetchStates[baseStateKey] ?? FetchStateEnum.initial;
  String get fetchError => errorMessages[baseStateKey] ?? '';
}
