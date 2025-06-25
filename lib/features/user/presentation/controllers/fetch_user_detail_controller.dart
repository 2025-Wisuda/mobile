import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/features/user/domain/usecases/usecase.dart';
import 'package:mobile/shared/controllers/base_detail_controller.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';

class FetchUserDetailController
    extends BaseDetailController<UserEntity, String> {
  final FetchUserDetailUsecase _fetchUserDetailUsecase;
  FetchUserDetailController(this._fetchUserDetailUsecase);
  @override
  String get baseStateKey => 'userDetail';
  @override
  Future<Either<Failure, BaseResponseEntity<UserEntity>>> executeUsecase(
    String userId,
  ) async {
    return await _fetchUserDetailUsecase.execute(userId);
  }

  UserEntity? get userDetail => entity.value;
  Future<void> fetchUserDetail(String userId) async {
    await fetchDetail(userId);
  }

  Future<void> refreshUserDetail(String userId) async {
    await refreshDetail(userId);
  }
}
