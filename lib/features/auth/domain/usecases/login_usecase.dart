import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/auth/auth.dart';
import 'package:mobile/shared/errors/error.dart';

class LoginUsecase {
  final AuthRepository _authRepository;

  LoginUsecase(this._authRepository);

  Future<Either<Failure, LoginResponseEntity>> execute({
    required LoginRequestEntity data,
  }) {
    return _authRepository.login(data: data);
  }
}
