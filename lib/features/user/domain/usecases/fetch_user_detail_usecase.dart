// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/features/user/domain/repositories/repository.dart';

class FetchUserDetailUsecase {
  final UserRepository userRepository;

  FetchUserDetailUsecase(this.userRepository);

  Future<Either<Failure, UserEntity>> execute(String userId) {
    return userRepository.fetchUserDetail(userId);
  }
}
