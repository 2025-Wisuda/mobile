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

  // Store current filters to maintain them during pagination
  Map<String, dynamic>? _currentFilters;

  MyCourseController(this._fetchMyCourseUsecase) {
    enableSearch();
    initializeControllers(['search']);
  }

  void toggleView() => _isGridView.toggle();

  @override
  String get baseStateKey => 'myCourse';

  RxList<CourseEntity> get myCourseList => items;

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
  Future<void> loadMore() async {
    if (canLoadMore) {
      // Use stored filters during pagination
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

    // Store current filters for pagination
    _currentFilters = filters.isNotEmpty ? filters : null;

    return fetchList(filters: _currentFilters, isLoadMore: isLoadMore);
  }
}
