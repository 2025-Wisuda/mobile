import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/features/user/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class UpdateUserProfileUsecase {
  final UserRepository _userRepository;

  UpdateUserProfileUsecase(this._userRepository);

  Future<Either<Failure, BaseResponseEntity<UserEntity>>> execute({
    required UserEntity data,
  }) async {
    return await _userRepository.updateUserProfile(data: data);
  }
}
