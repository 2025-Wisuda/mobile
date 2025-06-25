import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

import 'package:mobile/features/guest_visit/data/models/model.dart';
import 'package:mobile/features/guest_visit/domain/entities/entity.dart';
import 'package:mobile/features/guest_visit/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/base_list_controller.dart';
import 'package:mobile/shared/entities/base_list_response_entity.dart';
import 'package:mobile/shared/errors/failure.dart';

class ListGuestVisitController
    extends BaseListController<GuestVisitEntity, GuestVisitFilterParamsModel> {
  final FetchListGuestVisitUsecase _fetchListGuestVisitUsecase;

  ListGuestVisitController(this._fetchListGuestVisitUsecase) {
    enableSearch();
  }

  @override
  String get baseStateKey => 'guest_visit';

  RxList<GuestVisitEntity> get guestVisitList => items;

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
      ordering: filters?['ordering'] as String?,
      date: filters?['date'] as String?,
      dateFrom: filters?['dateFrom'] as String?,
      dateTo: filters?['dateTo'] as String?,
      name: filters?['name'] as String?,
      purpose: filters?['purpose'] as String?,
    );
  }

  Future<void> fetchGuestVisitList({
    bool isLoadMore = false,
    int? page,
    String? ordering,
    String? date,
    String? dateFrom,
    String? dateTo,
    String? name,
    String? purpose,
  }) {
    final filters = <String, dynamic>{};
    if (ordering != null) filters['ordering'] = ordering;
    if (date != null) filters['date'] = date;
    if (dateFrom != null) filters['dateFrom'] = dateFrom;
    if (dateTo != null) filters['dateTo'] = dateTo;
    if (name != null) filters['name'] = name;
    if (purpose != null) filters['purpose'] = purpose;

    return fetchList(filters: filters, isLoadMore: isLoadMore);
  }
}
