import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import 'package:mobile/core/errors/error.dart';
import 'package:mobile/features/auth/data/data.dart';
import 'package:mobile/shared/helpers/helper.dart';

part 'auth_remote_datasource_impl.dart';

abstract class AuthRemoteDataSource {
  Future<Either<Failure, LoginResponseModel>> login({
    required LoginRequestModel data,
  });
  Future<Either<Failure, RefreshTokenResponseModel>> refreshToken(
    String refreshToken,
  );

  Future<Either<Failure, void>> changePassword({
    required ChangePasswordRequestModel data,
  });
}
