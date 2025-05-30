// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/features/user/domain/repositories/repository.dart';

class ChangePasswordUsecase {
  final UserRepository userRepository;

  ChangePasswordUsecase(this.userRepository);

  Future<Either<Failure, UserEntity>> execute(
    ChangeUserPasswordRequestEntity data,
  ) {
    return userRepository.changePassword(data: data);
  }
}
