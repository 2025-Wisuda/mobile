import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/features/room_booking/presentation/controllers/controller.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/helpers/helper.dart';

class RoomBookingWrapperController extends GetxController {
  final selectedBookingType = RxnString();
  final selectedApprovalStatus = RxnString();
  final selectedDate = Rxn<DateTime>();
  final selectedOrdering = RxnString();
  final searchQuery = RxnString();
  final paginationKey = UniqueKey().obs;

  late final ScrollController scrollController;

  ListRoomBookingController get _listRoomBookingC =>
      Get.find<ListRoomBookingController>();

  @override
  void onInit() {
    super.onInit();
    scrollController = ScrollController();
    scrollController.addListener(_onScroll);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _fetchInitialData();
    });
  }

  @override
  void onClose() {
    scrollController.removeListener(_onScroll);
    scrollController.dispose();
    super.onClose();
  }

  void _onScroll() {
    if (scrollController.position.pixels >=
        scrollController.position.maxScrollExtent - 100) {
      _triggerLoadMore();
    }
  }

  void _triggerLoadMore() {
    if (_listRoomBookingC.canLoadMore && !_listRoomBookingC.isLoadingMore) {
      _listRoomBookingC.fetchList(isLoadMore: true);
    }
  }

  void _fetchInitialData() => fetchWithFilters();

  void fetchWithFilters() {
    final filters = <String, dynamic>{};

    if (selectedDate.value != null) {
      filters['date'] = DateHelper.formatIsoDate(date: selectedDate.value!);
    }
    if (selectedBookingType.value != null &&
        selectedBookingType.value!.isNotEmpty) {
      filters['bookingType'] = selectedBookingType.value;
    }
    if (selectedApprovalStatus.value != null &&
        selectedApprovalStatus.value!.isNotEmpty) {
      filters['approvalStatus'] = selectedApprovalStatus.value;
    }
    if (selectedOrdering.value != null && selectedOrdering.value!.isNotEmpty) {
      filters['ordering'] = selectedOrdering.value;
    }

    // Set search query to ListRoomBookingController for API call
    if (searchQuery.value != null && searchQuery.value!.isNotEmpty) {
      if (_listRoomBookingC.hasSearchEnabled) {
        _listRoomBookingC.setControllerValue(
            _listRoomBookingC.searchControllerKey, searchQuery.value!);
      }
    } else {
      // Clear search if no query
      if (_listRoomBookingC.hasSearchEnabled) {
        _listRoomBookingC.setControllerValue(
            _listRoomBookingC.searchControllerKey, '');
      }
    }

    _listRoomBookingC.fetchList(filters: filters);
  }

  Future<void> handleRefresh() async {
    _listRoomBookingC.resetStateOnly();
    fetchWithFilters();
  }

  void applyFilters({
    DateTime? date,
    String? bookingType,
    String? approvalStatus,
    String? ordering,
    String? search,
  }) {
    if (date != null) selectedDate.value = date;
    if (bookingType != null) selectedBookingType.value = bookingType;
    if (approvalStatus != null) selectedApprovalStatus.value = approvalStatus;
    if (ordering != null) selectedOrdering.value = ordering;
    if (search != null) searchQuery.value = search;

    paginationKey.value = UniqueKey();
    fetchWithFilters();
  }

  void updateSearch(String query) {
    searchQuery.value = query.trim().isEmpty ? null : query.trim();

    // Also update the BaseListController's search text controller
    final searchText = query.trim();
    if (_listRoomBookingC.hasSearchEnabled) {
      _listRoomBookingC.setControllerValue(
          _listRoomBookingC.searchControllerKey, searchText);
    }

    paginationKey.value = UniqueKey();
    fetchWithFilters();
  }

  void clearFilters() {
    selectedDate.value = null;
    selectedBookingType.value = null;
    selectedApprovalStatus.value = null;
    selectedOrdering.value = null;
    searchQuery.value = null;
    paginationKey.value = UniqueKey();
    fetchWithFilters();
  }

  void setStatusFilter(ApprovalStatusEnum status) {
    selectedApprovalStatus.value = status.value;
    paginationKey.value = UniqueKey();
    fetchWithFilters();
  }

  bool get hasActiveFilters {
    return selectedDate.value != null ||
        (selectedBookingType.value?.isNotEmpty == true) ||
        (selectedApprovalStatus.value?.isNotEmpty == true) ||
        (selectedOrdering.value?.isNotEmpty == true) ||
        (searchQuery.value?.isNotEmpty == true);
  }
}
