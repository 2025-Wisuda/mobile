import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/shared/databases/user_database.dart';
import 'package:mobile/shared/errors/error.dart';

part 'user_local_datasource_impl.dart';

abstract class UserLocalDatasource {
  Future<Either<Failure, void>> saveUserProfile(UserEntity user);
  Future<Either<Failure, UserEntity?>> getUserProfile();
  Future<Either<Failure, void>> clearUserData();
}
