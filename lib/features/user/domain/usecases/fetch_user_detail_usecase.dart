import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import 'package:mobile/core/errors/error.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/features/user/domain/repositories/repository.dart';

@injectable
class FetchUserDetailUsecase {
  final UserRepository userRepository;

  FetchUserDetailUsecase(this.userRepository);

  Future<Either<Failure, UserResponseEntity>> execute(String userId) {
    return userRepository.fetchUserDetail(userId);
  }
}
