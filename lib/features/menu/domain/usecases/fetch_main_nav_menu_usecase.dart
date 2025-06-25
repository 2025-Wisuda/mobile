import 'dart:ui';

import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/menu/data/models/menu_model.dart';
import 'package:mobile/features/menu/domain/repositories/repository.dart';
import 'package:mobile/shared/errors/error.dart';

class FetchMainNavMenuUsecase {
  final NavRepository navRepository;

  FetchMainNavMenuUsecase(this.navRepository);

  Future<Either<Failure, List<MenuModel>>> execute(
      {VoidCallback? onTap}) async {
    try {
      final result = navRepository.fetchMainNavMenuData(onTap: onTap);
      return Right(result);
    } catch (error) {
      return Left(GenericFailure(error.toString()));
    }
  }
}
