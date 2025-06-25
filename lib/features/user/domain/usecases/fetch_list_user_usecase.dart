import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/user/data/models/model.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/features/user/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class FetchListUserUsecase {
  final UserRepository _userRepository;

  FetchListUserUsecase(this._userRepository);

  Future<Either<Failure, BaseListResponseEntity<UserEntity>>> execute({
    UserFilterParamsModel? params,
  }) {
    return _userRepository.fetchListUser(params: params);
  }
}
