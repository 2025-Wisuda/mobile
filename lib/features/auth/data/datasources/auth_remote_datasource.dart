import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mobile/core/errors/texts/text.dart';
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/auth/data/models/model.dart';
import 'package:mobile/shared/utils/util.dart';

abstract class AuthRemoteDataSource {
  Future<Either<Failure, LoginResponseModel>> login(
      String username, String password);
  Future<Either<Failure, RefreshTokenResponseModel>> refreshToken(
      String refreshToken);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio _dio;

  AuthRemoteDataSourceImpl(this._dio);

  @override
  Future<Either<Failure, LoginResponseModel>> login(
      String username, String password) async {
    final data = {
      'username': username,
      'password': password,
    };

    try {
      LoggerUtil.logInfo('Login request data: ${LoggerUtil.prettyJson(data)}');
      final response = await _dio.post(BaseUrlUtil.loginUrl, data: data);
      LoggerUtil.logInfo('Login response status: ${response.statusCode}');
      LoggerUtil.logInfo('Login response data: ${LoggerUtil.prettyJson(response.data)}');
      if (response.statusCode == 200) {
        return right(
          LoginResponseModel.fromJson(response.data),
        );
      } else {
        return left(
          ServerFailure(
            AuthText.tryLogin(response.statusCode),
          ),
        );
      }
    } on DioException catch (e) {
      LoggerUtil.logError('Login error: ${e.toString()}');
      return left(
        ServerFailure(
          AuthText.catchLogin(e),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, RefreshTokenResponseModel>> refreshToken(
      String refreshToken) async {
    final data = {
      'refresh': refreshToken,
    };

    try {
      LoggerUtil.logInfo('Refresh token request data: ${LoggerUtil.prettyJson(data)}');
      final response = await _dio.post(BaseUrlUtil.refreshTokenUrl, data: data);
      LoggerUtil.logInfo('Refresh token response status: ${response.statusCode}');
      LoggerUtil.logInfo('Refresh token response data: ${LoggerUtil.prettyJson(response.data)}');
      if (response.statusCode == 200) {
        return right(
          RefreshTokenResponseModel.fromJson(response.data),
        );
      } else {
        return left(
          ServerFailure(
            AuthText.tryRefreshToken(response.statusCode),
          ),
        );
      }
    } on DioException catch (e) {
      LoggerUtil.logError('Refresh token error: ${e.toString()}');
      return left(
        ServerFailure(
          AuthText.catchRefreshToken(e),
        ),
      );
    }
  }
}
