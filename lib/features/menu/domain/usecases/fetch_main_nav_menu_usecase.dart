import 'dart:ui';

import 'package:injectable/injectable.dart';

import 'package:mobile/features/menu/data/models/menu_model.dart';
import 'package:mobile/features/menu/domain/repositories/repository.dart';

@injectable
class FetchMainNavMenuUsecase {
  final NavRepository navRepository;

  FetchMainNavMenuUsecase(this.navRepository);

  List<MenuModel> execute({VoidCallback? onTap}) {
    return navRepository.fetchMainNavMenuData(onTap: onTap);
  }
}
