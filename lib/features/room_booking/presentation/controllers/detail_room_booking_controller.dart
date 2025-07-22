import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/features/room_booking/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/controller.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class DetailRoomBookingController
    extends GetBaseDetailController<RoomBookingEntity, String> {
  final FetchRoomBookingDetailUsecase _fetchRoomBookingDetailUsecase;

  DetailRoomBookingController(
    this._fetchRoomBookingDetailUsecase,
  );

  @override
  String get baseStateKey => 'RoomBookingDetail';

  @override
  Future<Either<Failure, BaseResponseEntity<RoomBookingEntity>>> executeUsecase(
    String roomBookingId,
  ) async {
    return await _fetchRoomBookingDetailUsecase.execute(
        roomBookingId: roomBookingId);
  }
}
