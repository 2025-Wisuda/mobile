import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/room_booking/data/models/model.dart';
import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/features/room_booking/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class FetchListRoomBookingUsecase {
  final RoomBookingRepository roomBookingRepository;

  FetchListRoomBookingUsecase(this.roomBookingRepository);

  Future<Either<Failure, BaseListResponseEntity<RoomBookingEntity>>> execute({
    RoomBookingFilterParamsModel? params,
  }) {
    return roomBookingRepository.fetchRoomBookingList(params: params);
  }
}
