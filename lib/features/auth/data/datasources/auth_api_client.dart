import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:mobile/features/auth/data/models/model.dart';

part 'auth_api_client.g.dart';

@RestApi()
abstract class AuthApiClient {
  factory AuthApiClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _AuthApiClient;

  @POST("/auth/login")
  Future<LoginResponseModel> login(@Body() Map<String, dynamic> data);

  @POST("/auth/refresh-token")
  Future<RefreshTokenResponseModel> refreshToken(
    @Body() Map<String, dynamic> data,
  );

  @POST("/auth/change-password")
  Future<void> changePassword(@Body() Map<String, dynamic> data);

  @POST("/api/v1/auth/logout")
  Future<void> logout(@Body() Map<String, dynamic> data);
}
