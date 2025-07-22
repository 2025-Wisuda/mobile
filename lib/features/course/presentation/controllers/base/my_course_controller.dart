import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

import 'package:mobile/features/course/data/models/model.dart';
import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/base_list_controller.dart';
import 'package:mobile/shared/entities/base_list_response_entity.dart';
import 'package:mobile/shared/errors/failure.dart';

class MyCourseController
    extends BaseListController<CourseEntity, CourseFilterParamsModel> {
  final FetchMyCourseUsecase _fetchMyCourseUsecase;

  final RxBool _isGridView = true.obs;
  RxBool get isGridView => _isGridView;

  Map<String, dynamic>? _currentFilters;

  MyCourseController(this._fetchMyCourseUsecase) {
    enableSearch();
    initializeControllers(['search']);
  }

  void toggleView() => _isGridView.toggle();

  @override
  String get baseStateKey => 'myCourse';

  RxList<CourseEntity> get myCourseList => items;

  void setCurrentFilters(Map<String, dynamic>? filters) {
    _currentFilters = filters;
  }

  Map<String, dynamic>? get currentFilters => _currentFilters;

  @override
  Future<Either<Failure, BaseListResponseEntity<CourseEntity>>> executeUsecase(
      CourseFilterParamsModel params) async {
    return await _fetchMyCourseUsecase.execute(params: params);
  }

  @override
  CourseFilterParamsModel createFilterParams({
    required int page,
    required int pageSize,
    String? search,
    Map<String, dynamic>? filters,
  }) {
    return CourseFilterParamsModel(
      page: page,
      pageSize: pageSize,
      search: search,
      ordering: filters?['ordering'] as String?,
      startDate: filters?['startDate'] as String?,
      endDate: filters?['endDate'] as String?,
    );
  }

  @override
  Future<void> fetchList({
    bool isLoadMore = false,
    int? page,
    Map<String, dynamic>? filters,
  }) async {
    final mergedFilters = <String, dynamic>{};

    if (_currentFilters != null) {
      mergedFilters.addAll(_currentFilters!);
    }

    if (filters != null) {
      mergedFilters.addAll(filters);
    }

    _currentFilters = mergedFilters.isNotEmpty ? mergedFilters : null;

    await super.fetchList(
      isLoadMore: isLoadMore,
      page: page,
      filters: mergedFilters.isNotEmpty ? mergedFilters : null,
    );
  }

  @override
  Future<void> loadMore() async {
    if (canLoadMore) {
      await fetchList(isLoadMore: true, filters: _currentFilters);
    }
  }

  Future<void> fetchMyCourseList({
    bool isLoadMore = false,
    int? page,
    String? ordering,
    String? startDate,
    String? endDate,
  }) {
    final filters = <String, dynamic>{};
    if (ordering != null) filters['ordering'] = ordering;
    if (startDate != null) filters['startDate'] = startDate;
    if (endDate != null) filters['endDate'] = endDate;

    _currentFilters = filters.isNotEmpty ? filters : null;

    return fetchList(filters: _currentFilters, isLoadMore: isLoadMore);
  }
}
