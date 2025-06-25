import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/room_booking/data/data.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/models/model.dart';

part 'room_booking_remote_datasource_impl.dart';

abstract class RoomBookingRemoteDataSource {
  Future<Either<Failure, BaseListResponseModel<RoomBookingModel>>>
      fetchRoomBookingList({
    RoomBookingFilterParamsModel? params,
  });

  Future<Either<Failure, BaseResponseModel<RoomBookingModel>>>
      fetchRoomBookingDetail({
    required String roomBookingId,
  });

  Future<Either<Failure, BaseResponseModel<RoomBookingModel>>>
      createRoomBooking({
    required SaveRoomBookingRequestModel data,
  });

  Future<Either<Failure, BaseResponseModel<RoomBookingModel>>>
      partialUpdateRoomBooking({
    required SaveRoomBookingRequestModel data,
    required String roomBookingId,
  });

  Future<Either<Failure, void>> deleteRoomBooking(
      {required String roomBookingId});

  Future<Either<Failure, BaseResponseModel<RoomBookingModel>>>
      approveRoomBooking({
    required ApproveRoomBookingModel data,
    required String roomBookingId,
  });

  Future<Either<Failure, BaseResponseModel<RoomBookingModel>>>
      rejectRoomBooking({
    required ApproveRoomBookingModel data,
    required String roomBookingId,
  });
}
