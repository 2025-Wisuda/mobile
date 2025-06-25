import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/room_booking/domain/repositories/repository.dart';
import 'package:mobile/shared/errors/error.dart';

class DeleteRoomBookingUsecase {
  final RoomBookingRepository roomBookingRepository;

  DeleteRoomBookingUsecase(this.roomBookingRepository);

  Future<Either<Failure, void>> execute({
    required String roomBookingId,
  }) {
    return roomBookingRepository.deleteRoomBooking(
        roomBookingId: roomBookingId);
  }
}
