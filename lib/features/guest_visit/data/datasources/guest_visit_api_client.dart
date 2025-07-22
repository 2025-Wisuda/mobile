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

  @GET('/guest-visits')
  Future<BaseListResponseModel<GuestVisitModel>> fetchListGuestVisit(
    @Queries() Map<String, dynamic> queries,
  );

  @GET('/guest-visits/{id}')
  Future<BaseResponseModel<GuestVisitModel>> fetchGuestVisitDetail(
    @Path('id') String id,
  );

  @POST('/guest-visits')
  Future<BaseResponseModel<GuestVisitModel>> createGuestVisit(
    @Body() Map<String, dynamic> data,
  );

  @PATCH('/guest-visits/{id}')
  Future<BaseResponseModel<GuestVisitModel>> updateGuestVisit(
    @Path('id') String id,
    @Body() Map<String, dynamic> data,
  );

  @DELETE('/guest-visits/{id}')
  Future<void> deleteGuestVisit(
    @Path('id') String id,
  );
}
