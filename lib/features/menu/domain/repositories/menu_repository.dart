import 'dart:ui';

import 'package:mobile/features/menu/data/models/model.dart';

abstract class MenuRepository {
  List<MenuModel> fetchMainMenuData({VoidCallback? onTap});
  List<MenuSectionModel> fetchProfileMenuData({VoidCallback? onTap});
}
