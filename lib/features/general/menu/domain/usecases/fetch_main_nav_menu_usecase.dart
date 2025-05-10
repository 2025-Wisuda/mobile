import 'dart:ui';

import 'package:mobile/features/general/menu/menu.dart';

class FetchMainNavMenuUsecase {
  final NavRepository navRepository;

  FetchMainNavMenuUsecase(this.navRepository);

  List<MenuModel> execute({VoidCallback? onTap}) {
    return navRepository.fetchMainNavMenuData(onTap: onTap);
  }
}
