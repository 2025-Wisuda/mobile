import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/auth/domain/entities/entity.dart';
import 'package:mobile/features/auth/domain/repositories/repository.dart';
import 'package:mobile/shared/errors/error.dart';

class ChangePasswordUsecase {
  final AuthRepository _authRepository;

  ChangePasswordUsecase(this._authRepository);

  Future<Either<Failure, void>> execute({
    required ChangePasswordRequestEntity data,
  }) {
    return _authRepository.changePassword(data: data);
  }
}
