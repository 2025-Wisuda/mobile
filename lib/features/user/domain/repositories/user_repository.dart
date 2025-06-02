import 'package:fpdart/fpdart.dart';

import 'package:mobile/core/errors/error.dart';
import 'package:mobile/features/user/data/models/model.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';

abstract class UserRepository {
  Future<Either<Failure, ListUserResponseEntity>> fetchListUser({
    UserFilterParamsModel? params,
  });
  Future<Either<Failure, UserResponseEntity>> fetchUserDetail(String userId);
  Future<Either<Failure, UserResponseEntity>> fetchUserProfile();
  Future<Either<Failure, UserResponseEntity>> updateUserProfile({
    required UserModel data,
  });

  Future<Either<Failure, void>> saveUserProfile(UserEntity user);
  Future<Either<Failure, UserEntity?>> getUserProfile();
  Future<Either<Failure, void>> clearUserData();
}
