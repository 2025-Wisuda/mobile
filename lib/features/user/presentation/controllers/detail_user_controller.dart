import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/features/user/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/get_base_detail_controller.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class DetailUserController extends GetBaseDetailController<UserEntity, String> {
  final FetchUserDetailUsecase _fetchUserDetailUsecase;

  DetailUserController(this._fetchUserDetailUsecase);

  @override
  String get baseStateKey => 'userDetail';

  @override
  Future<Either<Failure, BaseResponseEntity<UserEntity>>> executeUsecase(
    String userId,
  ) async {
    return await _fetchUserDetailUsecase.execute(userId);
  }
}
