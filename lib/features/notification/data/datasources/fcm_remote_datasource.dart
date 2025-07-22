import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/notification/data/models/fcm_device_model.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/helpers/helper.dart';

import 'package:mobile/features/notification/notification.dart'
    show FcmApiClient;
import 'package:mobile/shared/models/model.dart';

part 'fcm_remote_datasource_impl.dart';

abstract class FcmRemoteDataSource {
  Future<Either<Failure, BaseResponseModel<RegisterDeviceResponseModel>>>
      registerDevice({
    required String registrationToken,
    String? deviceType,
    String? deviceName,
  });

  Future<Either<Failure, BaseListResponseModel<ListFcmDeviceModel>>>
      fetchFcmDevices();

  Future<Either<Failure, BaseResponseModel<FcmDeviceModel>>> unregisterDevice({
    required String registrationToken,
  });
}
