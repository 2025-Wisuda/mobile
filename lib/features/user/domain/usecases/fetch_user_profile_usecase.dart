// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/features/user/domain/repositories/repository.dart';

class FetchUserProfileUsecase {
  final UserRepository userRepository;

  FetchUserProfileUsecase(this.userRepository);

  Future<Either<Failure, UserEntity>> execute() {
    return userRepository.fetchUserProfile();
  }
}
