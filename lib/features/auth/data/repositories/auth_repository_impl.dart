import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import 'package:mobile/core/core.dart';
import 'package:mobile/features/auth/data/data.dart';
import 'package:mobile/features/auth/domain/entities/entity.dart';
import 'package:mobile/features/auth/domain/repositories/auth_repository.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, LoginResponseEntity>> login({
    required LoginRequestEntity data,
  }) async {
    final response = await remoteDataSource.login(data: data.toModel());
    return response.map((model) => model.toEntity());
  }

  @override
  Future<Either<Failure, RefreshTokenResponseEntity>> refreshToken(
    String refreshToken,
  ) async {
    final response = await remoteDataSource.refreshToken(refreshToken);
    return response.map((model) => model.toEntity());
  }

  @override
  Future<Either<Failure, void>> changePassword({
    required ChangePasswordRequestEntity data,
  }) async {
    final response = await remoteDataSource.changePassword(
      data: data.toModel(),
    );
    return response.fold((failure) => left(failure), (_) => right(null));
  }
}
