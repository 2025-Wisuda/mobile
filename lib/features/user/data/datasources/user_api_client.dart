import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:mobile/features/user/data/models/model.dart';
import 'package:mobile/shared/models/model.dart';

part 'user_api_client.g.dart';

@RestApi()
abstract class UserApiClient {
  factory UserApiClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _UserApiClient;

  @GET("/users")
  Future<BaseListResponseModel<UserModel>> fetchListUser(
    @Queries() Map<String, dynamic> queries,
  );

  @GET("/users/{id}")
  Future<BaseResponseModel<UserModel>> fetchUserDetail(@Path("id") String id);

  @GET("/users/me")
  Future<BaseResponseModel<UserModel>> fetchUserProfile();

  @PATCH("/users/me")
  Future<BaseResponseModel<UserModel>> updateUserProfile(@Body() FormData data);
}
