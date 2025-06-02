import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import 'package:mobile/core/errors/error.dart';
import 'package:mobile/features/user/data/models/model.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/features/user/domain/repositories/repository.dart';

@injectable
class UpdateUserProfileUsecase {
  final UserRepository userRepository;

  UpdateUserProfileUsecase(this.userRepository);

  Future<Either<Failure, UserResponseEntity>> execute({
    required UserModel data,
  }) async {
    final updateResult = await userRepository.updateUserProfile(data: data);

    return await updateResult.fold(
      (failure) async => Left(failure),
      (updatedUser) async {
        final saveResult = await userRepository.saveUserProfile(updatedUser.toEntity());
        if (saveResult.isLeft()) {
          return Left(saveResult.getLeft().toNullable()!);
        }
        return Right(updatedUser);
      },
    );
  }
}
