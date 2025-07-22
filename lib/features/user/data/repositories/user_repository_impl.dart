import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/user/data/datasources/datasource.dart';
import 'package:mobile/features/user/data/models/model.dart';
import 'package:mobile/features/user/domain/entities/entity.dart';
import 'package:mobile/features/user/domain/repositories/repository.dart';
import 'package:mobile/shared/entities/entity.dart';
import 'package:mobile/shared/errors/error.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/helpers/network_helper.dart';
import 'package:mobile/shared/models/model.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDatasource _userRemoteDatasource;
  final UserLocalDatasource _userLocalDatasource;

  UserRepositoryImpl(this._userRemoteDatasource, this._userLocalDatasource);

  String get _noInternetMessage => 'common'.message('noInternet');

  Future<Either<Failure, BaseResponseEntity<UserEntity>>> _getCachedUserOrFail(
    Failure originalFailure,
  ) async {
    final localData = await _userLocalDatasource.getUserProfile();
    return localData.fold(
      (_) => left(originalFailure),
      (cachedUser) => cachedUser != null
          ? right(BaseResponseEntity(data: cachedUser))
          : left(originalFailure),
    );
  }

  Future<void> _cacheUser(UserModel model) async {
    await _userLocalDatasource.saveUserProfile(model.toEntity());
  }

  Future<Either<Failure, BaseResponseEntity<UserEntity>>>
      _getCachedUser() async {
    final localData = await _userLocalDatasource.getUserProfile();
    return localData.fold(
      (_) => left(NoConnectionFailure(_noInternetMessage)),
      (cachedUser) => cachedUser != null
          ? right(BaseResponseEntity(data: cachedUser))
          : left(NoConnectionFailure(_noInternetMessage)),
    );
  }

  @override
  Future<Either<Failure, BaseListResponseEntity<UserEntity>>> fetchListUser({
    UserFilterParamsModel? params,
  }) async {
    final response = await _userRemoteDatasource.fetchListUser(params: params);
    return response.map((model) => model.toEntity((user) => user.toEntity()));
  }

  @override
  Future<Either<Failure, BaseResponseEntity<UserEntity>>> fetchUserDetail(
    String userId,
  ) async {
    final response = await _userRemoteDatasource.fetchUserDetail(userId);
    return response.map((model) => model.toEntity((user) => user.toEntity()));
  }

  @override
  Future<Either<Failure, BaseResponseEntity<UserEntity>>>
      fetchUserProfile() async {
    final hasConnection = await NetworkHelper.hasInternetConnection();

    if (hasConnection) {
      final response = await _userRemoteDatasource.fetchUserProfile();
      return response.fold(
        (failure) async => await _getCachedUserOrFail(failure),
        (model) async {
          await _cacheUser(model.data!);
          return right(model.toEntity((user) => user.toEntity()));
        },
      );
    } else {
      return await _getCachedUser();
    }
  }

  @override
  Future<Either<Failure, BaseResponseEntity<UserEntity>>> updateUserProfile({
    required UserEntity data,
  }) async {
    final hasConnection = await NetworkHelper.hasInternetConnection();

    if (hasConnection) {
      final response =
          await _userRemoteDatasource.updateUserProfile(data: data.toModel());
      return response.fold(
        (failure) async => await _getCachedUserOrFail(failure),
        (model) async {
          await _cacheUser(model.data!);
          return right(model.toEntity((user) => user.toEntity()));
        },
      );
    } else {
      return left(NoConnectionFailure(_noInternetMessage));
    }
  }
}
