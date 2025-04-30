import 'package:dartz/dartz.dart';
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/auth/data/datasources/datasource.dart';
import 'package:mobile/features/auth/data/models/model.dart';
import 'package:mobile/features/auth/domain/domain.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.remoteDataSource);
  @override
  Future<Either<Failure, LoginResponseEntity>> login(
    String username,
    String password,
  ) async {
    final response = await remoteDataSource.login(username, password);
    return response.fold(
      (failure) => left(failure),
      (loginResponseModel) => right(loginResponseModel.toEntity()),
    );
  }

  @override
  Future<Either<Failure, RefreshTokenResponseEntity>> refreshToken(
    String refreshToken,
  ) async {
    final response = await remoteDataSource.refreshToken(refreshToken);
    return response.fold(
      (failure) => left(failure),
      (refreshTokenResponseModel) =>
          right(refreshTokenResponseModel.toEntity()),
    );
  }
}
