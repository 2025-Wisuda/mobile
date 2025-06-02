import 'dart:ui';

import 'package:injectable/injectable.dart';

import 'package:mobile/features/menu/data/models/menu_model.dart';
import 'package:mobile/features/menu/domain/repositories/repository.dart';

@injectable
class FetchMainMenuUsecase {
  final MenuRepository menuRepository;

  FetchMainMenuUsecase(this.menuRepository);

  List<MenuModel> execute({VoidCallback? onTap}) {
    return menuRepository.fetchMainMenuData(onTap: onTap);
  }
}
