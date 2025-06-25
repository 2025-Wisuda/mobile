import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:mobile/features/guest_visit/data/models/model.dart';
import 'package:mobile/shared/models/model.dart';

part 'guest_visit_api_client.g.dart';

@RestApi()
abstract class GuestVisitApiClient {
  factory GuestVisitApiClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _GuestVisitApiClient;

  @GET('/guest_visits/')
  Future<BaseListResponseModel<GuestVisitModel>> fetchListGuestVisit(
    @Queries() Map<String, dynamic> queries,
  );

  @GET('/guest_visits/{id}/')
  Future<BaseResponseModel<GuestVisitModel>> fetchGuestVisitDetail(
    @Path('id') String id,
  );

  @POST('/guest_visits/')
  Future<BaseResponseModel<GuestVisitModel>> createGuestVisit(
    @Body() SaveGuestVisitRequestModel data,
  );

  @PATCH('/guest_visits/{id}/')
  Future<BaseResponseModel<GuestVisitModel>> updateGuestVisit(
    @Path('id') String id,
    @Body() SaveGuestVisitRequestModel data,
  );

  @DELETE('/guest_visits/{id}/')
  Future<void> deleteGuestVisit(
    @Path('id') String id,
  );
}
