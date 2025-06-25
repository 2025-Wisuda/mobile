import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/features/user/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class FetchUserDetailUsecase {
  final UserRepository _userRepository;

  FetchUserDetailUsecase(this._userRepository);

  Future<Either<Failure, BaseResponseEntity<UserEntity>>> execute(
    String userId,
  ) {
    return _userRepository.fetchUserDetail(userId);
  }
}
