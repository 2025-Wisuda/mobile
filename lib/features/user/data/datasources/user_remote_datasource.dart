import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/user/data/data.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/models/model.dart';

part 'user_remote_datasource_impl.dart';

abstract class UserRemoteDatasource {
  Future<Either<Failure, BaseListResponseModel<UserModel>>> fetchListUser({
    UserFilterParamsModel? params,
  });
  Future<Either<Failure, BaseResponseModel<UserModel>>> fetchUserDetail(
    String userId,
  );
  Future<Either<Failure, BaseResponseModel<UserModel>>> fetchUserProfile();
  Future<Either<Failure, BaseResponseModel<UserModel>>> updateUserProfile({
    required UserModel data,
  });
}
