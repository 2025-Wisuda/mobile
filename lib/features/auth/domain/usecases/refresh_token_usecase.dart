import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/auth/auth.dart';
import 'package:mobile/shared/errors/error.dart';

class RefreshTokenUsecase {
  final AuthRepository _authRepository;

  RefreshTokenUsecase(this._authRepository);

  Future<Either<Failure, RefreshTokenResponseEntity>> execute(
    String refreshToken,
  ) {
    return _authRepository.refreshToken(refreshToken);
  }
}
