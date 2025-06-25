import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/features/room_booking/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class CreateRoomBookingUsecase {
  final RoomBookingRepository roomBookingRepository;

  CreateRoomBookingUsecase(this.roomBookingRepository);

  Future<Either<Failure, BaseResponseEntity<RoomBookingEntity>>> execute({
    required SaveRoomBookingRequestEntity data,
  }) {
    return roomBookingRepository.createRoomBooking(data: data);
  }
}
