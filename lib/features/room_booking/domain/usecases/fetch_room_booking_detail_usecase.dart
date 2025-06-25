import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/features/room_booking/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class FetchRoomBookingDetailUsecase {
  final RoomBookingRepository roomBookingRepository;

  FetchRoomBookingDetailUsecase(this.roomBookingRepository);

  Future<Either<Failure, BaseResponseEntity<RoomBookingEntity>>> execute({
    required String roomBookingId,
  }) {
    return roomBookingRepository.fetchRoomBookingDetail(
        roomBookingId: roomBookingId);
  }
}
