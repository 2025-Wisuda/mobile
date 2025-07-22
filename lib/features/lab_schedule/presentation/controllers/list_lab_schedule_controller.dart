import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

import 'package:mobile/features/lab_schedule/data/models/model.dart';
import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';
import 'package:mobile/features/lab_schedule/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/get_base_list_controller.dart';
import 'package:mobile/shared/entities/base_list_response_entity.dart';
import 'package:mobile/shared/errors/failure.dart';

class ListLabScheduleController extends GetBaseListController<LabScheduleEntity,
    LabScheduleFilterParamsModel> {
  final FetchListLabScheduleUsecase _fetchListLabScheduleUsecase;

  ListLabScheduleController(this._fetchListLabScheduleUsecase) {
    hasSearchEnabled.value = true;
  }

  @override
  void onInit() {
    super.onInit();
    initializeControllers(['${baseStateKey}SearchController']);
    if (Get.currentRoute.contains('search')) {
      fetchList();
    }
  }

  @override
  String get baseStateKey => 'labSchedule';

  RxList<LabScheduleEntity> get listLabSchedule => items;

  @override
  Future<Either<Failure, BaseListResponseEntity<LabScheduleEntity>>>
      executeUsecase(LabScheduleFilterParamsModel params) async {
    return await _fetchListLabScheduleUsecase.execute(params: params);
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
