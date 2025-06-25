import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/auth/domain/entities/entity.dart';
import 'package:mobile/features/auth/domain/repositories/repository.dart';
import 'package:mobile/shared/errors/error.dart';

class LogoutUsecase {
  final AuthRepository _authRepository;

  LogoutUsecase(this._authRepository);

  Future<Either<Failure, void>> execute({required LogoutRequestEntity data}) {
    return _authRepository.logout(data: data);
  }
}
