// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/auth/auth.dart';

class RefreshTokenUseCase {
  final AuthRepository repository;

  RefreshTokenUseCase(this.repository);

  Future<Either<Failure, RefreshTokenResponseEntity>> execute(
    String refreshToken,
  ) {
    return repository.refreshToken(refreshToken);
  }
}
