import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import 'package:mobile/core/errors/error.dart';
import 'package:mobile/features/auth/auth.dart';

@injectable
class RefreshTokenUsecase {
  final AuthRepository repository;

  RefreshTokenUsecase(this.repository);

  Future<Either<Failure, RefreshTokenResponseEntity>> execute(
    String refreshToken,
  ) {
    return repository.refreshToken(refreshToken);
  }
}
