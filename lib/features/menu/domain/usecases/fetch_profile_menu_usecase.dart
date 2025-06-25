import 'dart:ui';

import 'package:fpdart/fpdart.dart';

import 'package:mobile/features/menu/data/data.dart';
import 'package:mobile/features/menu/domain/repositories/repository.dart';
import 'package:mobile/shared/errors/error.dart';

class FetchProfileMenuUsecase {
  final MenuRepository menuRepository;

  FetchProfileMenuUsecase(this.menuRepository);

  Future<Either<Failure, List<MenuSectionModel>>> execute(
      {VoidCallback? onTap}) async {
    try {
      final result = menuRepository.fetchProfileMenuData(onTap: onTap);
      return Right(result);
    } catch (error) {
      return Left(GenericFailure(error.toString()));
    }
  }
}
