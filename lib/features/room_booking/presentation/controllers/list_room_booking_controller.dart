import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

import 'package:mobile/features/room_booking/data/models/model.dart';
import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/features/room_booking/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/get_base_list_controller.dart';
import 'package:mobile/shared/entities/base_list_response_entity.dart';
import 'package:mobile/shared/errors/failure.dart';

class ListRoomBookingController extends GetBaseListController<RoomBookingEntity,
    RoomBookingFilterParamsModel> {
  final FetchListRoomBookingUsecase _fetchListRoomBookingUsecase;

  ListRoomBookingController(this._fetchListRoomBookingUsecase) {
    hasSearchEnabled.value = true;
  }

  @override
  void onInit() {
    super.onInit();
    initializeControllers(['${baseStateKey}SearchController']);
  }

  @override
  String get baseStateKey => 'roomBooking';

  final selectedStatus = RxnString();

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
      approvalStatus: filters?['approvalStatus'] as String?,
      date: filters?['date'] as String?,
      bookingType: filters?['bookingType'] as String?,
      ordering: filters?['ordering'] as String?,
    );
  }

  void setStatusFilter(String? status) {
    selectedStatus.value = status;
    fetchList(filters: {
      if (status != null && status.isNotEmpty) 'approvalStatus': status,
    });
  }

  @override
  Future<void> clearFilters() async {
    selectedStatus.value = null;
    if (hasSearchEnabled.value) {
      setControllerValue('${baseStateKey}SearchController', '');
    }
    await fetchList();
  }
}
