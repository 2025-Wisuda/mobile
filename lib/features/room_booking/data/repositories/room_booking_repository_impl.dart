import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/room_booking/data/data.dart';
import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/features/room_booking/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/models/model.dart';

class RoomBookingRepositoryImpl implements RoomBookingRepository {
  final RoomBookingRemoteDataSource _roomBookingRemoteDataSource;

  RoomBookingRepositoryImpl(this._roomBookingRemoteDataSource);

  @override
  Future<Either<Failure, BaseListResponseEntity<RoomBookingEntity>>>
      fetchRoomBookingList({
    RoomBookingFilterParamsModel? params,
  }) async {
    final remoteResult =
        await _roomBookingRemoteDataSource.fetchRoomBookingList(params: params);

    return remoteResult.fold((failure) => left(failure), (model) {
      final entity = model.toEntity((roomBooking) => roomBooking.toEntity());
      return right(entity);
    });
  }

  @override
  Future<Either<Failure, BaseResponseEntity<RoomBookingEntity>>>
      fetchRoomBookingDetail({
    required String roomBookingId,
  }) async {
    final remoteResult =
        await _roomBookingRemoteDataSource.fetchRoomBookingDetail(
      roomBookingId: roomBookingId,
    );

    return remoteResult.fold((failure) => left(failure), (model) {
      final entity = model.toEntity((roomBooking) => roomBooking.toEntity());
      return right(entity);
    });
  }

  @override
  Future<Either<Failure, BaseResponseEntity<RoomBookingEntity>>>
      createRoomBooking({
    required SaveRoomBookingRequestEntity data,
  }) async {
    final modelData = data.toModel();
    final response = await _roomBookingRemoteDataSource.createRoomBooking(
      data: modelData,
    );

    return response.fold(
      (failure) {
        return left(failure);
      },
      (model) {
        final entity = model.toEntity((roomBooking) => roomBooking.toEntity());
        return right(entity);
      },
    );
  }

  @override
  Future<Either<Failure, BaseResponseEntity<RoomBookingEntity>>>
      partialUpdateRoomBooking({
    required SaveRoomBookingRequestEntity data,
    required String roomBookingId,
  }) async {
    final modelData = data.toModel();
    final response =
        await _roomBookingRemoteDataSource.partialUpdateRoomBooking(
      roomBookingId: roomBookingId,
      data: modelData,
    );

    return response.fold(
      (failure) {
        return left(failure);
      },
      (model) {
        final entity = model.toEntity((roomBooking) => roomBooking.toEntity());
        return right(entity);
      },
    );
  }

  @override
  Future<Either<Failure, void>> deleteRoomBooking(
      {required String roomBookingId}) async {
    final response = await _roomBookingRemoteDataSource.deleteRoomBooking(
      roomBookingId: roomBookingId,
    );

    return response.fold((failure) => left(failure), (model) => right(model));
  }

  @override
  Future<Either<Failure, BaseResponseEntity<RoomBookingEntity>>>
      approveRoomBooking({
    required ApproveRoomBookingEntity data,
    required String roomBookingId,
  }) async {
    final modelData = data.toModel();
    final response = await _roomBookingRemoteDataSource.approveRoomBooking(
      data: modelData,
      roomBookingId: roomBookingId,
    );

    return response.fold((failure) {
      return left(failure);
    }, (model) {
      final entity = model.toEntity((roomBooking) => roomBooking.toEntity());
      return right(entity);
    });
  }

  @override
  Future<Either<Failure, BaseResponseEntity<RoomBookingEntity>>>
      rejectRoomBooking({
    required ApproveRoomBookingEntity data,
    required String roomBookingId,
  }) async {
    final modelData = data.toModel();
    final response = await _roomBookingRemoteDataSource.rejectRoomBooking(
      data: modelData,
      roomBookingId: roomBookingId,
    );

    return response.fold((failure) {
      return left(failure);
    }, (model) {
      final entity = model.toEntity((roomBooking) => roomBooking.toEntity());
      return right(entity);
    });
  }
}
