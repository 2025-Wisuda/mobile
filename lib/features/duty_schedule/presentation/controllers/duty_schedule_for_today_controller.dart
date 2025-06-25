import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

import 'package:mobile/features/duty_schedule/data/models/model.dart';
import 'package:mobile/features/duty_schedule/domain/entities/entity.dart';
import 'package:mobile/features/duty_schedule/domain/usecases/fetch_duty_schedule_for_today_usecase.dart';
import 'package:mobile/shared/controllers/base_list_controller.dart';
import 'package:mobile/shared/entities/base_list_response_entity.dart';
import 'package:mobile/shared/errors/failure.dart';

class DutyScheduleForTodayController extends BaseListController<
    DutyScheduleEntity, DutyScheduleFilterParamsModel> {
  final FetchDutyScheduleForTodayUsecase _fetchDutyScheduleForTodayUsecase;

  DutyScheduleForTodayController(this._fetchDutyScheduleForTodayUsecase);

  @override
  String get baseStateKey => 'todayDutySchedule';

  RxList<DutyScheduleEntity> get todayDutySchedules => items;

  @override
  Future<Either<Failure, BaseListResponseEntity<DutyScheduleEntity>>>
      executeUsecase(DutyScheduleFilterParamsModel params) async {
    return await _fetchDutyScheduleForTodayUsecase.execute(params: params);
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
    );
  }

  Future<void> fetchDutyScheduleForToday({
    bool isLoadMore = false,
    int? page,
  }) =>
      fetchList(isLoadMore: isLoadMore, page: page);

  Future<void> refreshTodayDutySchedule() => refresh();
}
