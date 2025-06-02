import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import 'package:mobile/core/errors/error.dart';
import 'package:mobile/features/auth/domain/entities/entity.dart';
import 'package:mobile/features/auth/domain/repositories/repository.dart';

@injectable
class ChangePasswordUsecase {
  final AuthRepository authRepository;

  ChangePasswordUsecase(this.authRepository);

  Future<Either<Failure, void>> execute({
    required ChangePasswordRequestEntity data,
  }) {
    return authRepository.changePassword(data: data);
  }
}
