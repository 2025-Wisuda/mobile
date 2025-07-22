import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:mobile/features/notification/data/models/fcm_device_model.dart';
import 'package:mobile/shared/models/base_list_response_model.dart';
import 'package:mobile/shared/models/base_response_model.dart';

part 'fcm_api_client.g.dart';

@RestApi()
abstract class FcmApiClient {
  factory FcmApiClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _FcmApiClient;

  @POST("/fcm/devices/register-device")
  Future<BaseResponseModel<RegisterDeviceResponseModel>> fetchRegisterDevice(
    @Body() Map<String, dynamic> data,
  );

  @GET("/fcm/devices/my-devices")
  Future<BaseListResponseModel<ListFcmDeviceModel>> fetchMyDevices();

  @POST("/fcm/devices/unregister-device")
  Future<BaseResponseModel<FcmDeviceModel>> fetchUnregisterDevice(
    @Body() Map<String, dynamic> data,
  );
}
