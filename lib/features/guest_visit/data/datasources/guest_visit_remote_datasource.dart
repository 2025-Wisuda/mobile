import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/guest_visit/data/models/model.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/models/model.dart';
import 'guest_visit_api_client.dart';

part 'guest_visit_remote_datasource_impl.dart';

abstract class GuestVisitRemoteDataSource {
  Future<Either<Failure, BaseListResponseModel<GuestVisitModel>>>
      fetchListGuestVisit({
    GuestVisitFilterParamsModel? params,
  });

  Future<Either<Failure, BaseResponseModel<GuestVisitModel>>>
      fetchGuestVisitDetail({
    required String id,
  });

  Future<Either<Failure, BaseResponseModel<GuestVisitModel>>> createGuestVisit({
    required SaveGuestVisitRequestModel data,
  });

  Future<Either<Failure, BaseResponseModel<GuestVisitModel>>> updateGuestVisit({
    required String id,
    required SaveGuestVisitRequestModel data,
  });

  Future<Either<Failure, void>> deleteGuestVisit({
    required String id,
  });
}
