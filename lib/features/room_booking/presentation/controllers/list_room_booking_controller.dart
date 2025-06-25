import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

import 'package:mobile/features/room_booking/data/models/model.dart';
import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/features/room_booking/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/base_list_controller.dart';
import 'package:mobile/shared/entities/base_list_response_entity.dart';
import 'package:mobile/shared/errors/failure.dart';

class ListRoomBookingController extends BaseListController<RoomBookingEntity,
    RoomBookingFilterParamsModel> {
  final FetchListRoomBookingUsecase _fetchListRoomBookingUsecase;

  final RxBool _isGridView = false.obs;
  bool get isGridView => _isGridView.value;

  // Store current filters to maintain them during pagination
  Map<String, dynamic>? _currentFilters;

  ListRoomBookingController(this._fetchListRoomBookingUsecase) {
    enableSearch();
  }

  @override
  String get baseStateKey => 'roomBooking';

  RxList<RoomBookingEntity> get roomBookingList => items;

  void toggleView() {
    _isGridView.value = !_isGridView.value;
  }

  @override
  Future<Either<Failure, BaseListResponseEntity<RoomBookingEntity>>>
      executeUsecase(RoomBookingFilterParamsModel params) async {
    return await _fetchListRoomBookingUsecase.execute(params: params);
  }

  @override
  RoomBookingFilterParamsModel createFilterParams({
    required int page,
    required int pageSize,
    String? search,
    Map<String, dynamic>? filters,
  }) {
    return RoomBookingFilterParamsModel(
      page: page,
      pageSize: pageSize,
      search: search,
      date: filters?['date'] as String?,
      bookingType: filters?['bookingType'] as String?,
      approvalStatus: filters?['approvalStatus'] as String?,
      ordering: filters?['ordering'] as String?,
    );
  }

  @override
  Future<void> fetchList({
    bool isLoadMore = false,
    int? page,
    Map<String, dynamic>? filters,
  }) async {
    // Always store current filters for pagination
    _currentFilters = filters;

    return super.fetchList(
      isLoadMore: isLoadMore,
      page: page,
      filters: filters,
    );
  }

  @override
  Future<void> loadMore() async {
    if (canLoadMore) {
      // Use stored filters during pagination
      await fetchList(isLoadMore: true, filters: _currentFilters);
    }
  }

  Future<void> fetchRoomBookingList({
    bool isLoadMore = false,
    int? page,
    String? ordering,
  }) {
    final filters = <String, dynamic>{};
    if (ordering != null) filters['ordering'] = ordering;

    // Store current filters for pagination
    _currentFilters = filters.isNotEmpty ? filters : null;

    return fetchList(filters: _currentFilters, isLoadMore: isLoadMore);
  }
}
