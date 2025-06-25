part of 'room_booking_remote_datasource.dart';

class RoomBookingRemoteDataSourceImpl implements RoomBookingRemoteDataSource {
  final RoomBookingApiClient _roomBookingApiClient;
  final Connectivity connectivity;
  final Dio dio;

  RoomBookingRemoteDataSourceImpl(
      this._roomBookingApiClient, this.connectivity, this.dio);

  @override
  Future<Either<Failure, BaseListResponseModel<RoomBookingModel>>>
      fetchRoomBookingList({
    RoomBookingFilterParamsModel? params,
  }) async {
    try {
      final queryParams = params?.toQueryParameters() ?? {};
      final response =
          await _roomBookingApiClient.fetchRoomBookingList(queryParams);
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(e,
              feature: 'roomBooking', action: 'fetchRoomBookingList'),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseResponseModel<RoomBookingModel>>>
      fetchRoomBookingDetail({
    required String roomBookingId,
  }) async {
    try {
      final response =
          await _roomBookingApiClient.fetchRoomBookingDetail(roomBookingId);
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(e,
              feature: 'roomBooking', action: 'fetchRoomBookingDetail'),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseResponseModel<RoomBookingModel>>>
      createRoomBooking({
    required SaveRoomBookingRequestModel data,
  }) async {
    try {
      final formData = FormData();

      if (data.bookingType != null && data.bookingType!.isNotEmpty) {
        formData.fields.add(MapEntry('booking_type', data.bookingType!));
      }
      if (data.purpose != null && data.purpose!.isNotEmpty) {
        formData.fields.add(MapEntry('purpose', data.purpose!));
      }
      if (data.date != null && data.date!.isNotEmpty) {
        formData.fields.add(MapEntry('date', data.date!));
      }
      if (data.startTime != null && data.startTime!.isNotEmpty) {
        formData.fields.add(MapEntry('start_time', data.startTime!));
      }
      if (data.endTime != null && data.endTime!.isNotEmpty) {
        formData.fields.add(MapEntry('end_time', data.endTime!));
      }

      if (data.seminarType != null && data.seminarType!.isNotEmpty) {
        formData.fields.add(MapEntry('seminar_type', data.seminarType!));
      }
      if (data.researchTitle != null && data.researchTitle!.isNotEmpty) {
        formData.fields.add(MapEntry('research_title', data.researchTitle!));
      }
      if (data.supervisorMain != null && data.supervisorMain!.isNotEmpty) {
        formData.fields.add(MapEntry('supervisor_main', data.supervisorMain!));
      }
      if (data.supervisorSecondary != null &&
          data.supervisorSecondary!.isNotEmpty) {
        formData.fields
            .add(MapEntry('supervisor_secondary', data.supervisorSecondary!));
      }
      if (data.examiner != null && data.examiner!.isNotEmpty) {
        formData.fields.add(MapEntry('examiner', data.examiner!));
      }

      if (data.documentProof?.isNotEmpty == true) {
        await FormDataHelper.addFileToFormData(
          formData: formData,
          filePath: data.documentProof,
          fieldName: 'document_proof',
        );
      }

      final response = await _roomBookingApiClient.createRoomBooking(formData);
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(e,
              feature: 'roomBooking', action: 'createRoomBooking'),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseResponseModel<RoomBookingModel>>>
      partialUpdateRoomBooking({
    required SaveRoomBookingRequestModel data,
    required String roomBookingId,
  }) async {
    try {
      final formData = FormData();

      if (data.bookingType != null && data.bookingType!.isNotEmpty) {
        formData.fields.add(MapEntry('booking_type', data.bookingType!));
      }
      if (data.purpose != null && data.purpose!.isNotEmpty) {
        formData.fields.add(MapEntry('purpose', data.purpose!));
      }
      if (data.date != null && data.date!.isNotEmpty) {
        formData.fields.add(MapEntry('date', data.date!));
      }
      if (data.startTime != null && data.startTime!.isNotEmpty) {
        formData.fields.add(MapEntry('start_time', data.startTime!));
      }
      if (data.endTime != null && data.endTime!.isNotEmpty) {
        formData.fields.add(MapEntry('end_time', data.endTime!));
      }

      if (data.seminarType != null && data.seminarType!.isNotEmpty) {
        formData.fields.add(MapEntry('seminar_type', data.seminarType!));
      }
      if (data.researchTitle != null && data.researchTitle!.isNotEmpty) {
        formData.fields.add(MapEntry('research_title', data.researchTitle!));
      }
      if (data.supervisorMain != null && data.supervisorMain!.isNotEmpty) {
        formData.fields.add(MapEntry('supervisor_main', data.supervisorMain!));
      }
      if (data.supervisorSecondary != null &&
          data.supervisorSecondary!.isNotEmpty) {
        formData.fields
            .add(MapEntry('supervisor_secondary', data.supervisorSecondary!));
      }
      if (data.examiner != null && data.examiner!.isNotEmpty) {
        formData.fields.add(MapEntry('examiner', data.examiner!));
      }

      if (data.documentProof?.isNotEmpty == true) {
        await FormDataHelper.addFileToFormData(
          formData: formData,
          filePath: data.documentProof,
          fieldName: 'document_proof',
        );
      }

      final response = await _roomBookingApiClient.updateRoomBooking(
          roomBookingId, formData);
      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(e,
              feature: 'roomBooking', action: 'updateRoomBooking'),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, void>> deleteRoomBooking(
      {required String roomBookingId}) async {
    try {
      await _roomBookingApiClient.deleteRoomBooking(roomBookingId);
      return right(null);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(e,
              feature: 'roomBooking', action: 'deleteRoomBooking'),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseResponseModel<RoomBookingModel>>>
      approveRoomBooking({
    required ApproveRoomBookingModel data,
    required String roomBookingId,
  }) async {
    try {
      final response = await _roomBookingApiClient.approveRoomBooking(
          roomBookingId, data.toJson());

      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(e,
              feature: 'roomBooking', action: 'approveRoomBooking'),
        ),
      );
    } catch (e) {
      return left(
        ServerFailure(
          'Unexpected error: $e',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, BaseResponseModel<RoomBookingModel>>>
      rejectRoomBooking({
    required ApproveRoomBookingModel data,
    required String roomBookingId,
  }) async {
    try {
      final response = await _roomBookingApiClient.rejectRoomBooking(
          roomBookingId, data.toJson());

      return right(response);
    } on DioException catch (e) {
      return left(
        ServerFailure(
          TextHelper.error(e,
              feature: 'roomBooking', action: 'rejectRoomBooking'),
        ),
      );
    } catch (e) {
      return left(
        ServerFailure(
          'Unexpected error: $e',
        ),
      );
    }
  }
}
