import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:mobile/features/user/data/models/model.dart';

part 'user_api_client.g.dart';

@RestApi()
abstract class UserApiClient {
  factory UserApiClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _UserApiClient;

  @GET("/users")
  Future<ListUserResponseModel> fetchListUser(
    @Queries() Map<String, dynamic> queries,
  );

  @GET("/users/{id}")
  Future<UserResponseModel> fetchUserDetail(@Path("id") String id);

  @GET("/users/me")
  Future<UserResponseModel> fetchUserProfile();

  @PATCH("/users/me")
  Future<UserResponseModel> updateUserProfile(@Body() FormData data);
}
