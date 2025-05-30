// Dart imports:
import 'dart:ui';

// Project imports:
import 'package:mobile/features/general/menu/data/models/menu_model.dart';
import 'package:mobile/features/general/menu/domain/repositories/menu_repository.dart';

class FetchMainMenuUsecase {
  final MenuRepository menuRepository;

  FetchMainMenuUsecase(this.menuRepository);

  List<MenuModel> execute({VoidCallback? onTap}) {
    return menuRepository.fetchMainMenuData(onTap: onTap);
  }
}
