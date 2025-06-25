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
  final String noInternet = 'common'.message('noInternet');

  Future<Either<Failure, BaseResponseEntity<UserEntity>>> _handleCacheFallback(
    Failure originalFailure,
  ) async {
    final localData = await _userLocalDatasource.getUserProfile();
    return localData.fold((localFailure) => left(originalFailure), (
      cachedUser,
    ) {
      if (cachedUser != null) {
        return right(BaseResponseEntity(data: cachedUser));
      } else {
        return left(originalFailure);
      }
    });
  }

  Future<void> _saveToCache(UserModel model) async {
    await _userLocalDatasource.saveUserProfile(model.toEntity());
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
        (failure) async {
          return await _handleCacheFallback(failure);
        },
        (model) async {
          await _saveToCache(model.data!);
          return right(model.toEntity((user) => user.toEntity()));
        },
      );
    } else {
      final localData = await _userLocalDatasource.getUserProfile();
      return localData.fold(
        (failure) => left(NoConnectionFailure(noInternet)),
        (cachedUser) {
          if (cachedUser != null) {
            return right(BaseResponseEntity(data: cachedUser));
          } else {
            return left(NoConnectionFailure(noInternet));
          }
        },
      );
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
        (failure) async {
          return await _handleCacheFallback(failure);
        },
        (model) async {
          await _saveToCache(model.data!);
          return right(model.toEntity((user) => user.toEntity()));
        },
      );
    } else {
      return left(NoConnectionFailure(noInternet));
    }
  }
}
