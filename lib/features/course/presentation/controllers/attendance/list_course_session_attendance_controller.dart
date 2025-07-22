import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

import 'package:mobile/features/course/data/models/model.dart';
import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/controller.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class ListCourseSessionAttendanceController extends GetBaseListController<
    CourseSessionAttendanceEntity, CourseSessionAttendanceFilterParamsModel> {
  final FetchListCourseSessionAttendancesUsecase
      _fetchListCourseSessionAttendancesUsecase;

  final RxString selectedStatus = ''.obs;
  final RxBool selectedManualOverride = false.obs;
  final RxString courseId = ''.obs;
  final RxString sessionId = ''.obs;

  Map<String, dynamic>? _currentFilters;

  ListCourseSessionAttendanceController(
    this._fetchListCourseSessionAttendancesUsecase,
  ) {
    hasSearchEnabled.value = true;
  }

  @override
  void onInit() {
    super.onInit();
    initializeControllers(['${baseStateKey}SearchController']);
  }

  @override
  String get baseStateKey => 'courseSessionAttendance';

  RxList<CourseSessionAttendanceEntity> get attendanceList => items;

  @override
  Future<Either<Failure, BaseListResponseEntity<CourseSessionAttendanceEntity>>>
      executeUsecase(CourseSessionAttendanceFilterParamsModel params) async {
    return await _fetchListCourseSessionAttendancesUsecase.execute(
      courseId: courseId.value,
      sessionId: sessionId.value,
      params: params,
    );
  }

  @override
  CourseSessionAttendanceFilterParamsModel createFilterParams({
    required int page,
    required int pageSize,
    String? search,
    Map<String, dynamic>? filters,
  }) {
    return CourseSessionAttendanceFilterParamsModel(
      search: search,
      status: filters?['status'] as String?,
      manualAttendanceOverride: filters?['manual_attendance_override'] as bool?,
    );
  }

  @override
  Future<void> fetchList({Map<String, dynamic>? filters}) async {
    final mergedFilters = <String, dynamic>{};
    if (_currentFilters != null) {
      mergedFilters.addAll(_currentFilters!);
    }
    if (filters != null) {
      mergedFilters.addAll(filters);
    }
    _currentFilters = mergedFilters.isNotEmpty ? mergedFilters : null;
    await super.fetchList(
      filters: mergedFilters.isNotEmpty ? mergedFilters : null,
    );
  }

  @override
  Future<void> loadMore({Map<String, dynamic>? filters}) async {
    if (canLoadMore) {
      await fetchList(filters: _currentFilters);
    }
  }

  void setStatusFilter(String status) {
    selectedStatus.value = status;
    final filters = <String, dynamic>{};
    if (status.isNotEmpty) filters['status'] = status;
    if (selectedManualOverride.value) {
      filters['manual_attendance_override'] = selectedManualOverride.value;
    }
    _currentFilters = filters.isNotEmpty ? filters : null;
    fetchList(filters: _currentFilters);
  }

  void setManualOverrideFilter(bool manualOverride) {
    selectedManualOverride.value = manualOverride;
    final filters = <String, dynamic>{};
    if (selectedStatus.value.isNotEmpty) {
      filters['status'] = selectedStatus.value;
    }
    if (manualOverride) filters['manual_attendance_override'] = manualOverride;
    _currentFilters = filters.isNotEmpty ? filters : null;
    fetchList(filters: _currentFilters);
  }

  void setCourseId(String id) {
    courseId.value = id;
  }

  void setSessionId(String id) {
    sessionId.value = id;
  }

  bool get hasFiltersApplied =>
      selectedStatus.value.isNotEmpty || selectedManualOverride.value;

  String get filtersDescription {
    final parts = <String>[];
    if (selectedStatus.value.isNotEmpty) {
      parts.add('Status: ${selectedStatus.value}');
    }
    if (selectedManualOverride.value) parts.add('Manual Override: Yes');
    return parts.join(' • ');
  }

  @override
  Future<void> clearFilters() async {
    selectedStatus.value = '';
    selectedManualOverride.value = false;
    _currentFilters = null;
    await super.clearFilters();
  }
}
