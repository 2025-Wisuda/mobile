import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/auth/data/data.dart';
import 'package:mobile/features/auth/domain/entities/entity.dart';
import 'package:mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:mobile/shared/errors/error.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;

  AuthRepositoryImpl(this._authRemoteDataSource);
  @override
  Future<Either<Failure, LoginResponseEntity>> login({
    required LoginRequestEntity data,
  }) async {
    final response = await _authRemoteDataSource.login(data: data.toModel());
    return response.map((model) => model.toEntity());
  }

  @override
  Future<Either<Failure, RefreshTokenResponseEntity>> refreshToken(
    String refreshToken,
  ) async {
    final response = await _authRemoteDataSource.refreshToken(refreshToken);
    return response.map((model) => model.toEntity());
  }

  @override
  Future<Either<Failure, void>> changePassword({
    required ChangePasswordRequestEntity data,
  }) async {
    final response = await _authRemoteDataSource.changePassword(
      data: data.toModel(),
    );
    return response.fold((failure) => left(failure), (_) => right(null));
  }

  @override
  Future<Either<Failure, void>> logout({
    required LogoutRequestEntity data,
  }) async {
    final response = await _authRemoteDataSource.logout(data: data.toModel());
    return response.fold((failure) => left(failure), (_) => right(null));
  }
}
