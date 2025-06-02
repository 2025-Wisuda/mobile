import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import 'package:mobile/core/errors/error.dart';
import 'package:mobile/features/user/data/models/model.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/features/user/domain/repositories/repository.dart';

@injectable
class FetchListUserUsecase {
  final UserRepository userRepository;

  FetchListUserUsecase(this.userRepository);

  Future<Either<Failure, ListUserResponseEntity>> execute({
    UserFilterParamsModel? params,
  }) {
    return userRepository.fetchListUser(params: params);
  }
}
