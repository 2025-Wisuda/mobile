import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/room_booking/data/models/model.dart';
import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

abstract class RoomBookingRepository {
  Future<Either<Failure, BaseListResponseEntity<RoomBookingEntity>>>
      fetchRoomBookingList({
    RoomBookingFilterParamsModel? params,
  });

  Future<Either<Failure, BaseResponseEntity<RoomBookingEntity>>>
      fetchRoomBookingDetail({
    required String roomBookingId,
  });

  Future<Either<Failure, BaseResponseEntity<RoomBookingEntity>>>
      createRoomBooking({
    required SaveRoomBookingRequestEntity data,
  });

  Future<Either<Failure, BaseResponseEntity<RoomBookingEntity>>>
      partialUpdateRoomBooking({
    required SaveRoomBookingRequestEntity data,
    required String roomBookingId,
  });

  Future<Either<Failure, void>> deleteRoomBooking(
      {required String roomBookingId});

  Future<Either<Failure, BaseResponseEntity<RoomBookingEntity>>>
      approveRoomBooking({
    required ApproveRoomBookingEntity data,
    required String roomBookingId,
  });

  Future<Either<Failure, BaseResponseEntity<RoomBookingEntity>>>
      rejectRoomBooking({
    required ApproveRoomBookingEntity data,
    required String roomBookingId,
  });
}
