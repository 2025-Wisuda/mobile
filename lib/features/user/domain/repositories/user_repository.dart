import 'package:dartz/dartz.dart';
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/user/data/models/user_filter_params_model.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';

abstract class UserRepository {
  Future<Either<Failure, ListUserEntity>> fetchListUser({
    UserFilterParamsModel? params,
  });
  Future<Either<Failure, UserEntity>> fetchUserDetail(String userId);
  Future<Either<Failure, UserEntity>> fetchUserProfile();
  Future<Either<Failure, UserEntity>> updateUserProfile(
    UpdateUserProfileRequestEntity data,
  );
  Future<Either<Failure, UserEntity>> changePassword({
    ChangeUserPasswordRequestEntity data,
  });
}
