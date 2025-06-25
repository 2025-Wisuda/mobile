import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/user/presentation/controllers/controller.dart';
import 'package:mobile/shared/enums/group_enum.dart';
import 'package:mobile/shared/helpers/helper.dart';

class CourseWrapperController extends GetxController {
  final isMyCourse = true.obs;
  final isGridView = false.obs;
  final selectedOrdering = RxnString();
  final selectedStartDateFilter = Rxn<DateTime>();
  final selectedEndDateFilter = Rxn<DateTime>();
  final paginationKey = UniqueKey().obs;
  final searchQuery = ''.obs;

  late final ScrollController scrollController;

  ListCourseController get _listCourseC => Get.find<ListCourseController>();
  MyCourseController get _myCourseC => Get.find<MyCourseController>();
  UserProfileController get _profileC => Get.find<UserProfileController>();
  DetailCourseController get _detailCourseC =>
      Get.find<DetailCourseController>();
  CourseFormController get _courseFormC => Get.find<CourseFormController>();

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
    final c = isMyCourse.value ? _myCourseC : _listCourseC;
    if (c.canLoadMore && !c.isLoadingMore) {
      c.fetchList(isLoadMore: true);
    }
  }

  void _fetchInitialData() => _fetchWithFilters();

  void _fetchWithFilters() {
    final filters = <String, dynamic>{};
    if (selectedOrdering.value != null) {
      filters['ordering'] = selectedOrdering.value;
    }
    if (selectedStartDateFilter.value != null) {
      filters['startDate'] =
          DateHelper.formatIsoDate(date: selectedStartDateFilter.value!);
    }
    if (selectedEndDateFilter.value != null) {
      filters['endDate'] =
          DateHelper.formatIsoDate(date: selectedEndDateFilter.value!);
    }

    final c = isMyCourse.value ? _myCourseC : _listCourseC;
    c.fetchList(filters: filters);
  }

  Future<void> handleRefresh() async {
    final c = isMyCourse.value ? _myCourseC : _listCourseC;
    c.resetState;
    await c.refresh();
  }

  void switchToMyCourse() => _switchCourse(true);
  void switchToAllCourse() => _switchCourse(false);

  void _switchCourse(bool toMyCourse) {
    isMyCourse.value = toMyCourse;
    paginationKey.value = UniqueKey();
    _fetchWithFilters();
    update();
  }

  void toggleView() {
    isGridView.value = !isGridView.value;
  }

  void applyFilters({
    String? ordering,
    DateTime? startDate,
    DateTime? endDate,
  }) {
    if (ordering != null) selectedOrdering.value = ordering;
    if (startDate != null) selectedStartDateFilter.value = startDate;
    if (endDate != null) selectedEndDateFilter.value = endDate;

    paginationKey.value = UniqueKey();
    _fetchWithFilters();
  }

  void clearFilters() {
    selectedOrdering.value = null;
    selectedStartDateFilter.value = null;
    selectedEndDateFilter.value = null;
    paginationKey.value = UniqueKey();
    _fetchWithFilters();
  }

  bool get canShowActionsMenu {
    final userGroup = _profileC.userGroup;
    return userGroup == GroupEnum.laboratoryAssistant.displayName.toLowerCase();
  }

  bool get isTeachingAssistant {
    final course = _detailCourseC.entity.value;
    return course?.teachingAssistants?.any(
          (ta) => ta.id == _profileC.userProfile?.id,
        ) ??
        false;
  }

  bool get isCourseOwner {
    final course = _detailCourseC.entity.value;
    return course?.createdBy?.id == _profileC.userProfile?.id;
  }

  String get courseId => _detailCourseC.entity.value?.id ?? '';

  String get courseTitle => _detailCourseC.entity.value?.title ?? '';

  bool canUpdateCourse() {
    return _detailCourseC.entity.value != null;
  }

  void prepareUpdateCourse() {
    if (_detailCourseC.entity.value != null) {
      _courseFormC.loadCourseForUpdate(_detailCourseC.entity.value!);
    }
  }

  void resetFetchState() {
    _listCourseC.resetState();
    _myCourseC.resetState();
  }
}
