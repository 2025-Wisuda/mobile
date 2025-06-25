import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/features/room_booking/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class ApproveRoomBookingUsecase {
  final RoomBookingRepository roomBookingRepository;

  ApproveRoomBookingUsecase(this.roomBookingRepository);

  Future<Either<Failure, BaseResponseEntity<RoomBookingEntity>>> execute({
    required ApproveRoomBookingEntity data,
    required String roomBookingId,
  }) {
    return roomBookingRepository.approveRoomBooking(
      data: data,
      roomBookingId: roomBookingId,
    );
  }
}
