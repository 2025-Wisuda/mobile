// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

// Project imports:
import 'package:mobile/core/errors/texts/text.dart';
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/auth/data/models/model.dart';
import 'package:mobile/shared/utils/util.dart';

abstract class AuthRemoteDataSource {
  Future<Either<Failure, LoginResponseModel>> login(
    String username,
    String password,
  );
  Future<Either<Failure, RefreshTokenResponseModel>> refreshToken(
    String refreshToken,
  );
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio _dio;

  AuthRemoteDataSourceImpl(this._dio);

  @override
  Future<Either<Failure, LoginResponseModel>> login(
    String username,
    String password,
  ) async {
    final data = {'username': username, 'password': password};
    debugPrint('Login data: $data');
    try {
      final url = BaseUrlUtil.loginUrl;
      final response = await _dio.post(url, data: data);
      if (response.statusCode == 200) {
        return right(LoginResponseModel.fromJson(response.data));
      } else {
        return left(ServerFailure(AuthText.tryLogin(response.statusCode)));
      }
    } on DioException catch (e) {
      return left(ServerFailure(AuthText.catchLogin(e)));
    }
  }

  @override
  Future<Either<Failure, RefreshTokenResponseModel>> refreshToken(
    String refreshToken,
  ) async {
    final data = {'refresh': refreshToken};
    try {
      final url = BaseUrlUtil.refreshTokenUrl;
      final response = await _dio.post(url, data: data);
      if (response.statusCode == 200) {
        return right(RefreshTokenResponseModel.fromJson(response.data));
      } else {
        return left(
          ServerFailure(AuthText.tryRefreshToken(response.statusCode)),
        );
      }
    } on DioException catch (e) {
      return left(ServerFailure(AuthText.catchRefreshToken(e)));
    }
  }
}
