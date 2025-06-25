import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/user/data/models/model.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

abstract class UserRepository {
  Future<Either<Failure, BaseListResponseEntity<UserEntity>>> fetchListUser({
    UserFilterParamsModel? params,
  });
  Future<Either<Failure, BaseResponseEntity<UserEntity>>> fetchUserDetail(
    String userId,
  );
  Future<Either<Failure, BaseResponseEntity<UserEntity>>> fetchUserProfile();
  Future<Either<Failure, BaseResponseEntity<UserEntity>>> updateUserProfile({
    required UserEntity data,
  });
}
