import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/guest_visit/presentation/controllers/controller.dart';
import 'package:mobile/features/user/presentation/controllers/controller.dart';
import 'package:mobile/shared/enums/group_enum.dart';
import 'package:mobile/shared/helpers/helper.dart';

class GuestVisitWrapperController extends GetxController {
  final searchQuery = ''.obs;
  final selectedDateFilter = Rxn<DateTime>();
  final paginationKey = UniqueKey().obs;

  late final ScrollController scrollController;

  ListGuestVisitController get _listGuestVisitC =>
      Get.find<ListGuestVisitController>();
  DetailGuestVisitController get _detailGuestVisitC =>
      Get.find<DetailGuestVisitController>();
  UserProfileController get _profileC => Get.find<UserProfileController>();

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
    if (_listGuestVisitC.canLoadMore && !_listGuestVisitC.isLoadingMore) {
      _listGuestVisitC.fetchList(isLoadMore: true);
    }
  }

  void _fetchInitialData() => _fetchWithFilters();

  void _fetchWithFilters() {
    final filters = <String, dynamic>{};
    if (selectedDateFilter.value != null) {
      filters['date'] =
          DateHelper.formatIsoDate(date: selectedDateFilter.value!);
    }
    if (searchQuery.value.isNotEmpty) {
      filters['search'] = searchQuery.value;
    }

    _listGuestVisitC.fetchList(filters: filters);
  }

  Future<void> handleRefresh() async {
    _listGuestVisitC.resetState();
    await _listGuestVisitC.refresh();
  }

  void search(String query) {
    searchQuery.value = query;
    paginationKey.value = UniqueKey();
    _fetchWithFilters();
  }

  void applyDateFilter(DateTime? date) {
    selectedDateFilter.value = date;
    paginationKey.value = UniqueKey();
    _fetchWithFilters();
  }

  void clearFilters() {
    searchQuery.value = '';
    selectedDateFilter.value = null;
    paginationKey.value = UniqueKey();
    _fetchWithFilters();
  }

  bool get canShowActionsMenu {
    final userGroup = _profileC.userGroup;
    return userGroup ==
            GroupEnum.laboratoryAssistant.displayName.toLowerCase() ||
        userGroup == GroupEnum.laboratoryTechnician.displayName.toLowerCase();
  }

  bool get canEditGuestVisit {
    final visit = _detailGuestVisitC.entity.value;
    return visit?.canEdit ?? false;
  }

  bool get isOwner {
    final visit = _detailGuestVisitC.entity.value;
    return visit?.createdBy?.id == _profileC.userProfile?.id;
  }

  String get guestVisitId => _detailGuestVisitC.entity.value?.id ?? '';

  String get visitorName => _detailGuestVisitC.entity.value?.nameDisplay ?? '';

  void resetFetchState() {
    _listGuestVisitC.resetState();
  }
}
