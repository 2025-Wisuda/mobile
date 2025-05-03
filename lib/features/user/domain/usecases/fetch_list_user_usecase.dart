import 'package:dartz/dartz.dart';
import 'package:mobile/core/errors/types/type.dart';
import 'package:mobile/features/user/data/models/user_filter_params_model.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/features/user/domain/repositories/repository.dart';

class FetchListUserUsecase {
  final UserRepository userRepository;

  FetchListUserUsecase(this.userRepository);

  Future<Either<Failure, ListUserEntity>> execute({
    UserFilterParamsModel? params,
  }) {
    return userRepository.fetchListUser(params: params);
  }
}
