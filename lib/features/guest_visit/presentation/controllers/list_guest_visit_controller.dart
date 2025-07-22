import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

import 'package:mobile/features/guest_visit/data/data.dart';
import 'package:mobile/features/guest_visit/data/models/model.dart';
import 'package:mobile/features/guest_visit/domain/entities/entity.dart';
import 'package:mobile/features/guest_visit/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/get_base_list_controller.dart';
import 'package:mobile/shared/entities/base_list_response_entity.dart';
import 'package:mobile/shared/errors/failure.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/helper.dart';

class ListGuestVisitController extends GetBaseListController<GuestVisitEntity,
    GuestVisitFilterParamsModel> {
  final FetchListGuestVisitUsecase _fetchListGuestVisitUsecase;

  ListGuestVisitController(this._fetchListGuestVisitUsecase) {
    hasSearchEnabled.value = true;
  }

  @override
  void onInit() {
    super.onInit();
    initializeControllers(['${baseStateKey}SearchController']);
  }

  @override
  String get baseStateKey => 'guestVisit';

  RxList<GuestVisitEntity> get visitList => items;

  final selectedDate = RxnString();

  @override
  Future<Either<Failure, BaseListResponseEntity<GuestVisitEntity>>>
      executeUsecase(GuestVisitFilterParamsModel params) async {
    return await _fetchListGuestVisitUsecase.execute(params: params);
  }

  @override
  GuestVisitFilterParamsModel createFilterParams({
    required int page,
    required int pageSize,
    String? search,
    Map<String, dynamic>? filters,
  }) {
    return GuestVisitFilterParamsModel(
      page: page,
      pageSize: pageSize,
      search: search,
      date: filters?['date'] as String?,
    );
  }

  void setDateFilter(String date) {
    selectedDate.value = date;
    fetchList(filters: {
      if (date.isNotEmpty) 'date': date,
    });
  }

  bool get hasFiltersApplied => selectedDate.value != null;

  String get filtersDescription {
    final parts = <String>[];
    if (selectedDate.value != null) {
      parts.add(
          '${'guestVisit'.label('date')}: ${DateHelper.formatDayMonthYear(date: DateTime.tryParse(selectedDate.value!))}');
    }
    return parts.join(' • ');
  }

  @override
  Future<void> clearFilters() async {
    selectedDate.value = null;
    if (hasSearchEnabled.value) {
      setControllerValue('${baseStateKey}SearchController', '');
    }
    await fetchList();
  }
}
