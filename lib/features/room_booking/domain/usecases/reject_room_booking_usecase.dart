import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/features/room_booking/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class RejectRoomBookingUsecase {
  final RoomBookingRepository roomBookingRepository;

  RejectRoomBookingUsecase(this.roomBookingRepository);

  Future<Either<Failure, BaseResponseEntity<RoomBookingEntity>>> execute({
    required ApproveRoomBookingEntity data,
    required String roomBookingId,
  }) {
    return roomBookingRepository.rejectRoomBooking(
      data: data,
      roomBookingId: roomBookingId,
    );
  }
}
