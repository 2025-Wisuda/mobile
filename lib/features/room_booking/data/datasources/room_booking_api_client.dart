import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:mobile/features/room_booking/data/models/model.dart';
import 'package:mobile/shared/models/model.dart';

part 'room_booking_api_client.g.dart';

@RestApi()
abstract class RoomBookingApiClient {
  factory RoomBookingApiClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _RoomBookingApiClient;

  @GET("/room-bookings")
  Future<BaseListResponseModel<RoomBookingModel>> fetchRoomBookingList(
    @Queries() Map<String, dynamic> queries,
  );

  @GET("/room-bookings/{id}")
  Future<BaseResponseModel<RoomBookingModel>> fetchRoomBookingDetail(
    @Path("id") String id,
  );

  @POST("/room-bookings")
  @MultiPart()
  Future<BaseResponseModel<RoomBookingModel>> createRoomBooking(
      @Body() FormData data);

  @PATCH("/room-bookings/{id}")
  @MultiPart()
  Future<BaseResponseModel<RoomBookingModel>> updateRoomBooking(
    @Path("id") String id,
    @Body() FormData data,
  );

  @DELETE("/room-bookings/{id}")
  Future<void> deleteRoomBooking(@Path("id") String id);

  @POST("/room-bookings/{id}/approve")
  Future<BaseResponseModel<RoomBookingModel>> approveRoomBooking(
    @Path("id") String id,
    @Body() Map<String, dynamic> data,
  );

  @POST("/room-bookings/{id}/reject")
  Future<BaseResponseModel<RoomBookingModel>> rejectRoomBooking(
    @Path("id") String id,
    @Body() Map<String, dynamic> data,
  );
}
