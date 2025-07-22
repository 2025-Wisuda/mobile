import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/room_booking/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/controller.dart';
import 'package:mobile/shared/errors/error.dart';

class DeleteRoomBookingController
    extends GetBaseDeleteController<String, void> {
  final DeleteRoomBookingUsecase _deleteRoomBookingUsecase;

  DeleteRoomBookingController(this._deleteRoomBookingUsecase);

  @override
  String get baseStateKey => 'deleteRoomBooking';

  @override
  Future<Either<Failure, void>> executeUsecase(String roomBookingId) async {
    return await _deleteRoomBookingUsecase.execute(
        roomBookingId: roomBookingId);
  }
}
