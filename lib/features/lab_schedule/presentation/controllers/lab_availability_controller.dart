import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';
import 'package:mobile/features/lab_schedule/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/base_list_controller.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class LabAvailabilityFilterParams {
  final String date;

  LabAvailabilityFilterParams({required this.date});
}

class LabAvailabilityController extends BaseListController<
    LabAvailabilityEntity, LabAvailabilityFilterParams> {
  final FetchLabAvailabilityUsecase _fetchLabAvailabilityUsecase;

  LabAvailabilityController(this._fetchLabAvailabilityUsecase);

  @override
  String get baseStateKey => 'fetchLabAvailability';

  RxList<LabAvailabilityEntity> get availabilitySlots => items;

  @override
  Future<Either<Failure, BaseListResponseEntity<LabAvailabilityEntity>>>
      executeUsecase(LabAvailabilityFilterParams params) async {
    return await _fetchLabAvailabilityUsecase.execute(date: params.date);
  }

  @override
  LabAvailabilityFilterParams createFilterParams({
    required int page,
    required int pageSize,
    String? search,
    Map<String, dynamic>? filters,
  }) {
    return LabAvailabilityFilterParams(
      date: filters?['date'] as String? ?? '',
    );
  }

  Future<void> fetchAvailability(String date) async {
    await fetchList(filters: {'date': date});
  }

  Future<void> refreshAvailability(String date) async {
    await fetchList(filters: {'date': date});
  }
}
