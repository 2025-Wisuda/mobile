part of 'user_local_datasource.dart';

class UserLocalDatasourceImpl implements UserLocalDatasource {
  final UserDatabase _userDatabase;

  UserLocalDatasourceImpl(this._userDatabase);

  @override
  Future<Either<Failure, void>> saveUserProfile(UserEntity user) async {
    try {
      await _userDatabase.saveUserProfile(user);
      return const Right(null);
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity?>> getUserProfile() async {
    try {
      final user = await _userDatabase.getUserProfile();
      return Right(user);
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> clearUserData() async {
    try {
      await _userDatabase.clearUserData();
      return const Right(null);
    } catch (e) {
      return Left(LocalFailure(e.toString()));
    }
  }
}
