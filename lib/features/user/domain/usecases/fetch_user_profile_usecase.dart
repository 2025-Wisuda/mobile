import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import 'package:mobile/core/errors/error.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/features/user/domain/repositories/repository.dart';

@injectable
class FetchUserProfileUsecase {
  final UserRepository userRepository;

  FetchUserProfileUsecase(this.userRepository);

  Future<Either<Failure, UserResponseEntity>> execute() async {
    final localResult = await userRepository.getUserProfile();

    if (localResult.isRight()) {
      final localUser = localResult.getRight().toNullable();
      if (localUser != null) {
        return Right(localUser.toResponseEntity());
      }
    }

    final remoteResult = await userRepository.fetchUserProfile();

    return await remoteResult.fold((failure) => Left(failure), (
      remoteUser,
    ) async {
      await userRepository.clearUserData();
      await userRepository.saveUserProfile(remoteUser.toEntity());
      return Right(remoteUser);
    });
  }
}
