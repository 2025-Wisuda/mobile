import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/features/room_booking/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class UpdateRoomBookingUsecase {
  final RoomBookingRepository roomBookingRepository;

  UpdateRoomBookingUsecase(this.roomBookingRepository);

  Future<Either<Failure, BaseResponseEntity<RoomBookingEntity>>> execute({
    required SaveRoomBookingRequestEntity data,
    required String roomBookingId,
  }) {
    return roomBookingRepository.partialUpdateRoomBooking(
      data: data,
      roomBookingId: roomBookingId,
    );
  }
}
