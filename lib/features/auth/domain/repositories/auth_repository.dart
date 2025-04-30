import 'package:dartz/dartz.dart';
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/auth/domain/entities/entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, LoginResponseEntity>> login(
    String username,
    String password,
  );
  Future<Either<Failure, RefreshTokenResponseEntity>> refreshToken(
    String refreshToken,
  );
}
