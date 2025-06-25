import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

import 'package:mobile/features/lab_schedule/data/models/model.dart';
import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';
import 'package:mobile/features/lab_schedule/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/base_list_controller.dart';
import 'package:mobile/shared/entities/base_list_response_entity.dart';
import 'package:mobile/shared/errors/failure.dart';

class MyLabScheduleController extends BaseListController<LabScheduleEntity,
    LabScheduleFilterParamsModel> {
  final FetchMyLabScheduleUsecase _fetchMyLabScheduleUsecase;

  MyLabScheduleController(this._fetchMyLabScheduleUsecase) {
    enableSearch();
  }

  @override
  String get baseStateKey => 'myLabSchedule';

  RxList<LabScheduleEntity> get myLabScheduleList => items;

  @override
  Future<Either<Failure, BaseListResponseEntity<LabScheduleEntity>>>
      executeUsecase(LabScheduleFilterParamsModel params) async {
    return await _fetchMyLabScheduleUsecase.execute(params: params);
  }

  @override
  LabScheduleFilterParamsModel createFilterParams({
    required int page,
    required int pageSize,
    String? search,
    Map<String, dynamic>? filters,
  }) {
    return LabScheduleFilterParamsModel(
      page: page,
      pageSize: pageSize,
      search: search,
      date: filters?['date'] as String?,
    );
  }
}
