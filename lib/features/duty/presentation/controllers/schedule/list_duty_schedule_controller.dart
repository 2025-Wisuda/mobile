import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

import 'package:mobile/features/duty/data/models/schedule/duty_schedule_filter_params_model.dart';
import 'package:mobile/features/duty/domain/entities/entity.dart';
import 'package:mobile/features/duty/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/get_base_list_controller.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/failure.dart';

class ListDutyScheduleController extends GetBaseListController<
    DutyScheduleListEntity, DutyScheduleFilterParamsModel> {
  final FetchListDutyScheduleUsecase _fetchListDutyScheduleUsecase;

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
      days: filters?['days'] as int?,
    );
  }
}
