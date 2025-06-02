import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import 'package:mobile/core/errors/error.dart';
import 'package:mobile/features/auth/auth.dart';

@injectable
class LoginUsecase {
  final AuthRepository repository;

  LoginUsecase(this.repository);

  Future<Either<Failure, LoginResponseEntity>> execute({
    required LoginRequestEntity data,
  }) {
    return repository.login(data: data);
  }
}
