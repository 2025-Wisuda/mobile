import 'dart:ui';

import 'package:mobile/features/general/menu/data/models/menu_section_model.dart';
import 'package:mobile/features/general/menu/domain/repositories/menu_repository.dart';

class FetchProfileMenuUsecase {
  final MenuRepository menuRepository;

  FetchProfileMenuUsecase(this.menuRepository);

  List<MenuSectionModel> execute({VoidCallback? onTap}) {
    return menuRepository.fetchProfileMenuData(onTap: onTap);
  }
}
