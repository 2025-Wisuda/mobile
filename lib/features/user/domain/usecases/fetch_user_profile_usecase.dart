import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/features/user/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class FetchUserProfileUsecase {
  final UserRepository _userRepository;

  FetchUserProfileUsecase(this._userRepository);

  Future<Either<Failure, BaseResponseEntity<UserEntity>>> execute() async {
    return await _userRepository.fetchUserProfile();
  }
}
