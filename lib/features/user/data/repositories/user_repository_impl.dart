import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/core/errors/failure.dart';
import 'package:mobile/features/user/data/datasources/datasource.dart';
import 'package:mobile/features/user/data/models/model.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/features/user/domain/repositories/repository.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final UserRemoteDatasource remoteDataSource;
  final UserLocalDatasource localDataSource;

  UserRepositoryImpl(this.remoteDataSource, this.localDataSource);

  @override
  Future<Either<Failure, ListUserResponseEntity>> fetchListUser({
    UserFilterParamsModel? params,
  }) async {
    final response = await remoteDataSource.fetchListUser(params: params);
    return response.map((model) => model.toEntity());
  }

  @override
  Future<Either<Failure, UserResponseEntity>> fetchUserDetail(
    String userId,
  ) async {
    final response = await remoteDataSource.fetchUserDetail(userId);
    return response.map((model) => model.toEntity());
  }

  @override
  Future<Either<Failure, UserResponseEntity>> fetchUserProfile() async {
    final response = await remoteDataSource.fetchUserProfile();
    return response.map((model) => model.toEntity());
  }

  @override
  Future<Either<Failure, UserResponseEntity>> updateUserProfile({
    required UserModel data,
  }) async {
    final response = await remoteDataSource.updateUserProfile(data: data);
    return response.map((model) => model.toEntity());
  }

  @override
  Future<Either<Failure, void>> saveUserProfile(UserEntity user) async {
    return await localDataSource.saveUserProfile(user);
  }

  @override
  Future<Either<Failure, UserEntity?>> getUserProfile() async {
    return await localDataSource.getUserProfile();
  }

  @override
  Future<Either<Failure, void>> clearUserData() async {
    return await localDataSource.clearUserData();
  }
}
