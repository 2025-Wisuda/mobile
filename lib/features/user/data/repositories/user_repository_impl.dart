import 'package:dartz/dartz.dart';
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/user/data/datasources/datasource.dart';
import 'package:mobile/features/user/data/models/model.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/features/user/domain/repositories/repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource userRemoteDataSource;

  UserRepositoryImpl(this.userRemoteDataSource);

  @override
  Future<Either<Failure, ListUserEntity>> fetchListUser({
    UserFilterParamsModel? params,
  }) async {
    final response = await userRemoteDataSource.fetchListUser(params: params);
    return response.fold(
      (failure) => left(failure),
      (listUserModel) => right(listUserModel.toEntity()),
    );
  }

  @override
  Future<Either<Failure, UserEntity>> fetchUserDetail(String userId) async {
    final response = await userRemoteDataSource.fetchUserDetail(userId);
    return response.fold(
      (failure) => left(failure),
      (userModel) => right(userModel.toEntity()),
    );
  }

  @override
  Future<Either<Failure, UserEntity>> fetchUserProfile() async {
    final response = await userRemoteDataSource.fetchUserProfile();
    return response.fold(
      (failure) => left(failure),
      (userModel) => right(userModel.toEntity()),
    );
  }

  @override
  Future<Either<Failure, UserEntity>> updateUserProfile(
    UpdateUserProfileRequestEntity data,
  ) async {
    final response = await userRemoteDataSource.updateUserProfile(data);
    return response.fold(
      (failure) => left(failure),
      (userModel) => right(userModel.toEntity()),
    );
  }

  @override
  Future<Either<Failure, UserEntity>> changePassword({
    ChangeUserPasswordRequestEntity? data,
  }) async {
    final response = await userRemoteDataSource.changePassword(data);
    return response.fold(
      (failure) => left(failure),
      (userModel) => right(userModel.toEntity()),
    );
  }
}
