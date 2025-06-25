import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

import 'package:mobile/features/duty_schedule/data/models/duty_schedule_filter_params_model.dart';
import 'package:mobile/features/duty_schedule/domain/entities/entity.dart';
import 'package:mobile/features/duty_schedule/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/base_list_controller.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/failure.dart';

class ListDutyScheduleController extends BaseListController<
    DutyScheduleListEntity, DutyScheduleFilterParamsModel> {
  final FetchListDutyScheduleUsecase _fetchListDutyScheduleUsecase;

  // Store current filters to maintain them during pagination
  Map<String, dynamic>? _currentFilters;

  ListDutyScheduleController(this._fetchListDutyScheduleUsecase);

  @override
  String get baseStateKey => 'dutyScheduleList';

  RxList<DutyScheduleListEntity> get dutyScheduleList => items;

  @override
  Future<Either<Failure, BaseListResponseEntity<DutyScheduleListEntity>>>
      executeUsecase(DutyScheduleFilterParamsModel params) async {
    return await _fetchListDutyScheduleUsecase.execute(params: params);
  }

  @override
  DutyScheduleFilterParamsModel createFilterParams({
    required int page,
    required int pageSize,
    String? search,
    Map<String, dynamic>? filters,
  }) {
    return DutyScheduleFilterParamsModel(
      page: page,
      pageSize: pageSize,
      days: filters?['days'] as String?,
    );
  }

  @override
  Future<void> loadMore() async {
    if (canLoadMore) {
      // Use stored filters during pagination
      await fetchList(isLoadMore: true, filters: _currentFilters);
    }
  }

  Future<void> fetchDutyScheduleList({
    bool isLoadMore = false,
    int? page,
    String? day,
  }) {
    final filters = day != null ? {'days': day} : <String, dynamic>{};

    // Store current filters for pagination
    _currentFilters = filters.isNotEmpty ? filters : null;

    return fetchList(
      isLoadMore: isLoadMore,
      page: page,
      filters: _currentFilters,
    );
  }

  Future<void> refreshDutyScheduleList() => refresh();
}
