import 'package:dartz/dartz.dart';
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/features/user/domain/repositories/repository.dart';

class UpdateUserProfileUsecase {
  final UserRepository userRepository;

  UpdateUserProfileUsecase(this.userRepository);

  Future<Either<Failure, UserEntity>> execute(
    UpdateUserProfileRequestEntity data,
  ) {
    return userRepository.updateUserProfile(data);
  }
}
