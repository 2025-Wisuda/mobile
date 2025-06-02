import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import 'package:mobile/core/core.dart';
import 'package:mobile/core/errors/error.dart';
import 'package:mobile/features/user/data/data.dart';
import 'package:mobile/shared/helpers/helper.dart';

part 'user_remote_datasource_impl.dart';

abstract class UserRemoteDatasource {
  Future<Either<Failure, ListUserResponseModel>> fetchListUser({
    UserFilterParamsModel? params,
  });
  Future<Either<Failure, UserResponseModel>> fetchUserDetail(String id);
  Future<Either<Failure, UserResponseModel>> fetchUserProfile();
  Future<Either<Failure, UserResponseModel>> updateUserProfile({
    required UserModel data,
  });
}
