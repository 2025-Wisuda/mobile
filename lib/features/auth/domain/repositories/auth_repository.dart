import 'package:fpdart/fpdart.dart';

import 'package:mobile/core/errors/error.dart';
import 'package:mobile/features/auth/domain/entities/entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, LoginResponseEntity>> login({
    required LoginRequestEntity data,
  });
  Future<Either<Failure, RefreshTokenResponseEntity>> refreshToken(
    String refreshToken,
  );

  Future<Either<Failure, void>> changePassword({
    required ChangePasswordRequestEntity data,
  });
}
